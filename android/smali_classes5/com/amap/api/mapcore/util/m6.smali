.class public Lcom/amap/api/mapcore/util/m6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/h6;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/m6;->b:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/m6;->a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/h6;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/h6;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/h6;

    const-class v1, Lcom/amap/api/mapcore/util/l6;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h6;->c(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/g6;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/h6;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/g6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez p2, :cond_0

    const-string p2, "sd"

    const-string v0, "gdb"

    .line 2
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private d(Ljava/util/List;Lcom/amap/api/mapcore/util/m5;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/m5;",
            ">;",
            "Lcom/amap/api/mapcore/util/m5;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/m5;

    .line 2
    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/m5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/m5;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/m5;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    const-class v2, Lcom/amap/api/mapcore/util/m5;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/util/h6;->g(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Lcom/amap/api/mapcore/util/m5;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m6;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/m6;->a(Landroid/content/Context;Z)Lcom/amap/api/mapcore/util/h6;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/m5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    const-class v2, Lcom/amap/api/mapcore/util/m5;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/h6;->u(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/amap/api/mapcore/util/m6;->d(Ljava/util/List;Lcom/amap/api/mapcore/util/m5;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/mapcore/util/h6;->n(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m6;->a:Lcom/amap/api/mapcore/util/h6;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h6;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "sd"

    const-string v1, "it"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
