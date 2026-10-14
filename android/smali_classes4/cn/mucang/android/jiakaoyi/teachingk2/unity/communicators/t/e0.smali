.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->i(Z)V

    return-void
.end method

.method static synthetic d(Z)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/d;->q(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    instance-of v0, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const-string v0, "logout-notice\u63a5\u53e3403, \u9000\u51fa\u767b\u5f55"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Api"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TAG"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private i(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/v;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/v;-><init>(Z)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneState:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->r()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneTime:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    const/4 v1, 0x0

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    const/4 v1, 0x0

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->i(Z)V

    return-void
.end method
