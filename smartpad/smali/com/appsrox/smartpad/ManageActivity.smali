.class public Lcom/appsrox/smartpad/ManageActivity;
.super Landroid/app/ExpandableListActivity;
.source "ManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;
    }
.end annotation


# static fields
.field public static final DIALOG_NEW_CATEGORY:I = 0x1

.field public static final DIALOG_RENAME_CATEGORY:I = 0x2


# instance fields
.field private category:Lcom/appsrox/smartpad/model/Category;

.field private categoryDialog:Landroid/app/AlertDialog;

.field private categoryNameEdit:Landroid/widget/EditText;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private newBtn:Landroid/widget/ImageButton;

.field private note:Lcom/appsrox/smartpad/model/Note;

.field private settingsBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appsrox/smartpad/ManageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appsrox/smartpad/ManageActivity;)Lcom/appsrox/smartpad/model/Category;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appsrox/smartpad/ManageActivity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->newBtn:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->settingsBtn:Landroid/widget/ImageButton;

    .line 114
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/appsrox/smartpad/ManageActivity;->showDialog(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->isAuth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const-class v1, Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v1, "class"

    const-class v2, Lcom/appsrox/smartpad/SettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    :goto_1
    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_0
    const-class v1, Lcom/appsrox/smartpad/SettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x7f090015
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 208
    .local v1, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 210
    .local v4, type:I
    if-ne v4, v5, :cond_3

    .line 211
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v6}, Lcom/appsrox/smartpad/model/Note;->reset()V

    .line 212
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-wide v7, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/appsrox/smartpad/model/Note;->setId(J)V

    .line 219
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 220
    .local v2, refresh:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 258
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleCursorTreeAdapter;

    .line 260
    .local v0, adapter:Landroid/widget/SimpleCursorTreeAdapter;
    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->requery()Z

    .line 261
    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetChanged()V

    .line 264
    .end local v0           #adapter:Landroid/widget/SimpleCursorTreeAdapter;
    :cond_2
    return v5

    .line 214
    .end local v2           #refresh:Z
    :cond_3
    if-nez v4, :cond_0

    .line 215
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v6}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 216
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-wide v7, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/appsrox/smartpad/model/Category;->setId(J)V

    goto :goto_0

    .line 222
    .restart local v2       #refresh:Z
    :pswitch_0
    if-ne v4, v5, :cond_4

    .line 223
    iget-wide v6, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-static {v6, v7, p0}, Lcom/appsrox/smartpad/BrowseActivity;->openNote(JLandroid/content/Context;)V

    goto :goto_1

    .line 225
    :cond_4
    if-nez v4, :cond_1

    .line 226
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/appsrox/smartpad/model/Category;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 227
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v7}, Lcom/appsrox/smartpad/model/Category;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/appsrox/smartpad/ManageActivity;->showDialog(I)V

    goto :goto_1

    .line 234
    :pswitch_1
    if-ne v4, v5, :cond_6

    .line 235
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/appsrox/smartpad/model/Note;->delete(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 240
    :cond_5
    :goto_2
    const/4 v2, 0x1

    .line 241
    goto :goto_1

    .line 237
    :cond_6
    if-nez v4, :cond_5

    .line 238
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/appsrox/smartpad/model/Category;->delete(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_2

    .line 245
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f09001b

    if-ne v6, v7, :cond_8

    move v3, v5

    .line 246
    .local v3, status:Z
    :goto_3
    if-ne v4, v5, :cond_9

    .line 247
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v6, v3}, Lcom/appsrox/smartpad/model/Note;->setLocked(Z)V

    .line 248
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/appsrox/smartpad/model/Note;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 254
    :cond_7
    :goto_4
    const/4 v2, 0x1

    goto :goto_1

    .line 245
    .end local v3           #status:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 250
    .restart local v3       #status:Z
    :cond_9
    if-nez v4, :cond_7

    .line 251
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v6, v3}, Lcom/appsrox/smartpad/model/Category;->setLocked(Z)V

    .line 252
    iget-object v6, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v7, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/appsrox/smartpad/model/Category;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    goto :goto_4

    .line 220
    :pswitch_data_0
    .packed-switch 0x7f090019
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/appsrox/smartpad/ManageActivity;->findViews()V

    .line 52
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/appsrox/smartpad/ManageActivity$1;

    invoke-direct {v1, p0}, Lcom/appsrox/smartpad/ManageActivity$1;-><init>(Lcom/appsrox/smartpad/ManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/appsrox/smartpad/ManageActivity$2;

    invoke-direct {v1, p0}, Lcom/appsrox/smartpad/ManageActivity$2;-><init>(Lcom/appsrox/smartpad/ManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 72
    new-instance v0, Lcom/appsrox/smartpad/model/Category;

    invoke-direct {v0}, Lcom/appsrox/smartpad/model/Category;-><init>()V

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    .line 73
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 75
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v1, "New Folder"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    const-string v1, "Ok"

    new-instance v2, Lcom/appsrox/smartpad/ManageActivity$3;

    invoke-direct {v2, p0}, Lcom/appsrox/smartpad/ManageActivity$3;-><init>(Lcom/appsrox/smartpad/ManageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    const-string v1, "Cancel"

    new-instance v2, Lcom/appsrox/smartpad/ManageActivity$4;

    invoke-direct {v2, p0}, Lcom/appsrox/smartpad/ManageActivity$4;-><init>(Lcom/appsrox/smartpad/ManageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryDialog:Landroid/app/AlertDialog;

    .line 98
    new-instance v0, Lcom/appsrox/smartpad/model/Note;

    invoke-direct {v0}, Lcom/appsrox/smartpad/model/Note;-><init>()V

    iput-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    .line 99
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v6, 0x7f09001c

    const v5, 0x7f09001b

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x102000a

    if-ne v2, v3, :cond_0

    move-object v0, p3

    .line 163
    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 164
    .local v0, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v2, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    .line 166
    .local v1, type:I
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    const-string v2, "Choose an Option"

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 168
    const v2, 0x7f020012

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 170
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Note;->reset()V

    .line 172
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-wide v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/appsrox/smartpad/model/Note;->setId(J)V

    .line 173
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    iget-object v3, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/appsrox/smartpad/model/Note;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 175
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 176
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v3, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v3}, Lcom/appsrox/smartpad/model/Note;->getCategoryId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appsrox/smartpad/model/Category;->setId(J)V

    .line 177
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v3, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/appsrox/smartpad/model/Category;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 179
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Category;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 181
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 203
    .end local v0           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v0       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .restart local v1       #type:I
    :cond_1
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Note;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 187
    :cond_3
    if-nez v1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 189
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-wide v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/appsrox/smartpad/model/Category;->setId(J)V

    .line 190
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    iget-object v3, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/appsrox/smartpad/model/Category;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 192
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v2}, Lcom/appsrox/smartpad/model/Category;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 197
    :goto_1
    iget-wide v2, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    sget-wide v4, Lcom/appsrox/smartpad/SmartPad;->PUBLIC_CATEGORYID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 198
    const v2, 0x7f09001a

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 199
    const v2, 0x7f090019

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/app/ExpandableListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->category:Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 152
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity;->categoryNameEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 105
    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/appsrox/smartpad/model/Category;->list(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    .local v1, c:Landroid/database/Cursor;
    invoke-virtual {p0, v1}, Lcom/appsrox/smartpad/ManageActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 107
    new-instance v0, Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;-><init>(Lcom/appsrox/smartpad/ManageActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 108
    .local v0, adapter:Landroid/widget/SimpleCursorTreeAdapter;
    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/ManageActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 109
    return-void
.end method
