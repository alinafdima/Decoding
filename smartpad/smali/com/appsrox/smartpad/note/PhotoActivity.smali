.class public Lcom/appsrox/smartpad/note/PhotoActivity;
.super Landroid/app/Activity;
.source "PhotoActivity.java"


# instance fields
.field private attachment:Lcom/appsrox/smartpad/model/Attachment;

.field private backBtn:Landroid/widget/ImageButton;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private deleteBtn:Landroid/widget/ImageButton;

.field private iv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->iv:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->backBtn:Landroid/widget/ImageButton;

    .line 45
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/appsrox/smartpad/note/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->deleteBtn:Landroid/widget/ImageButton;

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/PhotoActivity;->finish()V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->attachment:Lcom/appsrox/smartpad/model/Attachment;

    iget-object v1, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/appsrox/smartpad/model/Attachment;->delete(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 56
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/PhotoActivity;->finish()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/appsrox/smartpad/note/PhotoActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/appsrox/smartpad/note/PhotoActivity;->findViews()V

    .line 32
    sget-object v2, Lcom/appsrox/smartpad/SmartPad;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v2, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    invoke-virtual {p0}, Lcom/appsrox/smartpad/note/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    .local v0, id:J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 36
    new-instance v2, Lcom/appsrox/smartpad/model/Attachment;

    invoke-direct {v2, v0, v1}, Lcom/appsrox/smartpad/model/Attachment;-><init>(J)V

    iput-object v2, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->attachment:Lcom/appsrox/smartpad/model/Attachment;

    .line 37
    iget-object v2, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->attachment:Lcom/appsrox/smartpad/model/Attachment;

    iget-object v3, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/appsrox/smartpad/model/Attachment;->load(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 38
    iget-object v2, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/appsrox/smartpad/note/PhotoActivity;->attachment:Lcom/appsrox/smartpad/model/Attachment;

    invoke-virtual {v3}, Lcom/appsrox/smartpad/model/Attachment;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 40
    :cond_0
    return-void
.end method
