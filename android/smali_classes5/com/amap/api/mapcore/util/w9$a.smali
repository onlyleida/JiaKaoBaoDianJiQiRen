.class final Lcom/amap/api/mapcore/util/w9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/w9;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/w9;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/w9;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w9$a;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$a;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w9;->m(Lcom/amap/api/mapcore/util/w9;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w9$a;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w9;->w(Lcom/amap/api/mapcore/util/w9;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w9$a;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w9;->z(Lcom/amap/api/mapcore/util/w9;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
