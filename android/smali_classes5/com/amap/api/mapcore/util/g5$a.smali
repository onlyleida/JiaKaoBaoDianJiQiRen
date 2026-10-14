.class final Lcom/amap/api/mapcore/util/g5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/g5;->B(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/g5$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/g5;->f:Lcom/amap/api/mapcore/util/g5$c;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/g5$c;->b()Ljava/util/Map;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/amap/api/mapcore/util/g5;->f:Lcom/amap/api/mapcore/util/g5$c;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/g5$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/g5;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/g5$a;->a:Landroid/content/Context;

    .line 3
    invoke-static {v4}, Lcom/amap/api/mapcore/util/g5;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-interface {v2, v3, v0, v0, v4}, Lcom/amap/api/mapcore/util/g5$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/f7;->a()Lcom/amap/api/mapcore/util/f7;

    move-result-object v2

    new-instance v3, Lcom/amap/api/mapcore/util/e7;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/amap/api/mapcore/util/e7;-><init>([BLjava/util/Map;)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/f7;->d(Lcom/amap/api/mapcore/util/k7;)[B

    move-result-object v0

    .line 9
    sget-object v1, Lcom/amap/api/mapcore/util/g5;->f:Lcom/amap/api/mapcore/util/g5$c;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/g5$a;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore/util/g5$c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    sput-object v0, Lcom/amap/api/mapcore/util/g5;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
