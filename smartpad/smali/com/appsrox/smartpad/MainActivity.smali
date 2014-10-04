.class public Lcom/appsrox/smartpad/MainActivity;
.super Landroid/app/TabActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final TAB_BROWSE:Ljava/lang/String; = "browse"

.field public static final TAB_MANAGE:Ljava/lang/String; = "manage"


# instance fields
.field private disclaimer:Landroid/app/AlertDialog;

.field private inflater:Landroid/view/LayoutInflater;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private createTabIndicator(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "label"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/appsrox/smartpad/MainActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, tabIndicator:Landroid/view/View;
    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/appsrox/smartpad/MainActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/appsrox/smartpad/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/appsrox/smartpad/MainActivity;->inflater:Landroid/view/LayoutInflater;

    .line 31
    invoke-virtual {p0}, Lcom/appsrox/smartpad/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/appsrox/smartpad/MainActivity;->res:Landroid/content/res/Resources;

    .line 32
    invoke-virtual {p0}, Lcom/appsrox/smartpad/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    .line 36
    .local v2, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 39
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/appsrox/smartpad/BrowseActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "browse"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/appsrox/smartpad/MainActivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsrox/smartpad/MainActivity;->createTabIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 41
    .local v1, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/appsrox/smartpad/ManageActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v3, "manage"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/appsrox/smartpad/MainActivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsrox/smartpad/MainActivity;->createTabIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 50
    invoke-static {p0}, Lcom/appsrox/smartpad/Disclaimer;->show(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/appsrox/smartpad/MainActivity;->disclaimer:Landroid/app/AlertDialog;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appsrox/smartpad/MainActivity;->disclaimer:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/appsrox/smartpad/MainActivity;->disclaimer:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 68
    :cond_0
    invoke-static {}, Lcom/appsrox/smartpad/SmartPad;->clearAuth()V

    .line 69
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 62
    return-void
.end method
