.class public Lcom/amap/api/mapcore/util/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/i5$c;,
        Lcom/amap/api/mapcore/util/i5$b;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/amap/api/mapcore/util/i5$c;

.field private b:Lcom/amap/api/mapcore/util/s6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;-><init>(Lcom/amap/api/mapcore/util/i5$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/s6;

    const-string v1, "HttpsDecisionUtil"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/s6;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->b:Lcom/amap/api/mapcore/util/s6;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/i5;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/i5$b;->a:Lcom/amap/api/mapcore/util/i5;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method private g(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->b:Lcom/amap/api/mapcore/util/s6;

    const-string v1, "isTargetRequired"

    invoke-virtual {v0, p1, v1, p2}, Lcom/amap/api/mapcore/util/s6;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->b:Lcom/amap/api/mapcore/util/s6;

    const-string v1, "isTargetRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/s6;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private l(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->b:Lcom/amap/api/mapcore/util/s6;

    const-string v1, "isTargetRequired"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/s6;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;-><init>(Lcom/amap/api/mapcore/util/i5$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/i5;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;->b(Z)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i5$c;->a(Landroid/content/Context;)V

    return-void
.end method

.method d(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;-><init>(Lcom/amap/api/mapcore/util/i5$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/i5;->g(Landroid/content/Context;Z)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/i5$c;->b(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;-><init>(Lcom/amap/api/mapcore/util/i5$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i5$c;->e(Z)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/i5;->l(Landroid/content/Context;)V

    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i5$c;-><init>(Lcom/amap/api/mapcore/util/i5$a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i5;->a:Lcom/amap/api/mapcore/util/i5$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i5$c;->c()Z

    move-result v0

    return v0
.end method

.method public i(Z)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/i5;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
