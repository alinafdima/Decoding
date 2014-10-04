.class public Lcom/appsrox/smartpad/BrowseActivity;
.super Landroid/app/Activity;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final cal:Ljava/util/Calendar;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final df:Ljava/text/DateFormat;

.field private dialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private emptyView:Landroid/widget/TextView;

.field private newBtn:Landroid/widget/ImageButton;

.field private newBtnDialog:Landroid/app/AlertDialog;

.field private noteList:Landroid/widget/ListView;

.field private sortBtn:Landroid/widget/ImageButton;

.field private sortBtnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->df:Ljava/text/DateFormat;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->cal:Ljava/util/Calendar;

    .line 48
    new-instance v0, Lcom/appsrox/smartpad/BrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/appsrox/smartpad/BrowseActivity$1;-><init>(Lcom/appsrox/smartpad/BrowseActivity;)V

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->newBtnDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->sortBtnDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$3(Lcom/appsrox/smartpad/BrowseActivity;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/appsrox/smartpad/BrowseActivity;->getOrderBy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appsrox/smartpad/BrowseActivity;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/appsrox/smartpad/BrowseActivity;)Ljava/text/DateFormat;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->df:Ljava/text/DateFormat;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    .line 163
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->emptyView:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->newBtn:Landroid/widget/ImageButton;

    .line 165
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->sortBtn:Landroid/widget/ImageButton;

    .line 166
    return-void
.end method

.method private getOrderBy(I)Ljava/lang/String;
    .locals 1
    .parameter "which"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, orderBy:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "modified_time DESC"

    .line 80
    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "title COLLATE NOCASE ASC"

    .line 83
    goto :goto_0

    .line 85
    :pswitch_2
    const-string v0, "created_time ASC"

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static openNote(JLandroid/content/Context;)V
    .locals 8
    .parameter "id"
    .parameter "ctx"

    .prologue
    .line 216
    new-instance v4, Lcom/appsrox/smartpad/model/Note;

    invoke-direct {v4, p0, p1}, Lcom/appsrox/smartpad/model/Note;-><init>(J)V

    .line 217
    .local v4, note:Lcom/appsrox/smartpad/model/Note;
    sget-object v6, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Lcom/appsrox/smartpad/model/Note;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, claz:Ljava/lang/Class;
    invoke-virtual {v4}, Lcom/appsrox/smartpad/model/Note;->getType()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, type:Ljava/lang/String;
    const-string v6, "basic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const-class v1, Lcom/appsrox/smartpad/note/BasicActivity;

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/appsrox/smartpad/model/Note;->isLocked()Z

    move-result v3

    .line 230
    .local v3, isLocked:Z
    if-nez v3, :cond_1

    .line 231
    new-instance v0, Lcom/appsrox/smartpad/model/Category;

    invoke-virtual {v4}, Lcom/appsrox/smartpad/model/Note;->getCategoryId()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/appsrox/smartpad/model/Category;-><init>(J)V

    .line 232
    .local v0, category:Lcom/appsrox/smartpad/model/Category;
    sget-object v6, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v6}, Lcom/appsrox/smartpad/model/Category;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 233
    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Category;->isLocked()Z

    move-result v3

    .line 236
    .end local v0           #category:Lcom/appsrox/smartpad/model/Category;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v2, intent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->isAuth()Z

    move-result v6

    if-nez v6, :cond_4

    .line 239
    const-class v6, Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v2, p2, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    const-string v6, "class"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    :goto_1
    const-string v6, "_id"

    invoke-virtual {v2, v6, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    invoke-virtual {p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void

    .line 223
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isLocked:Z
    :cond_2
    const-string v6, "checklist"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    const-class v1, Lcom/appsrox/smartpad/note/ChecklistActivity;

    goto :goto_0

    .line 225
    :cond_3
    const-string v6, "snapshot"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    const-class v1, Lcom/appsrox/smartpad/note/SnapshotActivity;

    goto :goto_0

    .line 242
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #isLocked:Z
    :cond_4
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->newBtnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/appsrox/smartpad/BrowseActivity;->sortBtnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x7f090015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 181
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 195
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 183
    :pswitch_0
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, p0}, Lcom/appsrox/smartpad/BrowseActivity;->openNote(JLandroid/content/Context;)V

    goto :goto_0

    .line 187
    :pswitch_1
    new-instance v2, Lcom/appsrox/smartpad/model/Note;

    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {v2, v3, v4}, Lcom/appsrox/smartpad/model/Note;-><init>(J)V

    .line 188
    .local v2, note:Lcom/appsrox/smartpad/model/Note;
    iget-object v3, p0, Lcom/appsrox/smartpad/BrowseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/appsrox/smartpad/model/Note;->delete(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 190
    iget-object v3, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleCursorAdapter;

    .line 191
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 192
    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f090019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/appsrox/smartpad/BrowseActivity;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/appsrox/smartpad/BrowseActivity;->findViews()V

    .line 96
    sget-object v1, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Choose an Option"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const/high16 v1, 0x7f05

    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->newBtnDialog:Landroid/app/AlertDialog;

    .line 104
    const-string v1, "Sort by"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v1, 0x7f050001

    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->sortBtnDialog:Landroid/app/AlertDialog;

    .line 108
    iget-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/appsrox/smartpad/BrowseActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090013

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/appsrox/smartpad/BrowseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    const-string v0, "Choose an Option"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 173
    const v0, 0x7f020012

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 175
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 212
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p4, p5, p0}, Lcom/appsrox/smartpad/BrowseActivity;->openNote(JLandroid/content/Context;)V

    .line 213
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    iget-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v2, v5

    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->getDefaultSort()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/appsrox/smartpad/BrowseActivity;->getOrderBy(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/appsrox/smartpad/model/Note;->list(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 119
    .local v3, c:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/appsrox/smartpad/BrowseActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 120
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 122
    const v2, 0x7f030008

    .line 124
    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v5

    .line 125
    const-string v1, "type"

    aput-object v1, v4, v6

    .line 126
    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->getTimeOption()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "modified_time"

    :goto_0
    aput-object v1, v4, v7

    .line 127
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 120
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 129
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lcom/appsrox/smartpad/BrowseActivity$2;

    invoke-direct {v1, p0}, Lcom/appsrox/smartpad/BrowseActivity$2;-><init>(Lcom/appsrox/smartpad/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 158
    iget-object v1, p0, Lcom/appsrox/smartpad/BrowseActivity;->noteList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void

    .line 126
    .end local v0           #adapter:Landroid/widget/SimpleCursorAdapter;
    :cond_0
    const-string v1, "created_time"

    goto :goto_0

    .line 127
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x11t 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method
