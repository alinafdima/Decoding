.class Lcom/appsrox/smartpad/note/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsrox/smartpad/note/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/note/BaseActivity;


# direct methods
.method constructor <init>(Lcom/appsrox/smartpad/note/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appsrox/smartpad/note/BaseActivity$1;->this$0:Lcom/appsrox/smartpad/note/BaseActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appsrox/smartpad/note/BaseActivity$1;->this$0:Lcom/appsrox/smartpad/note/BaseActivity;

    iget-object v0, v0, Lcom/appsrox/smartpad/note/BaseActivity;->note:Lcom/appsrox/smartpad/model/Note;

    invoke-virtual {v0, p4, p5}, Lcom/appsrox/smartpad/model/Note;->setCategoryId(J)V

    .line 73
    sput-wide p4, Lcom/appsrox/smartpad/SmartPad;->LASTSELECTED_CATEGORYID:J

    .line 74
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
