.class Lcom/appsrox/smartpad/ManageActivity$3;
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
    iput-object p1, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-static {v1}, Lcom/appsrox/smartpad/ManageActivity;->access$0(Lcom/appsrox/smartpad/ManageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-static {v1}, Lcom/appsrox/smartpad/ManageActivity;->access$1(Lcom/appsrox/smartpad/ManageActivity;)Lcom/appsrox/smartpad/model/Category;

    move-result-object v1

    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/ManageActivity;->access$0(Lcom/appsrox/smartpad/ManageActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsrox/smartpad/model/Category;->setName(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-static {v1}, Lcom/appsrox/smartpad/ManageActivity;->access$1(Lcom/appsrox/smartpad/ManageActivity;)Lcom/appsrox/smartpad/model/Category;

    move-result-object v1

    iget-object v2, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-static {v2}, Lcom/appsrox/smartpad/ManageActivity;->access$2(Lcom/appsrox/smartpad/ManageActivity;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsrox/smartpad/model/Category;->persist(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    sput-wide v1, Lcom/appsrox/smartpad/SmartPad;->LASTCREATED_CATEGORYID:J

    .line 85
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$3;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-virtual {v1}, Lcom/appsrox/smartpad/ManageActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleCursorTreeAdapter;

    .line 86
    .local v0, adapter:Landroid/widget/SimpleCursorTreeAdapter;
    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 87
    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetChanged()V

    .line 89
    .end local v0           #adapter:Landroid/widget/SimpleCursorTreeAdapter;
    :cond_0
    return-void
.end method
