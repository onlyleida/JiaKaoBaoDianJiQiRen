.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;",
        "",
        "()V",
        "lastTime",
        "",
        "startReport",
        "",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->b:J

    return-wide v0
.end method

.method public static final synthetic b(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->b:J

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/l1;->a:Lkotlinx/coroutines/l1;

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
