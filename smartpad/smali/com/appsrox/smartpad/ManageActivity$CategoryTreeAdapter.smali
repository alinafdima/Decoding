.class Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsrox/smartpad/ManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryTreeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsrox/smartpad/ManageActivity;


# direct methods
.method public constructor <init>(Lcom/appsrox/smartpad/ManageActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x1020014

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    iput-object p1, p0, Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    .line 276
    const v3, 0x7f030005

    .line 277
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v4, v1

    .line 278
    new-array v5, v2, [I

    aput v9, v5, v1

    .line 279
    const v6, 0x7f030006

    .line 280
    new-array v7, v2, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v7, v1

    .line 281
    new-array v8, v2, [I

    aput v9, v8, v1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 282
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 308
    invoke-virtual {p0}, Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "locked"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 310
    .local v0, showLock:Z
    :goto_0
    if-nez v0, :cond_0

    const-string v3, "locked"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :cond_0
    move v0, v1

    .line 312
    :goto_1
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 313
    if-eqz v0, :cond_3

    const v3, 0x7f02000f

    .line 312
    :goto_2
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 317
    return-void

    .end local v0           #showLock:Z
    :cond_1
    move v0, v2

    .line 308
    goto :goto_0

    .restart local v0       #showLock:Z
    :cond_2
    move v0, v2

    .line 310
    goto :goto_1

    .line 313
    :cond_3
    const v3, 0x7f02000e

    goto :goto_2
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 295
    const-string v1, "locked"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 297
    .local v0, showLock:Z
    :goto_0
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 298
    if-eqz v0, :cond_1

    const v3, 0x7f020011

    .line 297
    :goto_1
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 302
    return-void

    .end local v0           #showLock:Z
    :cond_0
    move v0, v2

    .line 295
    goto :goto_0

    .line 298
    .restart local v0       #showLock:Z
    :cond_1
    const v3, 0x7f020010

    goto :goto_1
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .parameter "groupCursor"

    .prologue
    .line 286
    sget-object v1, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/appsrox/smartpad/model/Note;->list(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 287
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/appsrox/smartpad/ManageActivity$CategoryTreeAdapter;->this$0:Lcom/appsrox/smartpad/ManageActivity;

    invoke-virtual {v1, v0}, Lcom/appsrox/smartpad/ManageActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 288
    return-object v0
.end method
