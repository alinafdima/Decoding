.class Lcom/appsrox/smartpad/ManageActivity$1;
.super Ljava/lang/Object;
.source "ManageActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lcom/appsrox/smartpad/ManageActivity$1;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/appsrox/smartpad/ManageActivity$1;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-virtual {v0, p2}, Lcom/appsrox/smartpad/ManageActivity;->openContextMenu(Landroid/view/View;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
