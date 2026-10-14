.class final Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel$getCarStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;->getCarStatus()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel$getCarStatus$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel$getCarStatus$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;->getCarStatusData()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/entity/CarStatus;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcn/mucang/sundial/library/entity/CarStatus;

    invoke-direct {v1}, Lcn/mucang/sundial/library/entity/CarStatus;-><init>()V

    :goto_0
    const-string v2, "carStatusData.value ?: CarStatus()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/library/entity/CarStatus;->setCarNo(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/model/CarModel;

    invoke-direct {v0}, Lcn/mucang/sundial/android/model/CarModel;-><init>()V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/model/CarModel;->copy(Lcn/mucang/sundial/android/model/CarModel;)V

    .line 7
    :cond_2
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/library/entity/CarStatus;->setCarModel(Lcn/mucang/sundial/android/model/CarModel;)V

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v0

    const-string v2, "TrainManager.getInstance()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getFlameOutTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/library/entity/CarStatus;->setFlameOutTime(J)V

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel$getCarStatus$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;->getCarStatusData()Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
