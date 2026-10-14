.class final Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel$getBaseInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;->getBaseInfo()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel$getBaseInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;

    invoke-direct {v0}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->setAppVersion(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v3, "SundialManager.getInstance()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->setImei(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/library/entity/ActivityBaseInfo;->setCarNo(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel$getBaseInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;->getBaseInfo()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
