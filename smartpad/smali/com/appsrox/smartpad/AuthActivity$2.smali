.class Lcom/appsrox/smartpad/AuthActivity$2;
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


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/AuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/AuthActivity$2;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/appsrox/smartpad/AuthActivity$2;->this$0:Lcom/appsrox/smartpad/AuthActivity;

    invoke-virtual {v0}, Lcom/appsrox/smartpad/AuthActivity;->finish()V

    .line 59
    return-void
.end method
