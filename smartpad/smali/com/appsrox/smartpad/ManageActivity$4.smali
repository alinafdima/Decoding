.class Lcom/appsrox/smartpad/ManageActivity$4;
.super Ljava/lang/Object;
.source "ManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsrox/smartpad/ManageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/ManageActivity;


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/ManageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/ManageActivity$4;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 94
    return-void
.end method
