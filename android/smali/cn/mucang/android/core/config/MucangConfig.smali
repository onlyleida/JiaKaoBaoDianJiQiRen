.class public Lcn/mucang/android/core/config/MucangConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MucangConfig"

.field private static b:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z = true

.field private static d:Landroid/app/Application;

.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Lcn/mucang/android/core/config/i;

.field private static g:Lcn/mucang/android/core/config/w;

.field private static h:Landroidx/localbroadcastmanager/a/a;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static final k:Ljava/util/concurrent/locks/ReentrantLock;

.field private static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/mucang/android/core/config/MucangConfig;->k:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static B()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastATime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static C()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastPauseTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    return v0
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    return v0
.end method

.method static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->e()V

    return-void
.end method

.method private static e()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lc"

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/core/config/MucangConfig;->l:I

    return v0
.end method

.method public static getContext()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    return-object v0
.end method

.method public static h()Lcn/mucang/android/core/config/i;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->f:Lcn/mucang/android/core/config/i;

    return-object v0
.end method

.method public static i()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/config/MucangConfig;->i:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ft"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcn/mucang/android/core/utils/p0;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v2
.end method

.method public static l()I
    .locals 4

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "getFirstLaunchVersionCode"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const/4 v2, 0x0

    const-string v3, "mucangData.db"

    invoke-virtual {v0, v3, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "fvc"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v3

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v3
.end method

.method public static m()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getFirstLaunchVersionName"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v0, "1.0.0"

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const/4 v1, 0x0

    const-string v2, "mucangData.db"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fvn"

    const-string v2, ""

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/p;->k()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v2
.end method

.method public static n()J
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastATime"

    const-wide/16 v2, -0x1

    .line 2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()J
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastPauseTime"

    const-wide/16 v2, -0x1

    .line 2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static p()I
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    const-string v1, "mucangData.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lc"

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()Landroidx/localbroadcastmanager/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->h:Landroidx/localbroadcastmanager/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/core/config/MucangConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/config/MucangConfig;->h:Landroidx/localbroadcastmanager/a/a;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    invoke-static {v1}, Landroidx/localbroadcastmanager/a/a;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/a/a;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/core/config/MucangConfig;->h:Landroidx/localbroadcastmanager/a/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->h:Landroidx/localbroadcastmanager/a/a;

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static s()Lcn/mucang/android/core/config/w;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->g:Lcn/mucang/android/core/config/w;

    return-object v0
.end method

.method public static t(Landroid/app/Application;Lcn/mucang/android/core/config/w;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/MucangConfig;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/core/config/MucangConfig;->j:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lcn/mucang/android/core/config/MucangConfig;->a:Ljava/lang/String;

    const-string p1, "already initialized"

    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    :try_start_1
    sput-boolean v1, Lcn/mucang/android/core/config/MucangConfig;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/16 v0, 0xa

    .line 7
    new-instance v1, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v2, "config"

    invoke-direct {v1, v2}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/config/MucangConfig;->e:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance v0, Lcn/mucang/android/core/config/k;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/config/k;-><init>(Landroid/content/Context;)V

    .line 9
    sput-object p0, Lcn/mucang/android/core/config/MucangConfig;->d:Landroid/app/Application;

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/config/MucangConfig;->w(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/mucang/android/core/config/MucangConfig;->c:Z

    .line 11
    sput-object p1, Lcn/mucang/android/core/config/MucangConfig;->g:Lcn/mucang/android/core/config/w;

    .line 12
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {p0}, Lcn/mucang/android/core/config/MucangConfig;->u(Landroid/app/Application;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->k()Ljava/lang/String;

    .line 15
    sget-object p0, Lcn/mucang/android/core/config/b;->a:Lcn/mucang/android/core/config/b;

    invoke-static {p0}, Lf/a/a/a/s/e;->j(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 16
    sget-object p1, Lcn/mucang/android/core/config/MucangConfig;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw p0
.end method

.method private static u(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/MucangConfig$a;

    invoke-direct {v0}, Lcn/mucang/android/core/config/MucangConfig$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/widget/b/a;->e()Lcn/mucang/android/core/widget/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static v()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/core/config/MucangConfig;->c:Z

    return v0
.end method

.method private static w(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/mucang/android/framework/core/R$string;->build_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic x()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->m()Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->l()I

    return-void
.end method

.method static y(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/core/config/MucangConfig;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static z(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/core/config/MucangConfig;->c:Z

    return-void
.end method
