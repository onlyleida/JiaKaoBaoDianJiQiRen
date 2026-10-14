.class final Lcn/mucang/sundial/library/util/LoginUtil$executeStudentSignOut$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->executeStudentSignOut(Lcn/mucang/sundial/library/activity/TopActivity;)V
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


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TopActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentSignOut$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

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

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentSignOut$1;->$activity:Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 4
    :cond_2
    sget-object v1, Lcn/mucang/sundial/library/util/ServerTimeHelper;->INSTANCE:Lcn/mucang/sundial/library/util/ServerTimeHelper;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/ServerTimeHelper;->getCurrentTime()J

    move-result-wide v1

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcn/mucang/sundial/android/SundialManager;->studentLogout(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-direct {v1}, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_3
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_id_empty:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    :cond_4
    :goto_2
    return-void
.end method
