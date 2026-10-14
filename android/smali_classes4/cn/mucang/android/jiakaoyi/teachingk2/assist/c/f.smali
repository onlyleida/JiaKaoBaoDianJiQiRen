.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler;",
        "",
        "()V",
        "TAG",
        "",
        "assist",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
        "checkGpsComDisconnectRunnable",
        "Ljava/lang/Runnable;",
        "comConnectStateListener",
        "cn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/GpsErrorHandler$comConnectStateListener$1;",
        "hasGpsCheckDisconnectRunnable",
        "",
        "signalCallBack",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "destroy",
        "",
        "start",
        "assistant",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

.field private static final c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private static final d:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;

.field private static e:Z

.field private static final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/a;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->d:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/b;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e:Z

    return v0
.end method

.method public static final synthetic c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e:Z

    return-void
.end method

.method private static final d()V
    .locals 3

    const-string v0, "GpsErrorHandler: Gps\u7f51\u53e3\u65ad\u5f00"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_port_disconnect:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_gps_port_disconnect)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->y(Ljava/lang/String;Z)V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e()V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->d()V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "GpsErrorHandler: gps\u4fe1\u53f7\u5f31"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gps_weak:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_gps_weak)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->y(Ljava/lang/String;Z)V

    .line 6
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    const-string v0, "GpsErrorHandler: destroy"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e:Z

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->d:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->U(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    return-void
.end method

.method public final i(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V
    .locals 1

    const-string v0, "assistant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->e()V

    const-string v0, "GpsErrorHandler: start"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->c:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->d:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f$a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->K(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;)V

    return-void
.end method
