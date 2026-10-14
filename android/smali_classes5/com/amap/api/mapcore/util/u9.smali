.class public Lcom/amap/api/mapcore/util/u9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/h7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/u9$b;,
        Lcom/amap/api/mapcore/util/u9$d;,
        Lcom/amap/api/mapcore/util/u9$a;,
        Lcom/amap/api/mapcore/util/u9$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Lcom/amap/api/mapcore/util/n7;

.field private d:Ljava/lang/String;

.field e:Lcom/amap/api/mapcore/util/u9$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/u9$a;Lcom/amap/api/mapcore/util/m5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    .line 4
    new-instance p1, Lcom/amap/api/mapcore/util/n7;

    new-instance p3, Lcom/amap/api/mapcore/util/u9$b;

    invoke-direct {p3, p2}, Lcom/amap/api/mapcore/util/u9$b;-><init>(Lcom/amap/api/mapcore/util/u9$a;)V

    invoke-direct {p1, p3}, Lcom/amap/api/mapcore/util/n7;-><init>(Lcom/amap/api/mapcore/util/k7;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9;->c:Lcom/amap/api/mapcore/util/n7;

    .line 5
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/u9$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u9$a;->f()Lcom/amap/api/mapcore/util/u9$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u9$c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u9$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u9$c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/amap/api/mapcore/util/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u9;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9;->c:Lcom/amap/api/mapcore/util/n7;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/h7;->b(Lcom/amap/api/mapcore/util/h7$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AuthTaskDownload"

    const-string v2, "startDownload()"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDownload([BJ)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AuthTaskDownload"

    const-string p3, "onDownload()"

    .line 9
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AuthTaskDownload"

    const-string v1, "onException()"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFinish()V
    .locals 11

    const-string v0, "AuthTaskDownload"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "onFinish3"

    .line 3
    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$a;->c()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/k5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$a;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 8
    :try_start_3
    new-instance v3, Lcom/amap/api/mapcore/util/t0;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/t0;-><init>()V

    .line 9
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v4}, Lcom/amap/api/mapcore/util/z0;->b(Ljava/io/File;)J

    move-result-wide v8

    .line 11
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/amap/api/mapcore/util/t0;->b(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/t0$a;)J

    .line 12
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u9;->e:Lcom/amap/api/mapcore/util/u9$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$a;->f()Lcom/amap/api/mapcore/util/u9$c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$c;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    iget-object v3, p0, Lcom/amap/api/mapcore/util/u9;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/u9$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1, v2}, Lcom/amap/api/mapcore/util/h3;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    const-string v2, "onFinish1"

    .line 17
    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 18
    :cond_2
    :try_start_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u9;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    const-string v2, "onFinish"

    .line 20
    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    const-string v2, "onFinish()"

    .line 21
    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
