.class public Lcom/appsrox/smartpad/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field public static final DIALOG_AUTHENTICATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/AuthActivity;->requestWindowFeature(I)Z

    .line 23
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 35
    :pswitch_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 36
    .local v1, et:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Enter Password"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 38
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 41
    const-string v3, "Ok"

    new-instance v4, Lcom/appsrox/smartpad/AuthActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/appsrox/smartpad/AuthActivity$1;-><init>(Lcom/appsrox/smartpad/AuthActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 56
    const-string v3, "Cancel"

    new-instance v4, Lcom/appsrox/smartpad/AuthActivity$2;

    invoke-direct {v4, p0}, Lcom/appsrox/smartpad/AuthActivity$2;-><init>(Lcom/appsrox/smartpad/AuthActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/AuthActivity;->showDialog(I)V

    .line 29
    return-void
.end method
