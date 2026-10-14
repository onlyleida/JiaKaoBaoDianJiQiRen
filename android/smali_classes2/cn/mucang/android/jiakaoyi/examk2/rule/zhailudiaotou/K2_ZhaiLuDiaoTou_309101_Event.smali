.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasDeduct:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309101_Event;->hasDeduct:Z

    return-void
.end method


# virtual methods
.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/n;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    invoke-virtual {p3, p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/n;

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309101_Event;->hasDeduct:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309101_Event;->hasDeduct:Z

    return p3

    .line 4
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/i;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p1, p2, :cond_1

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_309101_Event;->hasDeduct:Z

    :cond_1
    return v0
.end method
