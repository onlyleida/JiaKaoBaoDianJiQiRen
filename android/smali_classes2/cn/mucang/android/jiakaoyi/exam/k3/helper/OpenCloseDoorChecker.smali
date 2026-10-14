.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;
    }
.end annotation


# instance fields
.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->Init:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State:[I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-eqz p1, :cond_4

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->Finish:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->WaitClose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p1, :cond_3

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->Error:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->WaitOpen:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    :cond_4
    :goto_0
    return-void
.end method
