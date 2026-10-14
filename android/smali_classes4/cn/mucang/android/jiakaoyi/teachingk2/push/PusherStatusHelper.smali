.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;",
        "",
        "()V",
        "ERROR_AI_CAMERA",
        "",
        "ERROR_AI_CPU_TP",
        "ERROR_AI_SRS",
        "ERROR_PULL_STREAM",
        "ERROR_PUSH_STREAM",
        "NORMAL",
        "currentError",
        "uploadError",
        "",
        "error",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->b:I

    .line 2
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper;->b:I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->E()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    if-ne p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper$uploadError$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherStatusHelper$uploadError$1;-><init>(ILkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method
