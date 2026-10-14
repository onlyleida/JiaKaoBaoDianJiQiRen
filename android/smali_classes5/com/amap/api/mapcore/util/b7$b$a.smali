.class Lcom/amap/api/mapcore/util/b7$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b7$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field final synthetic b:Lcom/amap/api/mapcore/util/b7$b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b7$b;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b7$b$a;->b:Lcom/amap/api/mapcore/util/b7$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/b7$b$a;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b$a;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b$a;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setProFunctionAuthEnable(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isUseProFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b7$b$a;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setMapCustomEnable(ZZ)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b$a;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->reloadMapCustomStyle()V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b$a;->b:Lcom/amap/api/mapcore/util/b7$b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b7$b;->a(Lcom/amap/api/mapcore/util/b7$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b7$b$a;->b:Lcom/amap/api/mapcore/util/b7$b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b7$b;->a(Lcom/amap/api/mapcore/util/b7$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    const-string v1, "\u9274\u6743\u5931\u8d25\uff0c\u5f53\u524dkey\u6ca1\u6709\u81ea\u5b9a\u4e49\u7eb9\u7406\u7684\u4f7f\u7528\u6743\u9650\uff0c\u81ea\u5b9a\u4e49\u7eb9\u7406\u76f8\u5173\u5185\u5bb9\uff0c\u5c06\u4e0d\u4f1a\u5448\u73b0\uff01"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/t2;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
