package com.example.note;

import java.util.Locale;
 
import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnInitListener;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.memetix.mst.language.Language;
import com.memetix.mst.translate.Translate;

import java.text.BreakIterator;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView.BufferType;
 
public class NoteView extends Activity implements OnClickListener, OnInitListener{
	public static int numTitle = 1;	
	public static String curDate = "";
	public static String curText = "";	
    private Long mRowId;
    private String theword, theDef , Content;
    private WordsDbAdapter mwDbHelper;
    private TextView OrinText;
    private TextView TransText;




    private Cursor note;

    private NotesDbAdapter mDbHelper;
    
    private LinearLayout layoutOfPopupv,layoutOfPopuph;
    PopupWindow popupMessage;
    Button addWordButton, insidePopupButton;
    TextView wordpopupText, defpopupText;

	//For TTS
    private TextToSpeech tts;
    //For String
    private String[] mBodyText;
    private String from_mBodyText;
    private int Sentence_num =1;
 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_note_view);
        mDbHelper = new NotesDbAdapter(this);
        mDbHelper.open();    
        mwDbHelper = new WordsDbAdapter(this);
        mwDbHelper.open();
        
       
        setTitle(R.string.app_name);
        long msTime = System.currentTimeMillis();  
        Date curDateTime = new Date(msTime);
 	
        SimpleDateFormat formatter = new SimpleDateFormat("d'/'M'/'y");  
        curDate = formatter.format(curDateTime);        

        

        mRowId = (savedInstanceState == null) ? null :
            (Long) savedInstanceState.getSerializable(NotesDbAdapter.KEY_ROWID);
        if (mRowId == null) {
            Bundle extras = getIntent().getExtras();
            mRowId = extras != null ? extras.getLong(NotesDbAdapter.KEY_ROWID)
                                    : null;
        }
        note = mDbHelper.fetchNote(mRowId);
        startManagingCursor(note);
        Content = note.getString(note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY));

        mBodyText = Content.split(",");


        
         
        tts = new TextToSpeech(this, this);
        //initializing the sentence to be the first from the string
        //from_mBodyText =mBodyText[Sentence_num-1];
        //Log.e("ksdif",from_mBodyText);
        from_mBodyText = Content;
        //show from_mBodyText to original text column
        OrinText = (TextView) findViewById(R.id.etUserText);
        OrinText.setMovementMethod(LinkMovementMethod.getInstance());

    	OrinText.setText(from_mBodyText,BufferType.SPANNABLE);
    	Spannable spans = (Spannable) OrinText.getText();
        BreakIterator iterator = BreakIterator.getWordInstance(Locale.US);
        iterator.setText(note.getString(
                note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)));
        int start = iterator.first();
        for (int end = iterator.next(); end != BreakIterator.DONE; start = end, end = iterator.next()) {
            String possibleWord = note.getString(
                    note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)).substring(start, end);
            if (Character.isLetterOrDigit(possibleWord.charAt(0))) {
            	
                ClickableSpan clickSpan = getClickableSpan(possibleWord);
                spans.setSpan(clickSpan, start, end,
                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
        }

        
        //Button bSpeak
        ((Button) findViewById(R.id.bSpeak)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {//click to speak
                //we want the etUserText being read, not tvTranslatedText
            	speakOut(((TextView) findViewById(R.id.etUserText)).getText().toString());
            }
        });
        
        //Button bTranslate
        ((Button) findViewById(R.id.bTranslate)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {//click to translate
                class bgStuff extends AsyncTask<Void, Void, Void>{
                    String translatedText = "";
                    
                    @Override
                    protected Void doInBackground(Void... params) {
                        try {
                            String text = ((EditText) findViewById(R.id.etUserText)).getText().toString();
                            translatedText = translate(text);
                        } catch (Exception e) {
                            e.printStackTrace();
                            translatedText = e.toString();
                        }
                         
                        return null;
                    }
                    //show result to translation column
                    @Override
                    protected void onPostExecute(Void result) {
                        ((TextView) findViewById(R.id.tvTranslatedText)).setText(translatedText);
                        super.onPostExecute(result);
                    }
                     
                }
                 
                new bgStuff().execute();
            }
        });
    
        //Button bPrev
        ((Button) findViewById(R.id.bPrev)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {//click for Previous sentence
            	if(Sentence_num!=1)
            	{
            		Sentence_num--;
            		//reset from_mBodyText
            		from_mBodyText=mBodyText[Sentence_num-1];//string starts from 0 :)
            		//reset original text column
            		OrinText.setText(from_mBodyText,BufferType.SPANNABLE);
                	Spannable spans = (Spannable) OrinText.getText();
                    BreakIterator iterator = BreakIterator.getWordInstance(Locale.US);
                    iterator.setText(note.getString(
                            note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)));
                    int start = iterator.first();
                    for (int end = iterator.next(); end != BreakIterator.DONE; start = end, end = iterator.next()) {
                        String possibleWord = note.getString(
                                note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)).substring(start, end);
                        if (Character.isLetterOrDigit(possibleWord.charAt(0))) {
                        	
                            ClickableSpan clickSpan = getClickableSpan(possibleWord);
                            spans.setSpan(clickSpan, start, end,
                                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                        }
                    }
            		//reset translation column
                	((TextView) findViewById(R.id.tvTranslatedText)).setText("CLICK BUTTON FOR TRANSLATION");
            	}
            }
        });
        
        //Button bNext
        ((Button) findViewById(R.id.bNext)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {//click for next sentence
            	if(Sentence_num!=mBodyText.length)
            	{
            		Sentence_num++;
            		//reset from_mBodyText
            		from_mBodyText=mBodyText[Sentence_num-1];//string starts from 0 :)
            		//reset original text column
            		OrinText.setText(from_mBodyText,BufferType.SPANNABLE);
                	Spannable spans = (Spannable) OrinText.getText();
                    BreakIterator iterator = BreakIterator.getWordInstance(Locale.US);
                    iterator.setText(note.getString(
                            note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)));
                    int start = iterator.first();
                    for (int end = iterator.next(); end != BreakIterator.DONE; start = end, end = iterator.next()) {
                        String possibleWord = note.getString(
                                note.getColumnIndexOrThrow(NotesDbAdapter.KEY_BODY)).substring(start, end);
                        if (Character.isLetterOrDigit(possibleWord.charAt(0))) {
                        	
                            ClickableSpan clickSpan = getClickableSpan(possibleWord);
                            spans.setSpan(clickSpan, start, end,
                                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                        }
                    }
            		//reset translation column
                	((TextView) findViewById(R.id.tvTranslatedText)).setText("CLICK BUTTON FOR TRANSLATION");
            	}
            }
        });

    	//Language speech switches
        //Button de
        ((Button) findViewById(R.id.de)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
            	tts.setLanguage(new Locale ("de_DE"));
            	Toast.makeText(getApplicationContext(), "Original text is in German", Toast.LENGTH_SHORT).show();
            }
        });
        //Button fr
        ((Button) findViewById(R.id.fr)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
            	tts.setLanguage(new Locale ("fr_FR"));
            	Toast.makeText(getApplicationContext(), "Original text is in French", Toast.LENGTH_SHORT).show();
            }
        });
        //Button es
        ((Button) findViewById(R.id.es)).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
            	tts.setLanguage(new Locale ("es_ES"));
            	Toast.makeText(getApplicationContext(), "Original text is in Spanish", Toast.LENGTH_SHORT).show();
            }
        });
    }
    
   /*Method for Translation*/
   public String translate(String text) throws Exception{
    // Set the Client ID / Client Secret
       Translate.setClientId("dtmandrew_Decoder"); 
       Translate.setClientSecret("i+9dR+P6lAOpAY677VmDTIqDuJINWkFgfMQEEInW3uE="); 
        
       String translatedText = "";
       //For now only translate to English
       translatedText = Translate.execute(text,Language.ENGLISH);
        
       return translatedText;
   }
   /*Method for Reading*/
