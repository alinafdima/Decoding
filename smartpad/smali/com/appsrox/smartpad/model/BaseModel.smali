.class abstract Lcom/appsrox/smartpad/model/BaseModel;
.super Lcom/appsrox/smartpad/model/AbstractModel;
.source "BaseModel.java"


# static fields
.field static final COL_CREATEDTIME:Ljava/lang/String; = "created_time"

.field static final COL_ID:Ljava/lang/String; = "_id"

.field static final COL_LOCKED:Ljava/lang/String; = "locked"

.field static final COL_MODIFIEDTIME:Ljava/lang/String; = "modified_time"


# instance fields
.field protected createdTime:J

.field protected isLocked:Ljava/lang/Boolean;

.field protected modifiedTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/appsrox/smartpad/model/AbstractModel;-><init>()V

    return-void
.end method

.method static getSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "created_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " INTEGER, "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 18
    const-string v2, "modified_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " INTEGER, "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 19
    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " INTEGER, "

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/appsrox/smartpad/common/Util;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->createdTime:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->modifiedTime:J

    return-wide v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method load(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 37
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsrox/smartpad/model/BaseModel;->id:J

    .line 38
    const-string v1, "created_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsrox/smartpad/model/BaseModel;->createdTime:J

    .line 39
    const-string v1, "modified_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsrox/smartpad/model/BaseModel;->modifiedTime:J

    .line 40
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->id:J

    .line 51
    iput-wide v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->createdTime:J

    .line 52
    iput-wide v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->modifiedTime:J

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method save(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cv"

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    .local v0, now:J
    const-string v2, "created_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    const-string v2, "modified_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    const-string v3, "locked"

    iget-object v2, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCreatedTime(J)V
    .locals 0
    .parameter "createdTime"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/BaseModel;->createdTime:J

    .line 61
    return-void
.end method

.method public setLocked(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0
    .parameter "modifiedTime"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/BaseModel;->modifiedTime:J

    .line 67
    return-void
.end method

.method update(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "cv"

    .prologue
    .line 30
    const-string v0, "_id"

    iget-wide v1, p0, Lcom/appsrox/smartpad/model/BaseModel;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    const-string v0, "modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 33
    const-string v1, "locked"

    iget-object v0, p0, Lcom/appsrox/smartpad/model/BaseModel;->isLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    :cond_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
