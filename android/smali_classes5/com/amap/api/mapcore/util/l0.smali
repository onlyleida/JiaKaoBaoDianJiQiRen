.class public Lcom/amap/api/mapcore/util/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/amap/api/mapcore/util/l0;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/m8;

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/n8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/m8;->a(I)Lcom/amap/api/mapcore/util/m8;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/l0;->a:Lcom/amap/api/mapcore/util/m8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(I)Lcom/amap/api/mapcore/util/l0;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/l0;->b(ZI)Lcom/amap/api/mapcore/util/l0;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized b(ZI)Lcom/amap/api/mapcore/util/l0;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore/util/l0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/l0;->c:Lcom/amap/api/mapcore/util/l0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/amap/api/mapcore/util/l0;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/l0;-><init>(ZI)V

    sput-object v1, Lcom/amap/api/mapcore/util/l0;->c:Lcom/amap/api/mapcore/util/l0;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    iget-object p0, v1, Lcom/amap/api/mapcore/util/l0;->a:Lcom/amap/api/mapcore/util/m8;

    if-nez p0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m8;->a(I)Lcom/amap/api/mapcore/util/m8;

    move-result-object p0

    iput-object p0, v1, Lcom/amap/api/mapcore/util/l0;->a:Lcom/amap/api/mapcore/util/m8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore/util/l0;->c:Lcom/amap/api/mapcore/util/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/amap/api/mapcore/util/l0;->c:Lcom/amap/api/mapcore/util/l0;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/h0;

    .line 9
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/h0;->a()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Lcom/amap/api/mapcore/util/k0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    .line 3
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/h0;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/h0;->a()V

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/amap/api/mapcore/util/k0;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/h0;

    move-object v1, p1

    check-cast v1, Lcom/amap/api/mapcore/util/b1;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, v1, p2, p3}, Lcom/amap/api/mapcore/util/h0;-><init>(Lcom/amap/api/mapcore/util/b1;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V

    .line 4
    iget-object p2, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    monitor-enter p2

    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/amap/api/mapcore/util/l0;->a:Lcom/amap/api/mapcore/util/m8;

    iget-object p3, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/mapcore/util/n8;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/m8;->d(Lcom/amap/api/mapcore/util/n8;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/l0;->c()V

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/m8;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/l0;->a:Lcom/amap/api/mapcore/util/m8;

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/l0;->h()V

    return-void
.end method

.method public g(Lcom/amap/api/mapcore/util/k0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    .line 2
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h0;->b()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/l0;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/k0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
