.class final Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel$getServerCoachInfo2Update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;->getServerCoachInfo2Update()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel$getServerCoachInfo2Update$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\u5148\u5237\u4e00\u6b21\u5c3d\u5feb\u5c55\u793a\u51fa\u6765"

    .line 2
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel$getServerCoachInfo2Update$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;->getCoachInfoData()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const-string v1, "\u66f4\u65b0\u672c\u5730\u7684\u6570\u636e"

    .line 4
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcn/mucang/sundial/library/http/CoachApi;

    invoke-direct {v2}, Lcn/mucang/sundial/library/http/CoachApi;-><init>()V

    const-string v3, "idCard"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lcn/mucang/sundial/library/http/CoachApi;->getCoachInfo$default(Lcn/mucang/sundial/library/http/CoachApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->infoValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Lcn/mucang/sundial/library/util/KtxsKt;->toCoachInfo(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/SundialManager;->saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel$getServerCoachInfo2Update$1;->this$0:Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;->getCoachInfoData()Landroidx/lifecycle/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6559\u7ec3Api\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoachInfoViewModel"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
