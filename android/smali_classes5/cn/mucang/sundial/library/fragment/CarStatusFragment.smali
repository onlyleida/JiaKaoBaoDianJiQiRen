.class public final Lcn/mucang/sundial/library/fragment/CarStatusFragment;
.super Lcn/mucang/sundial/library/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/CarStatusFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Lkotlin/v;",
        "initViewModel",
        "()V",
        "Lcn/mucang/sundial/library/entity/CarStatus;",
        "carStatus",
        "updateView",
        "(Lcn/mucang/sundial/library/entity/CarStatus;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onPause",
        "Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;",
        "Ljava/text/DecimalFormat;",
        "speedFormatter",
        "Ljava/text/DecimalFormat;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;",
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
.field private final speedFormatter:Ljava/text/DecimalFormat;

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->speedFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static final synthetic access$getViewModel$p(Lcn/mucang/sundial/library/fragment/CarStatusFragment;)Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    return-object p0
.end method

.method public static final synthetic access$setViewModel$p(Lcn/mucang/sundial/library/fragment/CarStatusFragment;Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    return-void
.end method

.method public static final synthetic access$updateView(Lcn/mucang/sundial/library/fragment/CarStatusFragment;Lcn/mucang/sundial/library/entity/CarStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->updateView(Lcn/mucang/sundial/library/entity/CarStatus;)V

    return-void
.end method

.method private final initViewModel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;->getCarStatusData()Landroidx/lifecycle/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcn/mucang/sundial/library/fragment/CarStatusFragment$initViewModel$$inlined$run$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/fragment/CarStatusFragment$initViewModel$$inlined$run$lambda$1;-><init>(Lcn/mucang/sundial/library/fragment/CarStatusFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :cond_0
    return-void
.end method

.method private final updateView(Lcn/mucang/sundial/library/entity/CarStatus;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->carNum:Landroid/widget/TextView;

    const-string v2, "carNum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/CarStatus;->getCarNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/CarStatus;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/sundial/android/model/KeyState;->Invalid:Lcn/mucang/sundial/android/model/KeyState;

    :goto_0
    const-string v2, "carStatus.carModel?.keyState ?: KeyState.Invalid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->accController:Landroid/widget/TextView;

    const-string v3, "accController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v1, Lcn/mucang/sundial/android/model/KeyState;->id:I

    sget-object v4, Lcn/mucang/sundial/android/model/KeyState;->Start:Lcn/mucang/sundial/android/model/KeyState;

    iget v4, v4, Lcn/mucang/sundial/android/model/KeyState;->id:I

    if-ne v3, v4, :cond_1

    const-string v3, "\u5f00\u542f\u70b9\u706b"

    goto :goto_1

    :cond_1
    const-string v3, "\u5173\u95ed\u70b9\u706b"

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->carSpeed:Landroid/widget/TextView;

    const-string v3, "carSpeed"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->speedFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/CarStatus;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, v5, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "km/h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->accStatus:Landroid/widget/TextView;

    const-string v3, "accStatus"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v1, Lcn/mucang/sundial/android/model/KeyState;->id:I

    sget-object v4, Lcn/mucang/sundial/android/model/KeyState;->ACC:Lcn/mucang/sundial/android/model/KeyState;

    iget v5, v4, Lcn/mucang/sundial/android/model/KeyState;->id:I

    if-lt v3, v5, :cond_3

    const-string v3, "\u5df2\u6253\u5f00"

    goto :goto_3

    :cond_3
    const-string v3, "\u5df2\u5173\u95ed"

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->rpm:Landroid/widget/TextView;

    const-string v3, "rpm"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/CarStatus;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v6, v5, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "r/min"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->flameOutTime:Landroid/widget/TextView;

    const-string v3, "flameOutTime"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/CarStatus;->getFlameOutTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcn/mucang/sundial/library/util/TTExtKt;->time2str(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->powerStatus:Landroid/widget/TextView;

    const-string v2, "powerStatus"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v1, Lcn/mucang/sundial/android/model/KeyState;->id:I

    iget v2, v4, Lcn/mucang/sundial/android/model/KeyState;->id:I

    if-lt v1, v2, :cond_5

    const-string v1, "\u6b63\u5e38"

    goto :goto_4

    :cond_5
    const-string v1, "\u5173\u95ed"

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->gps:Landroid/widget/TextView;

    const-string v0, "gps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5f00\u542f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    const-string p1, "viewBinding"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->initViewModel()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    move-result-object p1

    const-string p2, "TtFragmentCarStatusBinding.inflate(layoutInflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/fragment/CarStatusFragment$onResume$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/fragment/CarStatusFragment$onResume$1;-><init>(Lcn/mucang/sundial/library/fragment/CarStatusFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/CarStatusFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;->getCarStatus()V

    :cond_0
    const-string v0, "\u663e\u793a\u8f66\u8f86\u72b6\u6001"

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
