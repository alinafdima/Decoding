.class public Lcom/appsrox/smartpad/SmartPad;
.super Landroid/app/Application;
.source "SmartPad.java"


# static fields
.field public static final DEFAULT_CATEGORY_OPT:Ljava/lang/String; = "defaultCategoryOpt"

.field public static final DEFAULT_SORT:Ljava/lang/String; = "defaultSort"

.field public static final HIDE_LOCKED:Ljava/lang/String; = "hideLocked"

.field public static LASTCREATED_CATEGORYID:J = 0x0L

.field public static LASTSELECTED_CATEGORYID:J = 0x0L

.field public static final LAST_AUTH:Ljava/lang/String; = "lastAuth"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static PUBLIC_CATEGORYID:J = 0x0L

.field public static final TIME_OPTION:Ljava/lang/String; = "timeOpt"

.field public static db:Landroid/database/sqlite/SQLiteDatabase;

.field public static dbHelper:Lcom/appsrox/smartpad/model/DbHelper;

.field public static sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/appsrox/smartpad/SmartPad;->PUBLIC_CATEGORYID:J

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static clearAuth()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastAuth"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static doAuth(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    .line 57
    sget-object v2, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v3, "password"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, pass:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 59
    .local v0, isAuth:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    sget-object v2, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastAuth"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    :cond_0
    return v0

    .line 58
    .end local v0           #isAuth:Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultCategoryOpt()I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v1, "defaultCategoryOpt"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDefaultSort()I
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v1, "defaultSort"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTimeOption()I
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v1, "timeOpt"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isAuth()Z
    .locals 6

    .prologue
    .line 48
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v3, "lastAuth"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 48
    goto :goto_0
.end method

.method public static showLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    sget-object v1, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    const-string v2, "hideLocked"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    const/high16 v0, 0x7f04

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/appsrox/smartpad/SmartPad;->sp:Landroid/content/SharedPreferences;

    .line 35
    new-instance v0, Lcom/appsrox/smartpad/model/DbHelper;

    invoke-direct {v0, p0}, Lcom/appsrox/smartpad/model/DbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsrox/smartpad/SmartPad;->dbHelper:Lcom/appsrox/smartpad/model/DbHelper;

    .line 36
    sget-object v0, Lcom/appsrox/smartpad/SmartPad;->dbHelper:Lcom/appsrox/smartpad/model/DbHelper;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/model/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method
