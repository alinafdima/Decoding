.class Lcom/appsrox/smartpad/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsrox/smartpad/AuthActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/AuthActivity;

.field private final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/AuthActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    iput-object p2, p0, Lcom/appsrox/smartpad/AuthActivity$1;->val$et:Landroid/widget/EditText;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsrox/smartpad/SmartPad;->doAuth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "class"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 48
    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v1, v0}, Lcom/appsrox/smartpad/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/AuthActivity;->finish()V

    .line 54
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/appsrox/smartpad/AuthActivity$1;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Incorrect Pasword!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
