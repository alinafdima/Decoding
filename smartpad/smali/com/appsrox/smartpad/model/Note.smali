.class public Lcom/appsrox/smartpad/model/Note;
.super Lcom/appsrox/smartpad/model/BaseModel;
.source "Note.java"


# static fields
.field public static final BASIC:Ljava/lang/String; = "basic"

.field public static final CHECKLIST:Ljava/lang/String; = "checklist"

.field public static final COL_CATEGORYID:Ljava/lang/String; = "category_id"

.field public static final COL_CONTENT:Ljava/lang/String; = "content"

.field public static final COL_CREATEDTIME:Ljava/lang/String; = "created_time"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_LOCKED:Ljava/lang/String; = "locked"

.field public static final COL_MODIFIEDTIME:Ljava/lang/String; = "modified_time"

.field public static final COL_TITLE:Ljava/lang/String; = "title"

.field public static final COL_TYPE:Ljava/lang/String; = "type"

.field public static final SNAPSHOT:Ljava/lang/String; = "snapshot"

.field public static final TABLE_NAME:Ljava/lang/String; = "note"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private categoryId:J

.field private checklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/CheckItem;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/BaseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/BaseModel;-><init>()V

    .line 178
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/Note;->id:J

    .line 179
    return-void
.end method

.method static getSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "note"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " ("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 30
    invoke-static {}, Lcom/appsrox/smartpad/model/BaseModel;->getSql()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 31
    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " INTEGER, "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 32
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " TEXT, "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " TEXT, "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 34
    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 35
    const-string v2, ");"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/appsrox/smartpad/common/Util;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs list(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_0

    aget-object v8, p1, v1

    .line 91
    .local v8, categoryId:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "locked"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "modified_time"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "created_time"

    aput-object v1, v2, v0

    .line 92
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "1 = 1"

    .line 93
    .local v3, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->showLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " AND locked <> 1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, " AND category_id = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    if-eqz p1, :cond_3

    array-length v0, p1

    if-le v0, v6, :cond_3

    aget-object v7, p1, v6

    .line 98
    .local v7, orderBy:Ljava/lang/String;
    :goto_3
    const-string v1, "note"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #categoryId:Ljava/lang/String;
    :cond_0
    move-object v8, v4

    .line 89
    goto :goto_0

    .line 93
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v8       #categoryId:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 94
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 96
    :cond_3
    if-eqz v8, :cond_4

    const-string v7, "created_time ASC"

    goto :goto_3

    :cond_4
    const-string v7, "modified_time DESC"

    goto :goto_3
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, status:Z
    new-array v1, v2, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/appsrox/smartpad/model/Note;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 105
    .local v1, whereArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    :try_start_0
    const-string v4, "attachment"

    const-string v5, "note_id = ?"

    invoke-virtual {p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    const-string v4, "checkitem"

    const-string v5, "note_id = ?"

    invoke-virtual {p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    const-string v4, "note"

    const-string v5, "_id = ?"

    invoke-virtual {p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    :goto_1
    return v0

    :cond_0
    move v0, v3

    .line 110
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    .line 188
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 185
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_3
    iget-wide v2, p0, Lcom/appsrox/smartpad/model/Note;->id:J

    check-cast p1, Lcom/appsrox/smartpad/model/Note;

    .end local p1
    iget-wide v4, p1, Lcom/appsrox/smartpad/model/Note;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Note;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    return-wide v0
.end method

.method public getChecklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/CheckItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Note;->checklist:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCreatedTime()J
    .locals 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->getCreatedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getId()J
    .locals 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getModifiedTime()J
    .locals 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->getModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isLocked()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->isLocked()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 66
    const-string v1, "note"

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/appsrox/smartpad/model/Note;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/appsrox/smartpad/model/Note;->reset()V

    .line 70
    invoke-super {p0, v8}, Lcom/appsrox/smartpad/model/BaseModel;->load(Landroid/database/Cursor;)V

    .line 71
    const-string v0, "category_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    .line 72
    const-string v0, "title"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    .line 73
    const-string v0, "content"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    .line 74
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 77
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 80
    throw v0
.end method

.method public bridge synthetic persist(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/model/BaseModel;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->reset()V

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    .line 131
    iput-object v2, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/appsrox/smartpad/model/Note;->attachments:Ljava/util/List;

    .line 135
    iput-object v2, p0, Lcom/appsrox/smartpad/model/Note;->checklist:Ljava/util/List;

    .line 136
    return-void
.end method

.method save(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .parameter "db"

    .prologue
    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, cv:Landroid/content/ContentValues;
    invoke-super {p0, v0}, Lcom/appsrox/smartpad/model/BaseModel;->save(Landroid/content/ContentValues;)V

    .line 41
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    const-string v2, "title"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "content"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "type"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "basic"

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "note"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    goto :goto_2
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/appsrox/smartpad/model/Attachment;>;"
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Note;->attachments:Ljava/util/List;

    .line 167
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter "categoryId"

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    .line 143
    return-void
.end method

.method public setChecklist(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/CheckItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, checklist:Ljava/util/List;,"Ljava/util/List<Lcom/appsrox/smartpad/model/CheckItem;>;"
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Note;->checklist:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public bridge synthetic setCreatedTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/appsrox/smartpad/model/BaseModel;->setCreatedTime(J)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/appsrox/smartpad/model/BaseModel;->setId(J)V

    return-void
.end method

.method public bridge synthetic setLocked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/model/BaseModel;->setLocked(Z)V

    return-void
.end method

.method public bridge synthetic setModifiedTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/appsrox/smartpad/model/BaseModel;->setModifiedTime(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    .line 161
    return-void
.end method

.method update(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, cv:Landroid/content/ContentValues;
    invoke-super {p0, v0}, Lcom/appsrox/smartpad/model/BaseModel;->update(Landroid/content/ContentValues;)V

    .line 52
    iget-wide v3, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 53
    const-string v3, "category_id"

    iget-wide v4, p0, Lcom/appsrox/smartpad/model/Note;->categoryId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 55
    const-string v3, "title"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Note;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 57
    const-string v3, "content"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Note;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 59
    const-string v3, "type"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Note;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    const-string v3, "note"

    const-string v4, "_id = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/appsrox/smartpad/model/Note;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    .line 62
    goto :goto_0
.end method
