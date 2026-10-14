.class Lcom/amap/api/mapcore/util/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/y;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/v;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/mapcore/util/y;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/y;Lcom/amap/api/mapcore/util/v;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/y$a;->c:Lcom/amap/api/mapcore/util/y;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/y$a;->a:Lcom/amap/api/mapcore/util/v;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/y$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y$a;->a:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y$a;->a:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->a()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/y$a;->c:Lcom/amap/api/mapcore/util/y;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/y;->c(Lcom/amap/api/mapcore/util/y;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/y$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
