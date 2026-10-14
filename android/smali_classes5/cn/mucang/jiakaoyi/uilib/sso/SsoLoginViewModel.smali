.class public final Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0013\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0014J\u0008\u0010\u0018\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\tR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\tR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "duration",
        "",
        "errorStatusLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/sso/ErrorStatus;",
        "getErrorStatusLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "handler",
        "Landroid/os/Handler;",
        "loginModelLiveData",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;",
        "getLoginModelLiveData",
        "queryStatusLiveData",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;",
        "getQueryStatusLiveData",
        "runnable",
        "cn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1",
        "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1;",
        "loadQrCode",
        "",
        "onCleared",
        "startQuery",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/q;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Landroid/os/Handler;

.field private final h:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->c:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->d:Landroidx/lifecycle/z;

    .line 4
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->e:Landroidx/lifecycle/z;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->g:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->h:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->f:J

    return-wide v0
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->f:J

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->q()V

    return-void
.end method

.method private final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->h:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final m()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->d:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->e:Landroidx/lifecycle/z;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/j0;->onCleared()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$loadQrCode$1;

    invoke-direct {v6, p0, v1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$loadQrCode$1;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
