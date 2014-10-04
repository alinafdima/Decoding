.class Lcom/appsrox/smartpad/BrowseActivity$2;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsrox/smartpad/BrowseActivity;->onResume()V
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
    iput-object p1, p0, Lcom/appsrox/smartpad/BrowseActivity$2;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 154
    const/4 v2, 0x0

    .end local p1
    :goto_0
    return v2

    .line 135
    .restart local p1
    :sswitch_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, type:Ljava/lang/String;
    const/4 v0, 0x0

    .line 138
    .local v0, icon:I
    const-string v3, "basic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const v0, 0x7f02000c

    .line 145
    :cond_0
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 140
    .restart local p1
    :cond_1
    const-string v3, "checklist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const v0, 0x7f02000a

    goto :goto_1

    .line 142
    :cond_2
    const-string v3, "snapshot"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const v0, 0x7f020020

    goto :goto_1

    .line 149
    .end local v0           #icon:I
    .end local v1           #type:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/appsrox/smartpad/BrowseActivity$2;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v3}, Lcom/appsrox/smartpad/BrowseActivity;->access$5(Lcom/appsrox/smartpad/BrowseActivity;)Ljava/util/Calendar;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v3, p0, Lcom/appsrox/smartpad/BrowseActivity$2;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v3}, Lcom/appsrox/smartpad/BrowseActivity;->access$6(Lcom/appsrox/smartpad/BrowseActivity;)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/appsrox/smartpad/BrowseActivity$2;->this$0:Lcom/appsrox/smartpad/BrowseActivity;

    invoke-static {v4}, Lcom/appsrox/smartpad/BrowseActivity;->access$5(Lcom/appsrox/smartpad/BrowseActivity;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020015 -> :sswitch_1
        0x7f090011 -> :sswitch_0
    .end sparse-switch
.end method
