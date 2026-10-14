.class public final Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Lkotlin/v;",
        "initViewModel",
        "()V",
        "Lcn/mucang/sundial/library/entity/TrainingProgress;",
        "trainingProgress",
        "updateUI",
        "(Lcn/mucang/sundial/library/entity/TrainingProgress;)V",
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
        "Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;",
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
.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$updateUI(Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;Lcn/mucang/sundial/library/entity/TrainingProgress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->updateUI(Lcn/mucang/sundial/library/entity/TrainingProgress;)V

    return-void
.end method

.method private final initViewModel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;->getTrainingProgressData()Landroidx/lifecycle/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment$initViewModel$$inlined$run$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment$initViewModel$$inlined$run$lambda$1;-><init>(Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;)V

    .line 5
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :cond_0
    return-void
.end method

.method private final updateUI(Lcn/mucang/sundial/library/entity/TrainingProgress;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->totalDuration:Landroid/widget/TextView;

    const-string v3, "totalDuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getTotalDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/library/util/TTExtKt;->minute2str(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->finishedDuration:Landroid/widget/TextView;

    const-string v3, "finishedDuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getFinishedDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/library/util/TTExtKt;->minute2str(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getTotalMileage()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    const-string v8, "SundialManager.getInstance()"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v4, v9

    .line 5
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->totalMileage:Landroid/widget/TextView;

    const-string v9, "totalMileage"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v11, 0x2

    invoke-static {v4, v5, v11, v10}, Lcn/mucang/sundial/library/util/TTExtKt;->formatDigits(DILjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "km"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getFinishedMileage()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    int-to-double v9, v2

    mul-double v9, v9, v6

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v2

    int-to-double v5, v2

    div-double/2addr v9, v5

    .line 7
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->finishedMileage:Landroid/widget/TextView;

    const-string v5, "finishedMileage"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v11, v6}, Lcn/mucang/sundial/library/util/TTExtKt;->formatDigits(DILjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->passTime:Landroid/widget/TextView;

    const-string v5, "passTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcn/mucang/sundial/library/entity/TrainEntity;->getValidTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/library/util/TTExtKt;->minute2str(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->passMileage:Landroid/widget/TextView;

    const-string v5, "passMileage"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/TrainEntity;->getValidMileage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_5

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->pendingTime:Landroid/widget/TextView;

    const-string v5, "pendingTime"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcn/mucang/sundial/library/entity/TrainEntity;->getWaitApproveTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/library/util/TTExtKt;->minute2str(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object v5, v1

    :goto_6
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->pendingMileage:Landroid/widget/TextView;

    const-string v5, "pendingMileage"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcn/mucang/sundial/library/entity/TrainEntity;->getWaitApproveMileage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_7

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayTime:Landroid/widget/TextView;

    const-string v3, "todayTime"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcn/mucang/sundial/library/entity/TrainEntity;->getTodayTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/library/util/TTExtKt;->minute2str(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_8
    move-object v5, v1

    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayMileage:Landroid/widget/TextView;

    const-string v5, "todayMileage"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingProgress;->getTrainInfo()Lcn/mucang/sundial/library/entity/TrainEntity;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainEntity;->getTodayMileage()D

    move-result-wide v7

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v7, v8, v11, p1}, Lcn/mucang/sundial/library/util/TTExtKt;->formatDigits(DILjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayMileage:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "todayMileage.text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v2, "0km"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v2, ""

    if-nez p1, :cond_a

    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayMileage:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "0.0km"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    :cond_a
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayMileage:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_b
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayTime:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "0"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 17
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->todayTime:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :cond_d
    const-string p1, "viewBinding"

    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->initViewModel()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;

    move-result-object p1

    const-string p2, "TtFragmentTrainingProgre\u2026g.inflate(layoutInflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;->getRoot()Landroid/widget/LinearLayout;

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

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;->getTrainingProgress()V

    :cond_0
    const-string v0, "\u663e\u793a\u57f9\u8bad\u8fdb\u5ea6"

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
