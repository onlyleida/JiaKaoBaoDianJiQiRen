.class public Lcom/amap/api/mapcore/util/n6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/n6$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/m5;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/m5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/n6;->a:Lcom/amap/api/mapcore/util/m5;

    return-void
.end method

.method public static a(Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/n6;
    .locals 3

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/n6$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/mapcore/util/n6$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/n6;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore/util/n6;-><init>(Lcom/amap/api/mapcore/util/m5;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/n6$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore/util/n6;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n6;->a:Lcom/amap/api/mapcore/util/m5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sckey"

    invoke-static {p1, v0, v2, v1}, Lcom/amap/api/mapcore/util/r6;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/amap/api/mapcore/util/n6;->a:Lcom/amap/api/mapcore/util/m5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "scisf"

    invoke-static {p1, p2, v0, p3}, Lcom/amap/api/mapcore/util/r6;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n6;->a:Lcom/amap/api/mapcore/util/m5;

    const-string v1, "sckey"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/r6;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n6;->a:Lcom/amap/api/mapcore/util/m5;

    const-string v1, "scisf"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/r6;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x1

    return p1
.end method
