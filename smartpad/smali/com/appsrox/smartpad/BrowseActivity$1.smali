.class Lcom/appsrox/smartpad/BrowseActivity$1;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsrox/smartpad/BrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/BrowseActivity;


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/BrowseActivity;->access$0(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 52
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-virtual {v2, v1}, Lcom/appsrox/smartpad/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 55
    .restart local v1       #intent:Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    const-class v3, Lcom/appsrox/smartpad/note/BasicActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    const-class v3, Lcom/appsrox/smartpad/note/ChecklistActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    const-class v3, Lcom/appsrox/smartpad/note/SnapshotActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/BrowseActivity;->access$1(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/BrowseActivity;->access$2(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v5, p2}, Lcom/appsrox/smartpad/BrowseActivity;->access$3(Lcom/appsrox/smartpad/BrowseActivity;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/appsrox/smartpad/model/Note;->list(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-virtual {v2, v0}, Lcom/appsrox/smartpad/BrowseActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 70
    iget-object v2, p0, Lcom/appsrox/smartpad/BrowseActivity$1;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/BrowseActivity;->access$4(Lcom/appsrox/smartpad/BrowseActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
