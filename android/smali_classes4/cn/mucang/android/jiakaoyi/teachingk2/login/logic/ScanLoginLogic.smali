.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;
.super Lcn/mucang/android/jiakaoyi/k3setting/d/a;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/m/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/d/a<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;",
        ">;",
        "Lcn/mucang/android/account/m/d/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u001a\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;",
        "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;",
        "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;",
        "binding",
        "loginType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V",
        "getLoginType",
        "()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "init",
        "",
        "loadQrCode",
        "onCallback",
        "scanLoginStatus",
        "",
        "qrAuthUser",
        "Lcn/mucang/android/account/qrcode/model/QrAuthUser;",
        "start",
        "fromUser",
        "",
        "stop",
        "switch",
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
.field private final b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;-><init>(Landroidx/viewbinding/a;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->q()V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->r(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->t(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    return-void
.end method

.method private final q()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/l;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->b()Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getProtocolUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_380:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/i/a;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;

    invoke-direct {v3, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic$loadQrCode$1$1$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic$loadQrCode$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final t(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    const/16 p2, 0x4e48

    if-eq p0, p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->k()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v3

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/login/model/QrCodeLoginData;

    if-nez p2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/account/data/AuthUser;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/login/model/QrCodeLoginData;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->j(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;ILjava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->h(Z)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->q()V

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->j(Z)V

    .line 2
    sget-object p1, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b;->i()V

    return-void
.end method

.method public final k()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-object v0
.end method

.method public onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;

    invoke-direct {v2, p1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/n;-><init>(ILcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;Lcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
