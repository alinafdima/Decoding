.class public Lcom/appsrox/smartpad/note/SnapshotActivity;
.super Lcom/appsrox/smartpad/note/BaseActivity;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsrox/smartpad/note/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final TAKE_SNAPSHOT:I = 0x1

.field public static final TEMP_IMAGE:Ljava/lang/String; = "snapshot.jpg"


# instance fields
.field private tempImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/appsrox/smartpad/note/BaseActivity;-><init>()V

    return-void
.end method

.method private getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "imageUri"

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 184
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 185
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 186
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 187
    .local v3, photoW:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 190
    .local v2, photoH:I
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 192
    .local v6, screenW:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 195
    .local v5, screenH:I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    div-int v4, v7, v8

    .line 198
    .local v4, scaleFactor:I
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    mul-int/lit8 v7, v4, 0x1

    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 200
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 202
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 207
    .end local v0           #disp:Landroid/view/Display;
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #photoH:I
    .end local v3           #photoW:I
    .end local v4           #scaleFactor:I
    .end local v5           #screenH:I
    .end local v6           #screenW:I
    :goto_0
    return-object v7

    .line 204
    :catch_0
    move-exception v7

    .line 207
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method canSave()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 130
    if-ne p1, v10, :cond_2

    .line 131
    const/4 v8, -0x1

    if-ne p2, v8, :cond_6

    .line 132
    iget-object v8, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->tempImageUri:Landroid/net/Uri;

    if-eqz v8, :cond_1

    .line 134
    iget-object v8, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->tempImageUri:Landroid/net/Uri;

    invoke-direct {p0, v8}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 136
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SmartPad"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "images"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v5, rootPath:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 142
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd-kk-mm-ss"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, df:Ljava/text/DateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, snapshotImage:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v6, snapshotFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {v0, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/appsrox/smartpad/note/SnapshotActivity;->saveAttachment(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 157
    if-eqz v4, :cond_1

    .line 159
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 175
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #df:Ljava/text/DateFormat;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #rootPath:Ljava/io/File;
    .end local v6           #snapshotFile:Ljava/io/File;
    .end local v7           #snapshotImage:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->tempImageUri:Landroid/net/Uri;

    .line 176
    const-string v8, "snapshot.jpg"

    invoke-virtual {p0, v8}, Lcom/appsrox/smartpad/note/SnapshotActivity;->deleteFile(Ljava/lang/String;)Z

    .line 178
    :cond_2
    return-void

    .line 154
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "Unable to write file on external storage"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    if-eqz v3, :cond_1

    .line 159
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v8

    goto :goto_0

    .line 156
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    .line 157
    :goto_2
    if-eqz v3, :cond_3

    .line 159
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 162
    :cond_3
    :goto_3
    throw v8

    .line 165
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_4
    const-string v8, "Unable to write file on external storage"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_5
    const-string v8, "Unable to decode image"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    const-string v8, "Unable to capture image"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    goto :goto_3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #df:Ljava/text/DateFormat;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #rootPath:Ljava/io/File;
    .restart local v6       #snapshotFile:Ljava/io/File;
    .restart local v7       #snapshotImage:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_0

    .line 156
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 154
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onClick(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 65
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "snapshot.jpg"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/appsrox/smartpad/note/SnapshotActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 67
    const-string v2, "snapshot.jpg"

    invoke-virtual {p0, v2}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->tempImageUri:Landroid/net/Uri;

    .line 68
    const-string v2, "output"

    iget-object v3, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->tempImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/appsrox/smartpad/note/SnapshotActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 71
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No camera app found!"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Unable to write file on internal storage"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x7f090008
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->note:Lcom/appsrox/smartpad/model/Note;

    const-string v1, "snapshot"

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->setType(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->addItemBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 49
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/appsrox/smartpad/note/PhotoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    const-string v1, "_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected reset()V
    .locals 11

    .prologue
    const/16 v2, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 84
    invoke-super {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->reset()V

    .line 85
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/SnapshotActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 89
    .local v6, disp:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 90
    .local v8, screenW:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 92
    .local v7, screenH:I
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appsrox/smartpad/model/Attachment;->list(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 94
    .local v3, c:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/appsrox/smartpad/note/SnapshotActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 95
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 97
    const v2, 0x7f030001

    .line 99
    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v4, v9

    .line 100
    new-array v5, v10, [I

    const v1, 0x7f090002

    aput v1, v5, v9

    move-object v1, p0

    .line 95
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 102
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lcom/appsrox/smartpad/note/SnapshotActivity$1;

    invoke-direct {v1, p0, v7, v8}, Lcom/appsrox/smartpad/note/SnapshotActivity$1;-><init>(Lcom/appsrox/smartpad/note/SnapshotActivity;II)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 112
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    .end local v0           #adapter:Landroid/widget/SimpleCursorAdapter;
    .end local v3           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected saveAttachment(Landroid/net/Uri;)V
    .locals 5
    .parameter "snapshotUri"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 120
    invoke-super {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->persist()V

    .line 122
    :cond_1
    new-instance v0, Lcom/appsrox/smartpad/model/Attachment;

    invoke-direct {v0}, Lcom/appsrox/smartpad/model/Attachment;-><init>()V

    .line 123
    .local v0, attachment:Lcom/appsrox/smartpad/model/Attachment;
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appsrox/smartpad/model/Attachment;->setNoteId(J)V

    .line 124
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Attachment;->setUri(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Attachment;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appsrox/smartpad/model/Attachment;->setId(J)V

    goto :goto_0
.end method