@Override
public void onInit(int status) {
	//For now only read in German, French, Spanish		
    if (status == TextToSpeech.SUCCESS) {
    	int result = tts.setLanguage(new Locale("de_DE"));

        //Chinese would e.g. go to this case :(
        if (result == TextToSpeech.LANG_MISSING_DATA
                || result == TextToSpeech.LANG_NOT_SUPPORTED) {
            Log.e("TTS", "This Language is not supported");
        }
    } else {
        Log.e("TTS", "Initilization Failed!");
    }
}
private void speakOut(String text) {
    	tts.speak(text, TextToSpeech.QUEUE_FLUSH, null);
} 

public static class LineEditText extends EditText{
	// we need this constructor for LayoutInflater
	public LineEditText(Context context, AttributeSet attrs) {
		super(context, attrs);
			mRect = new Rect();
	        mPaint = new Paint();
	        mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
	       //mPaint.setColor(Color.RED);
	}

	private Rect mRect;
    private Paint mPaint;	    
    
    @Override
    protected void onDraw(Canvas canvas) {
  
        int height = getHeight();
        int line_height = getLineHeight();

        int count = height / line_height;

        if (getLineCount() > count)
            count = getLineCount();

        Rect r = mRect;
        Paint paint = mPaint;
        int baseline = getLineBounds(0, r);

        for (int i = 0; i < count; i++) {

            canvas.drawLine(r.left, baseline + 1, r.right, baseline + 1, paint);
            baseline += getLineHeight();

        super.onDraw(canvas);
    }

}
}

