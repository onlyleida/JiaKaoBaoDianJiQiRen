.class public final Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;",
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Lkotlin/v;",
        "initViewModel",
        "()V",
        "Lcn/mucang/sundial/library/entity/TrainingInfo;",
        "trainingInfo",
        "updateView",
        "(Lcn/mucang/sundial/library/entity/TrainingInfo;)V",
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
        "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "activityViewModel",
        "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;",
        "Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;",
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
.field private activityViewModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getActivityViewModel$p(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->activityViewModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "activityViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getViewModel$p(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setActivityViewModel$p(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->activityViewModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    return-void
.end method

.method public static final synthetic access$setViewModel$p(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    return-void
.end method

.method public static final synthetic access$updateView(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;Lcn/mucang/sundial/library/entity/TrainingInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->updateView(Lcn/mucang/sundial/library/entity/TrainingInfo;)V

    return-void
.end method

.method private final initViewModel()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->getTrainingInfoData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$initViewModel$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$initViewModel$1;-><init>(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getStudentInfoModel()Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v1, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    :goto_0
    iput-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->activityViewModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    return-void

    :cond_1
    const-string v0, "viewModel"

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updateView(Lcn/mucang/sundial/library/entity/TrainingInfo;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->studentInfo:Landroid/widget/TextView;

    const-string v3, "studentInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    const/4 v7, 0x4

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Lcn/mucang/sundial/library/util/KtxsKt;->mask(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->coachInfo:Landroid/widget/TextView;

    const-string v3, "coachInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getCoachInfo()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getCoachInfo()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    invoke-static {v4, v7, v8}, Lcn/mucang/sundial/library/util/KtxsKt;->mask(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v2, v1}, Lcn/mucang/sundial/android/SundialManager;->getCourseTypeByCourseCode(Ljava/lang/String;)I

    move-result v1

    .line 5
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->subject:Landroid/widget/TextView;

    const-string v3, "subject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/sundial/library/util/SubjectUtil;->INSTANCE:Lcn/mucang/sundial/library/util/SubjectUtil;

    invoke-virtual {v3, v1}, Lcn/mucang/sundial/library/util/SubjectUtil;->subject2name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->driveType:Landroid/widget/TextView;

    const-string v2, "driveType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getStudentInfo()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getDriveLicence()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object v5, v2

    :cond_7
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->courseTime:Landroid/widget/TextView;

    const-string v2, "courseTime"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getCourseTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/sundial/library/util/TTExtKt;->time2str(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->getCurrentTotalDistance()D

    move-result-wide v1

    .line 9
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->courseDistance:Landroid/widget/TextView;

    const-string v0, "courseDistance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/sundial/library/util/TTExtKt;->formatDigits(DILjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    const-string p1, "viewBinding"

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->initViewModel()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;

    move-result-object p1

    const-string p2, "TtFragmentTrainingInfoBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewBinding:Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;->getRoot()Landroid/widget/LinearLayout;

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
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    .line 3
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->n(Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v2

    const-string v3, "viewLifecycleOwner"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$1;

    invoke-direct {v4, p0}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$1;-><init>(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/DisableTrainingEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment$onResume$2;-><init>(Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;->viewModel:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->getTrainingInfo()V

    const-string v0, "\u663e\u793a\u57f9\u8bad\u4fe1\u606f"

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
