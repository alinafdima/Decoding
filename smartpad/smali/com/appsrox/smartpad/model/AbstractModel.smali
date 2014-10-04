.class abstract Lcom/appsrox/smartpad/model/AbstractModel;
.super Ljava/lang/Object;
.source "AbstractModel.java"


# static fields
.field static final COL_ID:Ljava/lang/String; = "_id"


# instance fields
.field protected id:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/appsrox/smartpad/model/AbstractModel;->id:J

    return-wide v0
.end method

.method public persist(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .parameter "db"

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    iget-wide v2, p0, Lcom/appsrox/smartpad/model/AbstractModel;->id:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/appsrox/smartpad/model/AbstractModel;->update(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/appsrox/smartpad/model/AbstractModel;->id:J

    .line 25
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsrox/smartpad/model/AbstractModel;->save(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    goto :goto_0
.end method

.method abstract save(Landroid/database/sqlite/SQLiteDatabase;)J
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/appsrox/smartpad/model/AbstractModel;->id:J

    .line 16
    return-void
.end method

.method abstract update(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method
