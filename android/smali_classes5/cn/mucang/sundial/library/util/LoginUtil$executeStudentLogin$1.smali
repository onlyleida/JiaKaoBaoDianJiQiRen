.class final Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->executeStudentLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
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

.field final synthetic $studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;->$studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/library/util/ServerTimeHelper;->getServerTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    iget-object v4, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;->$studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v0, v4, v2, v3}, Lcn/mucang/sundial/android/SundialManager;->studentLogin(Lcn/mucang/sundial/android/db/entity/StudentInfo;J)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "\u540c\u6b65\u7b7e\u5230\u65f6\u95f4\u5931\u8d25"

    :goto_0
    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v2, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;

    invoke-direct {v2, v1}, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
