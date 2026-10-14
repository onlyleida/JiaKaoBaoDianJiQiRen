.class public Lcn/mucang/android/core/webview/core/page/AsteroidManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;,
        Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;
    }
.end annotation


# static fields
.field private static final d:Lcn/mucang/android/core/webview/core/page/AsteroidManager;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcn/mucang/android/core/webview/client/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    sget-object v0, Lcn/mucang/android/core/webview/core/page/b;->a:Lcn/mucang/android/core/webview/core/page/b;

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->c:Lcn/mucang/android/core/webview/client/g$c;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/client/g;->b()Lcn/mucang/android/core/webview/client/g;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->c:Lcn/mucang/android/core/webview/client/g$c;

    const-string v2, "image.applet.luban.mucang.cn"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/client/g;->f(Ljava/lang/String;Lcn/mucang/android/core/webview/client/g$c;)V

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "applet"

    invoke-direct {v10, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0xa

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 7
    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private b(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    :try_start_0
    new-instance v1, Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;-><init>(Lcn/mucang/android/core/webview/core/page/AsteroidManager$a;)V

    invoke-virtual {v1, p2, p3, p4}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$b;->b(JLjava/lang/String;)Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->isNeedUpdate()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager$CheckResponse;->getHash()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return p1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return v2

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    :cond_5
    throw p1

    :cond_6
    :goto_0
    return v2
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-static {p2, v0, p3}, Lcn/mucang/android/core/utils/j;->g(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/j;->h(Ljava/io/File;Ljava/io/File;)V

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->f(Ljava/io/File;)V

    return-void
.end method

.method public static d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    return-object v0
.end method

.method private synthetic e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->b(Ljava/lang/String;JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 2
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "e"

    .line 3
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/webview/core/page/e;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "image/png"

    goto :goto_0

    :cond_2
    const-string v1, "image/jpeg"

    .line 6
    :goto_0
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcn/mucang/android/core/webview/core/page/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcn/mucang/android/core/webview/core/page/c;

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/webview/core/page/c;-><init>(Lcn/mucang/android/core/webview/core/page/AsteroidManager;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {p1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic f(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/core/ui/page/PageAppConfig;

    invoke-direct {v0}, Lcn/mucang/android/core/ui/page/PageAppConfig;-><init>()V

    const-class v1, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-static {p2}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->defaultConfig(Ljava/lang/String;)Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcn/mucang/android/core/ui/page/PageActivity;->g(Landroid/content/Context;Lcn/mucang/android/core/ui/page/PageAppConfig;Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
