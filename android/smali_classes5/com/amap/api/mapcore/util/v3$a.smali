.class Lcom/amap/api/mapcore/util/v3$a;
.super Lcom/amap/api/mapcore/util/d3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/v3;->n(Lcom/amap/api/mapcore/util/v3$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/d3<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/amap/api/mapcore/util/v3;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/v3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v3$a;->i:Lcom/amap/api/mapcore/util/v3;

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/d3;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/v3$a;->j(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/v3$a;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/amap/api/mapcore/util/v3;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected j(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore/util/v3$a;->i:Lcom/amap/api/mapcore/util/v3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/v3;->h(Lcom/amap/api/mapcore/util/v3;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v3$a;->i:Lcom/amap/api/mapcore/util/v3;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/v3;->h(Lcom/amap/api/mapcore/util/v3;)Ljava/util/HashMap;

    move-result-object p1

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
