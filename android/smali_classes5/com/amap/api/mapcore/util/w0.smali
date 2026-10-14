.class public Lcom/amap/api/mapcore/util/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/h7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/w0$a;,
        Lcom/amap/api/mapcore/util/w0$b;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/x0;

.field b:J

.field c:J

.field d:J

.field e:Z

.field private f:Landroid/content/Context;

.field g:Lcom/amap/api/mapcore/util/r0;

.field private h:Lcom/amap/api/mapcore/util/ca;

.field private i:Ljava/lang/String;

.field private j:Lcom/amap/api/mapcore/util/n7;

.field private k:Lcom/amap/api/mapcore/util/s0;

.field l:J

.field private m:Z

.field n:Lcom/amap/api/mapcore/util/w0$a;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/x0;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/ca;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    .line 4
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/w0;->e:Z

    .line 6
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->l:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w0;->m:Z

    .line 8
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/r0;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w0;->g:Lcom/amap/api/mapcore/util/r0;

    .line 10
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    .line 11
    iput-object p3, p0, Lcom/amap/api/mapcore/util/w0;->f:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/amap/api/mapcore/util/w0;->i:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    .line 14
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->f()V

    return-void
.end method

.method private b(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, v0, v1, p1, p2}, Lcom/amap/api/mapcore/util/ca;->m(JJ)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/mapcore/util/w0;->l:J

    :cond_0
    return-void
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/amap/api/mapcore/util/d1;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->i:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/d1;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7530

    .line 2
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/k7;->setConnectionTimeout(I)V

    .line 3
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/k7;->setSoTimeout(I)V

    .line 4
    new-instance v7, Lcom/amap/api/mapcore/util/n7;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/n7;-><init>(Lcom/amap/api/mapcore/util/k7;JJZ)V

    iput-object v7, p0, Lcom/amap/api/mapcore/util/w0;->j:Lcom/amap/api/mapcore/util/n7;

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/s0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    .line 6
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/s0;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w0;->k:Lcom/amap/api/mapcore/util/s0;

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w0;->e:Z

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->d:J

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->c:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    .line 11
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    :cond_1
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    .line 2
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private h()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/amap/api/mapcore/util/e5;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->f:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/e5;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "SiteFileFetch"

    const-string v4, "authOffLineDownLoad"

    .line 5
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private i()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x0;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/j7;->i()Lcom/amap/api/mapcore/util/j7;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/w0$b;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/w0$b;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getProtocol()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/util/j7;->j(Lcom/amap/api/mapcore/util/k7;Z)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Content-Length"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_2
    int-to-long v0, v1

    return-wide v0
.end method

.method private j()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/w0;->l:J

    sub-long v2, v0, v2

    const/16 v4, 0x1f4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->k()V

    .line 4
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->l:J

    .line 5
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/w0;->b(J)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->g:Lcom/amap/api/mapcore/util/r0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/x0;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/w0;->a:Lcom/amap/api/mapcore/util/x0;

    .line 2
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x0;->d()I

    move-result v2

    iget-wide v3, p0, Lcom/amap/api/mapcore/util/w0;->d:J

    iget-wide v5, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    iget-wide v7, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/util/r0;->f(Ljava/lang/String;IJJJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->t0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->h()V

    .line 3
    sget v0, Lcom/amap/api/mapcore/util/e5;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->a:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w0;->e:Z

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w0;->e:Z

    if-eqz v0, :cond_5

    .line 9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->d:J

    const/4 v2, -0x2

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    const-string v0, "File Length is not known!"

    .line 10
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const-string v0, "File is not access!"

    .line 11
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    :goto_0
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ca;->a()V

    .line 16
    :cond_6
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/w0;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w0;->onFinish()V

    goto :goto_1

    .line 18
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->e()V

    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->j:Lcom/amap/api/mapcore/util/n7;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h7;->b(Lcom/amap/api/mapcore/util/h7$a;)V

    goto :goto_1

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_9

    .line 21
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->b:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    nop

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_a

    .line 23
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->c:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SiteFileFetch"

    const-string v2, "download"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_a

    .line 26
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->a:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/w0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/w0;->n:Lcom/amap/api/mapcore/util/w0$a;

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->j:Lcom/amap/api/mapcore/util/n7;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h7;->a()V

    :cond_0
    return-void
.end method

.method public onDownload([BJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->k:Lcom/amap/api/mapcore/util/s0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/s0;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-wide p2, p0, Lcom/amap/api/mapcore/util/w0;->b:J

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->j()V

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "fileAccessI"

    const-string p3, "fileAccessI.write(byte[] data)"

    .line 5
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz p1, :cond_0

    .line 7
    sget-object p2, Lcom/amap/api/mapcore/util/ca$a;->c:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {p1, p2}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w0;->j:Lcom/amap/api/mapcore/util/n7;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/h7;->a()V

    :cond_1
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w0;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/w0;->d()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/amap/api/mapcore/util/ca$a;->b:Lcom/amap/api/mapcore/util/ca$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ca;->e(Lcom/amap/api/mapcore/util/ca$a;)V

    .line 5
    :cond_0
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w0;->k:Lcom/amap/api/mapcore/util/s0;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s0;->b()V

    :cond_2
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->j()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ca;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->k:Lcom/amap/api/mapcore/util/s0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s0;->b()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->n:Lcom/amap/api/mapcore/util/w0$a;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/w0$a;->c()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w0;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w0;->h:Lcom/amap/api/mapcore/util/ca;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/ca;->d()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/w0;->k()V

    return-void
.end method
