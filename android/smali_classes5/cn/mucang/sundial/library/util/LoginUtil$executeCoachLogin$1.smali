.class final Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->executeCoachLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
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
.field final synthetic $activity:Lcn/mucang/sundial/library/activity/TopActivity;

.field final synthetic $coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;->$coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;->$coachInfo:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/SundialManager;->coachLogin(Lcn/mucang/sundial/android/db/entity/CoachInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
