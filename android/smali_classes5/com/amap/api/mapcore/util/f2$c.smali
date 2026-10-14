.class Lcom/amap/api/mapcore/util/f2$c;
.super Lcom/amap/api/mapcore/util/dq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dq<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/amap/api/mapcore/util/f2$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/ab;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/mapcore/util/s3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIILjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            "III",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;Z",
            "Lcom/amap/api/mapcore/util/ab;",
            "Lcom/amap/api/mapcore/util/s3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dq;-><init>()V

    const/16 v0, 0x100

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$c;->o:I

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$c;->p:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$c;->q:I

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/f2$c;->n:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2$c;->r:Ljava/lang/ref/WeakReference;

    .line 7
    iput p3, p0, Lcom/amap/api/mapcore/util/f2$c;->o:I

    .line 8
    iput p4, p0, Lcom/amap/api/mapcore/util/f2$c;->p:I

    .line 9
    iput p5, p0, Lcom/amap/api/mapcore/util/f2$c;->q:I

    .line 10
    iput-object p6, p0, Lcom/amap/api/mapcore/util/f2$c;->s:Ljava/util/List;

    .line 11
    iput-boolean p7, p0, Lcom/amap/api/mapcore/util/f2$c;->t:Z

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2$c;->u:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2$c;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f2$c;->t([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f2$c;->u(Ljava/util/List;)V

    return-void
.end method

.method protected varargs t([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2$c;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v0

    .line 3
    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v2

    .line 4
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/amap/api/mapcore/util/f2$c;->m:I

    if-lez v0, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/f2$c;->o:I

    iget v4, p0, Lcom/amap/api/mapcore/util/f2$c;->p:I

    iget v5, p0, Lcom/amap/api/mapcore/util/f2$c;->q:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/f2$c;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/amap/api/mapcore/util/ab;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/f2$c;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/amap/api/mapcore/util/s3;

    move v2, v3

    move v3, v0

    invoke-static/range {v1 .. v7}, Lcom/amap/api/mapcore/util/f2;->b(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;IIIILcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-object p1

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method protected u(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/f2$b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2$c;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget v3, p0, Lcom/amap/api/mapcore/util/f2$c;->m:I

    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/f2$c;->n:Z

    iget-object v5, p0, Lcom/amap/api/mapcore/util/f2$c;->s:Ljava/util/List;

    iget-boolean v6, p0, Lcom/amap/api/mapcore/util/f2$c;->t:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2$c;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/amap/api/mapcore/util/ab;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2$c;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/amap/api/mapcore/util/s3;

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/amap/api/mapcore/util/f2;->h(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
