.class abstract Lcom/appsrox/smartpad/note/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field protected addItemBtn:Landroid/widget/ImageButton;

.field protected categoryBtn:Landroid/widget/ImageButton;

.field protected checklistLL:Landroid/widget/LinearLayout;

.field protected contentEdit:Landroid/widget/EditText;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected font:Landroid/graphics/Typeface;

.field protected gallery:Landroid/widget/Gallery;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected note:Lcom/appsrox/smartpad/model/Note;

.field protected spinner:Landroid/widget/Spinner;

.field protected titleEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getDefaultCategoryId()J
    .locals 7

    .prologue
    .line 146
    iget-object v3, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 147
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    .line 149
    .local v1, count:I
    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->getDefaultCategoryOpt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 166
    :cond_0
    sget-wide v3, Lcom/appsrox/smartpad/SmartPad;->PUBLIC_CATEGORYID:J

    :goto_0
    return-wide v3

    .line 151
    :pswitch_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 152
    invoke-interface {v0, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    sget-wide v5, Lcom/appsrox/smartpad/SmartPad;->LASTCREATED_CATEGORYID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 153
    sget-wide v3, Lcom/appsrox/smartpad/SmartPad;->LASTCREATED_CATEGORYID:J

    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v2           #i:I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 159
    invoke-interface {v0, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    sget-wide v5, Lcom/appsrox/smartpad/SmartPad;->LASTSELECTED_CATEGORYID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 160
    sget-wide v3, Lcom/appsrox/smartpad/SmartPad;->LASTSELECTED_CATEGORYID:J

    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method abstract canSave()Z
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->categoryBtn:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    .line 112
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->titleEdit:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->contentEdit:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->addItemBtn:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->checklistLL:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->gallery:Landroid/widget/Gallery;

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 122
    :sswitch_0
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 125
    :sswitch_1
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->finish()V

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x7f090003 -> :sswitch_0
        0x7f09000a -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/appsrox/smartpad/note/BaseActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->findViews()V

    .line 48
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->inflater:Landroid/view/LayoutInflater;

    .line 49
    sget-object v1, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/ShortStack-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->font:Landroid/graphics/Typeface;

    .line 53
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 54
    .local v6, noteId:J
    cmp-long v1, v6, v9

    if-lez v1, :cond_0

    .line 55
    new-instance v1, Lcom/appsrox/smartpad/model/Note;

    invoke-direct {v1, v6, v7}, Lcom/appsrox/smartpad/model/Note;-><init>(J)V

    iput-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/appsrox/smartpad/model/Category;->list(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v3

    .line 60
    .local v3, c:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/appsrox/smartpad/note/BaseActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 61
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 63
    const v2, 0x1090008

    .line 65
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v8

    .line 66
    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v8

    move-object v1, p0

    .line 61
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 67
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setDropDownViewResource(I)V

    .line 68
    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/appsrox/smartpad/note/BaseActivity$1;

    invoke-direct {v2, p0}, Lcom/appsrox/smartpad/note/BaseActivity$1;-><init>(Lcom/appsrox/smartpad/note/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    return-void

    .line 57
    .end local v0           #adapter:Landroid/widget/SimpleCursorAdapter;
    .end local v3           #c:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Lcom/appsrox/smartpad/model/Note;

    invoke-direct {v1}, Lcom/appsrox/smartpad/model/Note;-><init>()V

    iput-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->canSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->persist()V

    .line 179
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appsrox/smartpad/model/Note;->setId(J)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->reset()V

    .line 107
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 86
    const-string v0, "_id"

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    :cond_0
    return-void
.end method

.method protected persist()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->setContent(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v2, p0, Lcom/appsrox/smartpad/note/BaseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/appsrox/smartpad/model/Note;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appsrox/smartpad/model/Note;->setId(J)V

    .line 173
    return-void
.end method

.method protected reset()V
    .locals 9

    .prologue
    .line 131
    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 132
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 133
    .local v3, count:I
    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v5}, Lcom/appsrox/smartpad/model/Note;->getCategoryId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v5}, Lcom/appsrox/smartpad/model/Note;->getCategoryId()J

    move-result-wide v1

    .line 134
    .local v1, categoryId:J
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 141
    :goto_2
    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->titleEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v6}, Lcom/appsrox/smartpad/model/Note;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->contentEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v6}, Lcom/appsrox/smartpad/model/Note;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 133
    .end local v1           #categoryId:J
    .end local v4           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->getDefaultCategoryId()J

    move-result-wide v1

    goto :goto_0

    .line 135
    .restart local v1       #categoryId:J
    .restart local v4       #i:I
    :cond_1
    invoke-interface {v0, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_2

    .line 136
    iget-object v5, p0, Lcom/appsrox/smartpad/note/BaseActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 134
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
