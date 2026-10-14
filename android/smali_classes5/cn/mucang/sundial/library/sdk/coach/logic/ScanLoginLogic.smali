.class public final Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;
.super Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/m/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic<",
        "Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;",
        ">;",
        "Lcn/mucang/android/account/m/d/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0017\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;",
        "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;",
        "Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;",
        "Lcn/mucang/android/account/m/d/a;",
        "Lkotlin/v;",
        "loadQrCode",
        "()V",
        "init",
        "",
        "fromUser",
        "start",
        "(Z)V",
        "switch",
        "stop",
        "",
        "scanLoginStatus",
        "Lcn/mucang/android/account/qrcode/model/QrAuthUser;",
        "qrAuthUser",
        "onCallback",
        "(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V",
        "binding",
        "<init>",
        "(Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;-><init>(Landroidx/viewbinding/a;)V

    return-void
.end method

.method public static final synthetic access$loadQrCode(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;->loadQrCode()V

    return-void
.end method

.method private final loadQrCode()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->i()V

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtLayoutLoginScanBinding;->qrCodeErrorFl:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$init$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$init$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCallback(ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;

    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$onCallback$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;ILcn/mucang/android/account/qrcode/model/QrAuthUser;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->start(Z)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;->loadQrCode()V

    return-void
.end method

.method public stop(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->stop(Z)V

    .line 2
    sget-object p1, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/m/b;->i()V

    return-void
.end method
