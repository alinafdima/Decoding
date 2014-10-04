.class Lcom/appsrox/smartpad/ManageActivity$2;
.super Ljava/lang/Object;
.source "ManageActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    iput-object p1, p0, Lcom/appsrox/smartpad/ManageActivity$2;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$2;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 66
    .local v0, childCount:I
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$2;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    const-string v2, "Empty Folder"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 68
    :cond_0
    return v3
.end method
