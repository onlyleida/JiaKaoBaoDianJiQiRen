.class public Lcom/amap/api/mapcore/util/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/amap/api/mapcore/util/p5;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/p5;->a:Landroid/content/Context;

    const-string p1, "RYW1hcF9kZXZpY2VfYWRpdQ"

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/w5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/p5;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/p5;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/p5;->c:Lcom/amap/api/mapcore/util/p5;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/api/mapcore/util/p5;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/p5;->c:Lcom/amap/api/mapcore/util/p5;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/mapcore/util/p5;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/p5;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/mapcore/util/p5;->c:Lcom/amap/api/mapcore/util/p5;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore/util/p5;->c:Lcom/amap/api/mapcore/util/p5;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/q5;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/q5;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/p5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q5;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/q5;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/q5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q5;->g(Ljava/lang/String;)V

    return-void
.end method
