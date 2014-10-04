.class Lcom/appsrox/smartpad/note/SnapshotActivity$1;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsrox/smartpad/note/SnapshotActivity;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/note/SnapshotActivity;

.field private final synthetic val$screenH:I

.field private final synthetic val$screenW:I


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/note/SnapshotActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity$1;->this$0:Lcom/appsrox/smartpad/note/SnapshotActivity;

    iput p2, p0, Lcom/appsrox/smartpad/note/SnapshotActivity$1;->val$screenH:I

    iput p3, p0, Lcom/appsrox/smartpad/note/SnapshotActivity$1;->val$screenW:I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 105
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    .local v0, iv:Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 107
    iget v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity$1;->val$screenH:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 108
    iget v1, p0, Lcom/appsrox/smartpad/note/SnapshotActivity$1;->val$screenW:I

    add-int/lit8 v1, v1, -0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 109
    const/4 v1, 0x0

    return v1
.end method
