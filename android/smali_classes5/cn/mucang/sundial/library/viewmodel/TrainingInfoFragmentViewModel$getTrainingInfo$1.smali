.class final Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->getTrainingInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->getTrainingInfoData()Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/entity/TrainingInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/entity/TrainingInfo;

    invoke-direct {v0}, Lcn/mucang/sundial/library/entity/TrainingInfo;-><init>()V

    :goto_0
    const-string v1, "trainingInfoData.value ?: TrainingInfo()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setStudentInfo(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setCoachInfo(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->isTrainingDisable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setStatus(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->getTrainingInfoData()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
