.class Lcom/amap/api/mapcore/util/c1$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->onIndoorBuildingActivity(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$x;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$x;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->M0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c1$n0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$x;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->M0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c1$n0;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$x;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->N0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c1$n0;->a(Lcom/amap/api/mapcore/util/q;)V

    :cond_0
    return-void
.end method
