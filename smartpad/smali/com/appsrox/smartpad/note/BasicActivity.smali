.class public Lcom/appsrox/smartpad/note/BasicActivity;
.super Lcom/appsrox/smartpad/note/BaseActivity;
.source "BasicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/appsrox/smartpad/note/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method canSave()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/appsrox/smartpad/note/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->note:Lcom/appsrox/smartpad/model/Note;

    const-string v1, "basic"

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Note;->setType(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->contentEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/BasicActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 22
    invoke-super {p0}, Lcom/appsrox/smartpad/note/BaseActivity;->reset()V

    .line 23
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->addItemBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->checklistLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BasicActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 26
    return-void
.end method
