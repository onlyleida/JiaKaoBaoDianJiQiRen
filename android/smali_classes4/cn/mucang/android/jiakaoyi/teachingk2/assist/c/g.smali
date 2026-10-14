.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u001a\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/BaseErrorHandler;",
        "()V",
        "TAG",
        "",
        "delayRunnable",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler$DelayRunnable;",
        "errObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistErrorInfo;",
        "hasDelayRunnable",
        "",
        "start",
        "",
        "stop",
        "stopAssist",
        "errType",
        "",
        "reason",
        "DelayRunnable",
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
.field public static final b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

.field private static final c:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;

.field private static d:Z

.field private static final e:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/c;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->e:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;-><init>()V

    return-void
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->j(ILjava/lang/String;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->j(ILjava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->d:Z

    if-nez p0, :cond_3

    .line 5
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->d:Z

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->c:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;->a(I)V

    const-wide/16 v0, 0xc8

    .line 7
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V

    return-void
.end method

.method private final j(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->d:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HardwareErrorHandler: stopAssist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    const/4 v1, 0x0

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->d:Z

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->d:Z

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method
