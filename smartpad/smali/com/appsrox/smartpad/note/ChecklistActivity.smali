.class public Lcom/appsrox/smartpad/note/ChecklistActivity;
.super Lcom/appsrox/smartpad/note/BaseActivity;
.source "ChecklistActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/appsrox/smartpad/note/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method canSave()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onClick(Landroid/view/View;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 33
    :sswitch_0
    iget-object v3, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    .local v0, checkitemLL:Landroid/widget/LinearLayout;
    const v3, 0x7f09000f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 35
    .local v1, itemEdit:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v3, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 40
    .end local v0           #checkitemLL:Landroid/widget/LinearLayout;
    .end local v1           #itemEdit:Landroid/widget/EditText;
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .restart local v0       #checkitemLL:Landroid/widget/LinearLayout;
    const v3, 0x7f09000d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, itemId:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Lcom/appsrox/smartpad/model/CheckItem;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/appsrox/smartpad/model/CheckItem;-><init>(J)V

    iget-object v4, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4}, Lcom/appsrox/smartpad/model/CheckItem;->delete(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x7f090008 -> :sswitch_0
        0x7f090010 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->note:Lcom/appsrox/smartpad/model/Note;

    const-string v1, "checklist"

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->setType(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected persist()V
    .locals 11

    .prologue
    .line 82
    invoke-super {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->persist()V

    .line 85
    iget-object v9, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    .line 92
    .local v6, itemCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 113
    return-void

    .line 93
    :cond_0
    iget-object v9, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, checkitemLL:Landroid/widget/LinearLayout;
    const v9, 0x7f09000d

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 95
    .local v8, itemId:Landroid/widget/TextView;
    const v9, 0x7f09000e

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 96
    .local v5, itemCb:Landroid/widget/CheckBox;
    const v9, 0x7f09000f

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 98
    .local v7, itemEdit:Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 99
    .local v4, id:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 101
    .local v2, edit:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 105
    new-instance v0, Lcom/appsrox/smartpad/model/CheckItem;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Lcom/appsrox/smartpad/model/CheckItem;-><init>(J)V

    .line 108
    .local v0, checkitem:Lcom/appsrox/smartpad/model/CheckItem;
    :goto_2
    iget-object v9, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v9}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/appsrox/smartpad/model/CheckItem;->setNoteId(J)V

    .line 109
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/appsrox/smartpad/model/CheckItem;->setStatus(Ljava/lang/Boolean;)V

    .line 110
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/appsrox/smartpad/model/CheckItem;->setName(Ljava/lang/String;)V

    .line 111
    iget-object v9, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v9}, Lcom/appsrox/smartpad/model/CheckItem;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/appsrox/smartpad/model/CheckItem;->setId(J)V

    goto :goto_1

    .line 107
    .end local v0           #checkitem:Lcom/appsrox/smartpad/model/CheckItem;
    :cond_2
    new-instance v0, Lcom/appsrox/smartpad/model/CheckItem;

    invoke-direct {v0}, Lcom/appsrox/smartpad/model/CheckItem;-><init>()V

    .restart local v0       #checkitem:Lcom/appsrox/smartpad/model/CheckItem;
    goto :goto_2
.end method

.method protected reset()V
    .locals 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 50
    invoke-super {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->reset()V

    .line 51
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 52
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v5, v7}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 53
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 55
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v5}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 56
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v7}, Lcom/appsrox/smartpad/model/Note;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/appsrox/smartpad/model/CheckItem;->list(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030007

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    .local v1, checkitemLL:Landroid/widget/LinearLayout;
    const v5, 0x7f09000d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, itemId:Landroid/widget/TextView;
    const v5, 0x7f09000e

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 67
    .local v2, itemCb:Landroid/widget/CheckBox;
    const v5, 0x7f09000f

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 69
    .local v3, itemEdit:Landroid/widget/EditText;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v5, p0, Lcom/appsrox/smartpad/note/ChecklistActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 63
    if-nez v5, :cond_0

    .line 77
    .end local v1           #checkitemLL:Landroid/widget/LinearLayout;
    .end local v2           #itemCb:Landroid/widget/CheckBox;
    .end local v3           #itemEdit:Landroid/widget/EditText;
    .end local v4           #itemId:Landroid/widget/TextView;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 70
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #checkitemLL:Landroid/widget/LinearLayout;
    .restart local v2       #itemCb:Landroid/widget/CheckBox;
    .restart local v3       #itemEdit:Landroid/widget/EditText;
    .restart local v4       #itemId:Landroid/widget/TextView;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
