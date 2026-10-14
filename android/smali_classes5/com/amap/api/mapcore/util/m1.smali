.class public Lcom/amap/api/mapcore/util/m1;
.super Lcom/amap/api/mapcore/util/e1;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/az;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/e1;-><init>(ILcom/amap/api/mapcore/util/az;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f1;->b:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->w()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f1;->b:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->F()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f1;->b:Lcom/amap/api/mapcore/util/az;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/f1;->f(Lcom/amap/api/mapcore/util/f1;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f1;->b:Lcom/amap/api/mapcore/util/az;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/az;->r(Lcom/amap/api/mapcore/util/f1;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f1;->b:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j1;->a()V

    return-void
.end method
