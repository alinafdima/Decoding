.class public Lcom/appsrox/smartpad/model/Category;
.super Lcom/appsrox/smartpad/model/BaseModel;
.source "Category.java"


# static fields
.field public static final COL_CREATEDTIME:Ljava/lang/String; = "created_time"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_LOCKED:Ljava/lang/String; = "locked"

.field public static final COL_MODIFIEDTIME:Ljava/lang/String; = "modified_time"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final TABLE_NAME:Ljava/lang/String; = "category"


# instance fields
.field private name:Ljava/lang/String;

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Note;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/BaseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/BaseModel;-><init>()V

    .line 116
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/Category;->id:J

    .line 117
    return-void
.end method

.method static getSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " ("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 23
    invoke-static {}, Lcom/appsrox/smartpad/model/BaseModel;->getSql()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 24
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 25
    const-string v2, ");"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/appsrox/smartpad/common/Util;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static list(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 62
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "locked"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 63
    .local v2, columns:[Ljava/lang/String;
    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->showLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "locked <> 1"

    .line 65
    .local v3, selection:Ljava/lang/String;
    :goto_0
    const-string v1, "category"

    const-string v7, "created_time ASC"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, status:Z
    new-array v1, v3, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/appsrox/smartpad/model/Category;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 71
    .local v1, whereArgs:[Ljava/lang/String;
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    .line 72
    const-string v6, "note_id"

    aput-object v6, v5, v4

    const-string v6, " IN (SELECT "

    aput-object v6, v5, v3

    const/4 v6, 0x2

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, " FROM "

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "note"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, " WHERE "

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "category_id"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, " = ?)"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/appsrox/smartpad/common/Util;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, whereClause:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    const-string v5, "attachment"

    invoke-virtual {p1, v5, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    const-string v5, "checkitem"

    invoke-virtual {p1, v5, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    const-string v5, "note"

    const-string v6, "category_id = ?"

    invoke-virtual {p1, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    const-string v5, "category"

    const-string v6, "_id = ?"

    invoke-virtual {p1, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    :goto_1
    return v0

    :cond_0
    move v0, v4

    .line 80
    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v3

    .line 84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    if-ne p0, p1, :cond_1

    .line 126
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 123
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

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    iget-wide v2, p0, Lcom/appsrox/smartpad/model/Category;->id:J

    check-cast p1, Lcom/appsrox/smartpad/model/Category;

    .end local p1
    iget-wide v4, p1, Lcom/appsrox/smartpad/model/Category;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
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

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Category;->notes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 131
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

    .line 47
    const-string v1, "category"

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/appsrox/smartpad/model/Category;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 49
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/appsrox/smartpad/model/Category;->reset()V

    .line 51
    invoke-super {p0, v8}, Lcom/appsrox/smartpad/model/BaseModel;->load(Landroid/database/Cursor;)V

    .line 52
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 55
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 58
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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-super {p0}, Lcom/appsrox/smartpad/model/BaseModel;->reset()V

    .line 96
    iput-object v0, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/appsrox/smartpad/model/Category;->notes:Ljava/util/List;

    .line 98
    return-void
.end method

.method save(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 3
    .parameter "db"

    .prologue
    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v0, cv:Landroid/content/ContentValues;
    invoke-super {p0, v0}, Lcom/appsrox/smartpad/model/BaseModel;->save(Landroid/content/ContentValues;)V

    .line 31
    const-string v2, "name"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "category"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    goto :goto_0
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

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appsrox/smartpad/model/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, notes:Ljava/util/List;,"Ljava/util/List<Lcom/appsrox/smartpad/model/Note;>;"
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Category;->notes:Ljava/util/List;

    .line 111
    return-void
.end method

.method update(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v0, cv:Landroid/content/ContentValues;
    invoke-super {p0, v0}, Lcom/appsrox/smartpad/model/BaseModel;->update(Landroid/content/ContentValues;)V

    .line 39
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "name"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Category;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    const-string v3, "category"

    const-string v4, "_id = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/appsrox/smartpad/model/Category;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 43
    goto :goto_0
.end method
