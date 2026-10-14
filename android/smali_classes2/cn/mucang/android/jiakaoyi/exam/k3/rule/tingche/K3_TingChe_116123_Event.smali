.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Event_116123_ "


# instance fields
.field private final StepCloseEngine_4:I

.field private final StepFootBrakeOn_3:I

.field private final StepHandbrakeOpen_2:I

.field private final StepHuiKongDang_1:I

.field private final StepOpenCloseDoor_6:I

.field private final StepSeatBeltOn_5:I

.field private closeDoorChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

.field private currentIndex:I

.field private currentValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private orderArr:[I

.field private orderNameArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-string v0, ""

    const-string v1, "(1)\u56de\u7a7a\u6321"

    const-string v2, "(2)\u62c9\u624b\u5239"

    const-string v3, "(3)\u677e\u811a\u5239"

    const-string v4, "(4)\u7184\u706b"

    const-string v5, "(5)\u89e3\u5b89\u5168\u5e26"

    const-string v6, "(6)\u5f00\u5173\u8f66\u95e8"

    .line 2
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderNameArr:[Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepHuiKongDang_1:I

    const/4 p2, 0x2

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepHandbrakeOpen_2:I

    const/4 p2, 0x3

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepFootBrakeOn_3:I

    const/4 p2, 0x4

    .line 6
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepCloseEngine_4:I

    const/4 p2, 0x5

    .line 7
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepSeatBeltOn_5:I

    const/4 p2, 0x6

    .line 8
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->StepOpenCloseDoor_6:I

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 11
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 15
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 16
    aget-char v0, p1, p2

    add-int/lit8 v0, v0, -0x30

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    aput v0, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkBackStep(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z
    .locals 5

    move v0, p2

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_7

    .line 2
    aget v1, v1, v0

    const/4 v2, 0x6

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez v1, :cond_6

    const-string p1, "Event_116123_ \u63d0\u524d \u95e8\u662f\u5f00\u7684"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v4

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    aget v0, p1, p2

    if-ne v0, v3, :cond_1

    const-string p1, "Event_116123_ \u63d0\u524d \u6321\u4f4d\u7a7a\u6321"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    aget v0, p1, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string p1, "Event_116123_ \u63d0\u524d \u624b\u5239\u62c9\u8d77"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    aget v0, p1, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string p1, "Event_116123_ \u63d0\u524d \u811a\u5239\u677e\u5f00"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    aget v0, p1, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string p1, "Event_116123_ \u63d0\u524d \u5f15\u64ce\u7184\u706b"

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_4
    aget p1, p1, p2

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    const-string p1, "Event_116123_ \u63d0\u524d \u5b89\u5168\u5e26\u677e\u5f00"

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v3
.end method


# virtual methods
.method public checkOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    aget v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    sub-int/2addr v0, v3

    if-ne v0, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 4
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_e

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_2

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u5b8c\u6210\u56de\u7a7a\u6321"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_2
    return v3

    .line 7
    :cond_3
    aget v1, v0, p2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 8
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    sub-int/2addr v0, v3

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u68c0\u6d4b\u4e0a\u4e00\u4e2a\u6b65\u9aa4\u7684\u677e\u624b\u5239\u64cd\u4f5c\u65f6 \u8f66\u8f86\u662f\u7184\u706b\u7684  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v3

    .line 10
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_e

    .line 11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_5

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u624b\u5239\u62c9\u8d77"

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    return v3

    .line 13
    :cond_6
    aget v1, v0, p2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p1, :cond_e

    .line 15
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_7

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u811a\u5239\u677e\u5f00"

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_7
    return v3

    .line 17
    :cond_8
    aget v1, v0, p2

    const/4 v4, 0x4

    if-ne v1, v4, :cond_a

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-nez p1, :cond_e

    .line 19
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_9

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u5f15\u64ce\u5173\u95ed"

    .line 20
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_9
    return v3

    .line 21
    :cond_a
    aget v1, v0, p2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_c

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-nez p1, :cond_e

    .line 23
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_b

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u5b89\u5168\u5e26\u677e\u5f00"

    .line 24
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_b
    return v3

    .line 25
    :cond_c
    aget v0, v0, p2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 26
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-eqz p1, :cond_e

    .line 27
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    if-ne p1, p2, :cond_d

    const-string p1, "Event_116123_  \u68c0\u67e5\u5230\u95e8\u5173\u95ed"

    .line 28
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_d
    return v3

    :cond_e
    return v2
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_10

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length p2, p2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event_116123_  p216142 \uff08\u56de\u7a7a\u6321(1)\u62c9\u624b\u5239(2)\u677e\u811a\u5239(3)\u7184\u706b(4)\u89e3\u5b89\u5168\u5e26(5)\u5f00\u5173\u8f66\u95e8(6)\uff09\u914d\u7f6e\u6709\u9519\u8bef value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v2, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    :cond_2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b()Z

    move-result p2

    if-nez p2, :cond_e

    .line 9
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length v3, v2

    if-ge p2, v3, :cond_d

    .line 10
    aget v2, v2, p2

    const/4 v3, 0x6

    const-string v4, " \u505a\u9519\u6263\u5206"

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, p2, -0x1

    if-ltz v2, :cond_4

    sub-int/2addr p2, v1

    .line 11
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    sub-int/2addr p2, v1

    aget p1, p1, p2

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderNameArr:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_3

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Event_116123_  \u5f00\u5173\u8f66\u95e8\u505a\u5bf9\u65f6\u68c0\u67e5\u4e0a\u4e00\u4e2a\u6b65\u9aa4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderNameArr:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    return v0

    .line 16
    :cond_4
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    add-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkBackStep(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 18
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->closeDoorChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

    if-nez p2, :cond_6

    .line 19
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->closeDoorChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

    .line 20
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->closeDoorChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->closeDoorChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->Finish:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    if-ne p1, p2, :cond_7

    .line 22
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    goto :goto_0

    .line 23
    :cond_7
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;->Error:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OpenCloseDoorChecker$State;

    if-ne p1, p2, :cond_d

    .line 24
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const-string p1, "Event_116123_  \u5f00\u5173\u8f66\u95e8\u6b65\u9aa4\u505a\u9519\u6263\u5206"

    .line 25
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    :cond_8
    add-int/2addr p2, v1

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkBackStep(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 27
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 28
    :cond_9
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 29
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    add-int/lit8 v2, p2, -0x1

    if-ltz v2, :cond_c

    sub-int/2addr p2, v1

    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->checkOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 31
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    goto :goto_0

    .line 32
    :cond_a
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    sub-int/2addr p2, v1

    aget p1, p1, p2

    .line 34
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderNameArr:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_b

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Event_116123_  \u505a\u5bf9\u4e00\u4e2a\u64cd\u4f5c\u65f6\u68c0\u67e5\u4e0a\u4e00\u4e2a\u6b65\u9aa4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderNameArr:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_b
    return v0

    :cond_c
    add-int/2addr p2, v1

    .line 36
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    .line 37
    :cond_d
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->currentIndex:I

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length p2, p2

    if-ne p1, p2, :cond_e

    const-string p1, "Event_116123_ \u6240\u6709\u6b65\u9aa4\u5df2\u7ecf\u5b8c\u6210"

    .line 38
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 40
    :cond_e
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 41
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const-string p1, "Event_116123_ \u9879\u76ee\u7ed3\u675f \u6b65\u9aa4\u6ca1\u6709\u505a\u5b8c "

    .line 42
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    :cond_f
    return v1

    .line 43
    :cond_10
    :goto_1
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event_116123_  orderArr.length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116123_Event;->orderArr:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " stepEvent.isEnd() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method
