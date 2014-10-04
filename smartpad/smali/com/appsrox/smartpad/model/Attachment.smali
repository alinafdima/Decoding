.class public Lcom/appsrox/smartpad/model/Attachment;
.super Lcom/appsrox/smartpad/model/AbstractModel;
.source "Attachment.java"


# static fields
.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_NOTEID:Ljava/lang/String; = "note_id"

.field public static final COL_URI:Ljava/lang/String; = "uri"

.field public static final TABLE_NAME:Ljava/lang/String; = "attachment"


# instance fields
.field private name:Ljava/lang/String;

.field private noteId:J

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/AbstractModel;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/AbstractModel;-><init>()V

    .line 113
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    .line 114
    return-void
.end method

.method static getSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " ("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 19
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 20
    const-string v2, "note_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " INTEGER, "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 21
    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " TEXT, "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 22
    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 23
    const-string v2, ");"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/appsrox/smartpad/common/Util;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static list(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "noteId"

    .prologue
    const/4 v2, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v1, "attachment"

    const-string v3, "note_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v7, "_id ASC"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 70
    :cond_0
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    const-string v2, "attachment"

    const-string v3, "_id = ?"

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 123
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 120
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

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    iget-wide v2, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    check-cast p1, Lcom/appsrox/smartpad/model/Attachment;

    .end local p1
    iget-wide v4, p1, Lcom/appsrox/smartpad/model/Attachment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getId()J
    .locals 2

    .prologue
    .line 1
    invoke-super {p0}, Lcom/appsrox/smartpad/model/AbstractModel;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public load(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 50
    const-string v1, "attachment"

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 52
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/appsrox/smartpad/model/Attachment;->reset()V

    .line 54
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    .line 55
    const-string v0, "note_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    .line 56
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    .line 57
    const-string v0, "uri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 60
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 63
    throw v0
.end method

.method public bridge synthetic persist(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/model/AbstractModel;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 85
    iput-wide v1, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    .line 86
    iput-wide v1, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    .line 87
    iput-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    .line 89
    return-void
.end method

.method save(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .parameter "db"

    .prologue
    .line 27
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 28
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "note_id"

    iget-wide v2, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    const-string v2, "name"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "uri"

    iget-object v1, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "attachment"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/appsrox/smartpad/model/AbstractModel;->setId(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setNoteId(J)V
    .locals 0
    .parameter "noteId"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    .line 96
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    .line 108
    return-void
.end method

.method update(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-wide v4, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    iget-wide v3, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 39
    const-string v3, "note_id"

    iget-wide v4, p0, Lcom/appsrox/smartpad/model/Attachment;->noteId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 41
    const-string v3, "name"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 43
    const-string v3, "uri"

    iget-object v4, p0, Lcom/appsrox/smartpad/model/Attachment;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2
    const-string v3, "attachment"

    const-string v4, "_id = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/appsrox/smartpad/model/Attachment;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 46
    goto :goto_0
.end method
