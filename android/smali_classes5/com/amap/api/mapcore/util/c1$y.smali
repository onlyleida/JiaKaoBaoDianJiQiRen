.class Lcom/amap/api/mapcore/util/c1$y;
.super Lcom/amap/api/mapcore/util/c1$m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$y;->i:Lcom/amap/api/mapcore/util/c1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1$m0;-><init>(Lcom/amap/api/mapcore/util/c1$k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$y;->i:Lcom/amap/api/mapcore/util/c1;

    iget v1, p0, Lcom/amap/api/mapcore/util/c1$m0;->f:I

    iget v2, p0, Lcom/amap/api/mapcore/util/c1$m0;->c:I

    iget v3, p0, Lcom/amap/api/mapcore/util/c1$m0;->d:I

    iget v4, p0, Lcom/amap/api/mapcore/util/c1$m0;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/c1;->L(IIII)V

    return-void
.end method
