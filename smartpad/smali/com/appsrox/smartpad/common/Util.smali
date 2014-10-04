.class public Lcom/appsrox/smartpad/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "objects"

    .prologue
    const/4 v1, 0x0

    .line 17
    sget-object v2, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    array-length v2, p0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 21
    sget-object v1, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 18
    :cond_0
    aget-object v0, p0, v1

    .line 19
    .local v0, obj:Ljava/lang/Object;
    sget-object v3, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static csvToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "csv"

    .prologue
    .line 36
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static fixBackgroundRepeat(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 45
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 46
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    .local v1, bmp:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 48
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 51
    .end local v1           #bmp:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public static listToCsv(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "list"

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    const-string v1, ""

    .line 32
    :goto_0
    return-object v1

    .line 28
    :cond_1
    sget-object v1, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    sget-object v1, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, obj:Ljava/lang/Object;
    sget-object v2, Lcom/appsrox/smartpad/common/Util;->sb:Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
