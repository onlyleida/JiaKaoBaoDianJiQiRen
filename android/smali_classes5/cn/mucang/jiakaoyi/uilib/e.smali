.class public Lcn/mucang/jiakaoyi/uilib/e;
.super Lcn/mucang/android/core/config/p;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/b;


# instance fields
.field protected a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I

.field private f:Z

.field private final g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final h:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/p;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->c:Ljava/util/List;

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/e;->d:J

    .line 6
    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->e:I

    .line 7
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->f:Z

    .line 8
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/e$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/e$a;-><init>(Lcn/mucang/jiakaoyi/uilib/e;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 9
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/e$b;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/e$b;-><init>(Lcn/mucang/jiakaoyi/uilib/e;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic A(Lcn/mucang/jiakaoyi/uilib/e;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/e;->d:J

    return-wide p1
.end method

.method static synthetic B(Lcn/mucang/jiakaoyi/uilib/e;)Lcn/mucang/android/jiakaoyi/signal/c/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/e;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-object p0
.end method

.method static synthetic C(Lcn/mucang/jiakaoyi/uilib/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/e;->e:I

    return p0
.end method

.method static synthetic D(Lcn/mucang/jiakaoyi/uilib/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->e:I

    return v0
.end method

.method static synthetic E(Lcn/mucang/jiakaoyi/uilib/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    return p0
.end method

.method static synthetic F(Lcn/mucang/jiakaoyi/uilib/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    return v0
.end method

.method static synthetic G(Lcn/mucang/jiakaoyi/uilib/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->b:I

    return v0
.end method

.method static synthetic H(Lcn/mucang/jiakaoyi/uilib/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/e;->f:Z

    return p1
.end method

.method static synthetic I(Lcn/mucang/jiakaoyi/uilib/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/e;->c:Ljava/util/List;

    return-object p0
.end method

.method private synthetic S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic U(Lcn/mucang/android/jiakaoyi/framework/e/r/b;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/h;->c()V

    return-void
.end method

.method static synthetic z(Lcn/mucang/jiakaoyi/uilib/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->d:J

    return-wide v0
.end method


# virtual methods
.method public final J()V
    .locals 1

    const-string v0, "Application:\u5f53\u524d\u6ca1\u6709activity\u5728\u6d3b\u52a8"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/e;->P()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/k/d;->b(Ljava/util/List;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/base/k/d;->a()V

    return-void
.end method

.method protected K()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V

    return-void
.end method

.method protected L()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->L()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->r()V

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->G()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->o()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/w/d;->i()V

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->h()V

    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method protected final O()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/e;->L()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected P()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/base/k/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/e$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/e$c;-><init>(Lcn/mucang/jiakaoyi/uilib/e;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/e$d;

    const/16 v2, 0x2710

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/e$d;-><init>(Lcn/mucang/jiakaoyi/uilib/e;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected Q(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->f:Z

    return v0
.end method

.method public synthetic T()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/e;->S()V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/p;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/d;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/d;-><init>(Lcn/mucang/jiakaoyi/uilib/e;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public j()V
    .locals 1

    const-string v0, "Application:\u53d1\u751f\u5f02\u5e38"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->L()V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected s()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lf/a/a/a/s/e;->k(Z)V

    return-void
.end method

.method protected u()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/x;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->i(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/c;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcn/mucang/android/jiakaoyi/framework/b;)V

    .line 6
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e;->h:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/e/r/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/c;->a:Lcn/mucang/jiakaoyi/uilib/c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/e;->g:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 10
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/g;->c()V

    .line 11
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->i()V

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/n/b;->b()V

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcn/mucang/android/selectcity/x;

    invoke-direct {v0}, Lcn/mucang/android/selectcity/x;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/selectcity/v;->a(Lcn/mucang/android/selectcity/w;)V

    .line 15
    invoke-static {}, Lf/a/a/a/f;->a()V

    .line 16
    invoke-static {p0}, Lcn/mucang/android/core/location/d;->a(Landroid/app/Application;)V

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->j()V

    return-void
.end method

.method protected v()V
    .locals 0

    return-void
.end method
