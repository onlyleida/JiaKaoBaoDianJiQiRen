.class public final Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J%\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;",
        "Landroidx/lifecycle/a;",
        "Lkotlin/v;",
        "getTrainingInfo",
        "()V",
        "",
        "loginTime",
        "courseTime",
        "",
        "currentTotalDistance",
        "setCourseTime",
        "(JJD)V",
        "",
        "status",
        "setTrainingStatus",
        "(I)V",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/library/entity/TrainingInfo;",
        "trainingInfoData",
        "Landroidx/lifecycle/i0;",
        "getTrainingInfoData",
        "()Landroidx/lifecycle/i0;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
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
.field private final trainingInfoData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/library/entity/TrainingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    return-void
.end method


# virtual methods
.method public final getTrainingInfo()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel$getTrainingInfo$1;-><init>(Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getTrainingInfoData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/library/entity/TrainingInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final setCourseTime(JJD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/entity/TrainingInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setLoginTime(J)V

    .line 3
    invoke-virtual {v0, p3, p4}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setCourseTime(J)V

    .line 4
    invoke-virtual {v0, p5, p6}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setCurrentTotalDistance(D)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setTrainingStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/entity/TrainingInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/entity/TrainingInfo;->setStatus(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;->trainingInfoData:Landroidx/lifecycle/i0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
