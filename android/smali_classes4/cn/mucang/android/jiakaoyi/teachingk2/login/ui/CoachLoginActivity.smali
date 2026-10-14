.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0006\u0010\n\u001a\u00020\tJ\u0008\u0010\u000b\u001a\u00020\tH\u0014J\u0008\u0010\u000c\u001a\u00020\tH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;",
        "()V",
        "logic",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;",
        "getStatName",
        "",
        "init",
        "",
        "onLogin",
        "onPause",
        "onResume",
        "Companion",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "CoachLogin"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    const-string v1, "viewBinding.statusBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;->closeIv:Landroid/widget/TextView;

    const-string v1, "viewBinding.closeIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_coach_back:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_38:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;->closeIv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;->scanLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    const-string v2, "viewBinding.scanLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->COACH_QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;-><init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;->scanLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;->title1:Landroid/widget/TextView;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_jlbd_app:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->f()V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->j(Z)V

    .line 2
    :goto_0
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;->h(Z)V

    .line 2
    :goto_0
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    return-void
.end method
