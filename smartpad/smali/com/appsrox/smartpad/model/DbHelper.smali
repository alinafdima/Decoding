.class public Lcom/appsrox/smartpad/model/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "smartpad.db"

.field public static final DB_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    const-string v0, "smartpad.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method

.method private populateData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 41
    new-instance v0, Lcom/appsrox/smartpad/model/Category;

    invoke-direct {v0}, Lcom/appsrox/smartpad/model/Category;-><init>()V

    .line 42
    .local v0, category:Lcom/appsrox/smartpad/model/Category;
    const-string v7, "Public"

    invoke-virtual {v0, v7}, Lcom/appsrox/smartpad/model/Category;->setName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p1}, Lcom/appsrox/smartpad/model/Category;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    .line 44
    .local v1, categoryId:J
    sput-wide v1, Lcom/appsrox/smartpad/SmartPad;->PUBLIC_CATEGORYID:J

    .line 46
    new-instance v4, Lcom/appsrox/smartpad/model/Note;

    invoke-direct {v4}, Lcom/appsrox/smartpad/model/Note;-><init>()V

    .line 47
    .local v4, note:Lcom/appsrox/smartpad/model/Note;
    invoke-virtual {v4, v1, v2}, Lcom/appsrox/smartpad/model/Note;->setCategoryId(J)V

    .line 48
    const-string v7, "Read me"

    invoke-virtual {v4, v7}, Lcom/appsrox/smartpad/model/Note;->setTitle(Ljava/lang/String;)V

    .line 49
    const-string v7, "basic"

    invoke-virtual {v4, v7}, Lcom/appsrox/smartpad/model/Note;->setType(Ljava/lang/String;)V

    .line 50
    const-string v7, "This app allows you to create notes, checklists, and snapshots quickly and easily. \n\nAdditionally, you may create folders to organize your notes and password protect them as well. Set a password in the Settings page to restrict access to locked items. \n\nRemember to long press an item to see more options."

    invoke-virtual {v4, v7}, Lcom/appsrox/smartpad/model/Note;->setContent(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, p1}, Lcom/appsrox/smartpad/model/Note;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 54
    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 55
    const-string v7, "Personal"

    invoke-virtual {v0, v7}, Lcom/appsrox/smartpad/model/Category;->setName(Ljava/lang/String;)V

    .line 56
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/appsrox/smartpad/model/Category;->setLocked(Z)V

    .line 57
    invoke-virtual {v0, p1}, Lcom/appsrox/smartpad/model/Category;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    .line 59
    invoke-virtual {v4}, Lcom/appsrox/smartpad/model/Note;->reset()V

    .line 60
    invoke-virtual {v4, v1, v2}, Lcom/appsrox/smartpad/model/Note;->setCategoryId(J)V

    .line 61
    const-string v7, "To do"

    invoke-virtual {v4, v7}, Lcom/appsrox/smartpad/model/Note;->setTitle(Ljava/lang/String;)V

    .line 62
    const-string v7, "checklist"

    invoke-virtual {v4, v7}, Lcom/appsrox/smartpad/model/Note;->setType(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, p1}, Lcom/appsrox/smartpad/model/Note;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v5

    .line 64
    .local v5, noteId:J
    new-instance v3, Lcom/appsrox/smartpad/model/CheckItem;

    invoke-direct {v3}, Lcom/appsrox/smartpad/model/CheckItem;-><init>()V

    .line 65
    .local v3, ci:Lcom/appsrox/smartpad/model/CheckItem;
    invoke-virtual {v3, v5, v6}, Lcom/appsrox/smartpad/model/CheckItem;->setNoteId(J)V

    .line 66
    const-string v7, "Set password in Settings page"

    invoke-virtual {v3, v7}, Lcom/appsrox/smartpad/model/CheckItem;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3, p1}, Lcom/appsrox/smartpad/model/CheckItem;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 68
    invoke-virtual {v3}, Lcom/appsrox/smartpad/model/CheckItem;->reset()V

    .line 69
    invoke-virtual {v3, v5, v6}, Lcom/appsrox/smartpad/model/CheckItem;->setNoteId(J)V

    .line 70
    const-string v7, "Rate this app on Google Play"

    invoke-virtual {v3, v7}, Lcom/appsrox/smartpad/model/CheckItem;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Lcom/appsrox/smartpad/model/CheckItem;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 72
    invoke-virtual {v3}, Lcom/appsrox/smartpad/model/CheckItem;->reset()V

    .line 73
    invoke-virtual {v3, v5, v6}, Lcom/appsrox/smartpad/model/CheckItem;->setNoteId(J)V

    .line 74
    const-string v7, "Visit www.appsrox.com"

    invoke-virtual {v3, v7}, Lcom/appsrox/smartpad/model/CheckItem;->setName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, p1}, Lcom/appsrox/smartpad/model/CheckItem;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 77
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 20
    invoke-static {}, Lcom/appsrox/smartpad/model/Category;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/appsrox/smartpad/model/Note;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/appsrox/smartpad/model/Attachment;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/appsrox/smartpad/model/CheckItem;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/appsrox/smartpad/model/DbHelper;->populateData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 30
    const-string v0, "DROP TABLE IF EXISTS category"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v0, "DROP TABLE IF EXISTS note"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "DROP TABLE IF EXISTS attachment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "DROP TABLE IF EXISTS checkitem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/appsrox/smartpad/model/DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method
