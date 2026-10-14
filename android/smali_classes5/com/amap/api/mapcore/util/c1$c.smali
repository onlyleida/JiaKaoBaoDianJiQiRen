.class Lcom/amap/api/mapcore/util/c1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/z3;

.field final synthetic b:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/mapcore/util/z3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$c;->b:Lcom/amap/api/mapcore/util/c1;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1$c;->a:Lcom/amap/api/mapcore/util/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$c;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->I0(Lcom/amap/api/mapcore/util/c1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$c;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c1;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$c;->a:Lcom/amap/api/mapcore/util/z3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/z3;->b(Z)V

    return-void
.end method
