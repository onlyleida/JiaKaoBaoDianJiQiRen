.class public Lcom/amap/api/mapcore/util/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Z = false

.field private static e:Z = false

.field private static f:Z = false

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Z = false

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"Quest\":"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_heatmap"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O009"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static d(Landroid/content/Context;J)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_rendertime"

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "amap_3dmap_render_background"

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "O005"

    .line 5
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/amap/api/mapcore/util/p3;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "amap_3dmap_coordinate"

    .line 5
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "O008"

    .line 7
    invoke-static {p0, v2, v1}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Lcom/amap/api/mapcore/util/p3;->j:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 11
    :catchall_0
    :cond_3
    :goto_1
    monitor-exit v0

    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/u7;

    const-string v1, "3dmap"

    const-string v2, "7.4.0"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amap/api/mapcore/util/u7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/u7;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/v7;->d(Lcom/amap/api/mapcore/util/u7;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/p3;->b(Z)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/u7;

    const-string v1, "3dmap"

    const-string v2, "7.4.0"

    const-string v3, "O001"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amap/api/mapcore/util/u7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/u7;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/v7;->d(Lcom/amap/api/mapcore/util/u7;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_offlinemap"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O010"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static i(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_stylemap"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "O006"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_particleoverlay"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O011"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static k(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_indoormap"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "O007"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_bzmapreview"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O012"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_wxmapreview"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O013"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_renderfps"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O014"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/amap/api/mapcore/util/p3;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_3dmap_buildingoverlay"

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/p3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "O015"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore/util/p3;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/amap/api/mapcore/util/p3;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
