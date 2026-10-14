.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/m/d/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00132\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;",
        "Landroid/app/Dialog;",
        "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "context",
        "Landroid/content/Context;",
        "(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Landroid/content/Context;)V",
        "abnormalCount",
        "",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;",
        "getBinding",
        "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "checkIsSameUser",
        "",
        "data",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "initView",
        "loadQrCode",
        "login",
        "onCallback",
        "scanLoginStatus",
        "qrAuthUser",
        "Lcn/mucang/android/account/qrcode/model/QrAuthUser;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field private final b:Lkotlin/f;

.field private c:Lkotlinx/coroutines/i0;

.field private d:I


# direct methods
.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->e(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->d:I

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->g()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->d:I

    return-void
.end method

.method private final e(Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    const-string p1, ""

    invoke-virtual {v1, v0, p1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->y(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    instance-of v2, v0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->c:Lkotlinx/coroutines/i0;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$user$2$1;

    invoke-direct {v7, p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$user$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Ljava/lang/Throwable;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, v1

    :cond_3
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->c:Lkotlinx/coroutines/i0;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;

    invoke-direct {v5, p1, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$checkIsSameUser$1$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_2
    return-void
.end method

.method private final g()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    return-object v0
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;->f(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V

    return-void
.end method