@Override
protected void onSaveInstanceState(Bundle outState) {
    super.onSaveInstanceState(outState);
    outState.putSerializable(NotesDbAdapter.KEY_ROWID, mRowId);
}

@Override
protected void onPause() {
    super.onPause();

}

@Override
protected void onResume() {
    super.onResume();

}

@Override
public boolean onCreateOptionsMenu(Menu menu) {
	// Inflate the menu; this adds items to the action bar if it is present.
	getMenuInflater().inflate(R.menu.note_view, menu);
	return true;		
}




@Override
public boolean onOptionsItemSelected(MenuItem item) {
    switch (item.getItemId()) {
    case R.id.menu_about:
          
    	/* Here is the introduce about myself */	    	
        AlertDialog.Builder dialog = new AlertDialog.Builder(NoteView.this);
        dialog.setTitle("About");
        dialog.setMessage("An app to decode a language!"
        		   );
        dialog.setPositiveButton("OK", new DialogInterface.OnClickListener() {
			
        	   @Override
        	   public void onClick(DialogInterface dialog, int which) {
        		   dialog.cancel();
				
        	   }
           });
           dialog.show();	           
           return true;
    case R.id.word_list:
    	Intent i = new Intent(this, WordList.class);
        startActivity(i);
    	
        return true;
	    	
    default:
    	return super.onOptionsItemSelected(item);
    }
}




public void init(String word) { 
    wordpopupText = new TextView(this);
    defpopupText = new TextView(this);
    insidePopupButton = new Button(this);
    addWordButton = new Button(this);
    layoutOfPopupv = new LinearLayout(this);
    layoutOfPopuph = new LinearLayout(this);
    insidePopupButton.setText("Dismiss");
    addWordButton.setText("Add to List");
    wordpopupText.setText(word);
    wordpopupText.setPadding(0, 0, 0, 20);
    theword = word;
    
    class diction extends AsyncTask<String, Void, String>{
        String outputtext = "";
        String inputtext = "";
        @Override
        protected String doInBackground(String... params) {
            try {
                inputtext = params[0]; 
                outputtext = translate(inputtext);
            } catch (Exception e) {
                e.printStackTrace();
                outputtext = "Sorry, couldn't find the definition of "+inputtext;
            }
            return outputtext;
        }
    }
     
    try {
		theDef= new diction().execute(theword).get();
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ExecutionException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    
    /**
    Log.e("word",word);
    try {
    	//theDef = Translate.execute(theword,Language.ENGLISH);
    	theDef = translate(theword);
	} catch (Exception e) {
		theDef = "Sorry, couldn't find the definition of "+word;
	}
    Log.e("def",theDef);
    **/
    defpopupText.setText(theDef);  
    defpopupText.setPadding(0, 0, 0, 20);
    layoutOfPopupv.setOrientation(1);
    layoutOfPopuph.addView(insidePopupButton);
    layoutOfPopuph.addView(addWordButton);
    layoutOfPopupv.addView(wordpopupText);
    layoutOfPopupv.addView(defpopupText);	    	    
    layoutOfPopupv.addView(layoutOfPopuph);
    layoutOfPopupv.setBackgroundColor(Color.YELLOW);}
    
    public void popupInit() { 
    insidePopupButton.setOnClickListener(this);
    addWordButton.setOnClickListener(this);
    popupMessage = new PopupWindow(layoutOfPopupv, LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
    popupMessage.setContentView(layoutOfPopupv);
    popupMessage.setFocusable(true);
     }


private ClickableSpan getClickableSpan(final String word) {
	

	
    return new ClickableSpan() {
        final String mWord;
        {
            mWord = word;
        }
        

        @Override
        public void onClick(View widget) {
        	init(mWord);
        	popupInit();
        	

        	popupMessage.showAsDropDown(findViewById(R.id.de), 0,100);

        }

        public void updateDrawState(TextPaint ds) {
            super.updateDrawState(ds);
        }
    };
}

public void onClick(View v) {
	if(v == addWordButton) {			
		mwDbHelper.createWord(theword, theDef, curDate);
		Toast.makeText(v.getContext(), "The word '"+theword+"' has been added to your list ", Toast.LENGTH_SHORT)
        .show();
		
	}else{
		popupMessage.dismiss();
	}
}


}


