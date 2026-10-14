.class public final Lcn/mucang/sundial/library/activity/CoachInfoActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0019\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0004R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/CoachInfoActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coachInfo",
        "updateUI",
        "(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "onDestroy",
        "Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;",
        "binding",
        "Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;",
        "Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setBinding$p(Lcn/mucang/sundial/library/activity/CoachInfoActivity;Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    return-void
.end method

.method public static final synthetic access$updateUI(Lcn/mucang/sundial/library/activity/CoachInfoActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->updateUI(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    return-void
.end method

.method private final initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->signOut:Landroid/widget/LinearLayout;

    new-instance v3, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->studentSignIn:Landroid/widget/LinearLayout;

    new-instance v3, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->lightingVoice:Landroid/widget/LinearLayout;

    const-string v3, "lightingVoice"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 5
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->lightingVoice:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$3;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$3;-><init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;->getServerCoachInfo2Update()V

    return-void

    :cond_1
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "binding"

    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateUI(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$updateUI$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/library/activity/CoachInfoActivity$updateUI$1;-><init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public initViewModel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->initViewModel()V

    .line 2
    const-class v0, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;->getCoachInfoData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initViewModel$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initViewModel$1;-><init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, p3, :cond_1

    const-string p1, "\u6559\u7ec3\u767b\u51fa\u6210\u529f"

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    sget-object p2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "person_model"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-ne p2, p3, :cond_1

    const-string p1, "\u5b66\u5458\u767b\u5f55\u5b8c\u6210"

    .line 8
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    move-result-object p1

    const-string v0, "TtActivityCoachInfoBindi\u2026ayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->initView()V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachInfoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    return-void
.end method
