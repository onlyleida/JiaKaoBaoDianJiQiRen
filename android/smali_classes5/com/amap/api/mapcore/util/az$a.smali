.class Lcom/amap/api/mapcore/util/az$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/az;->s(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amap/api/mapcore/util/az;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/az;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/az$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/az$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/amap/api/mapcore/util/az$a;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/z0;->l(Ljava/io/File;)Z

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    iget-object p2, p1, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/f1;->c(I)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    iget-object p2, p1, Lcom/amap/api/mapcore/util/az;->r:Lcom/amap/api/mapcore/util/f1;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/az;->q:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/f1;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/f1;->c(I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    float-to-double p2, p3

    const-wide v0, 0x3fd8f5c28f5c28f6L    # 0.39

    mul-double p2, p2, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    add-double/2addr p2, v0

    double-to-int p2, p2

    sub-int p1, p2, p1

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/az;->b(Lcom/amap/api/mapcore/util/az;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/az$a;->c:Lcom/amap/api/mapcore/util/az;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/az;->o(Lcom/amap/api/mapcore/util/az;J)J

    :cond_0
    return-void
.end method
