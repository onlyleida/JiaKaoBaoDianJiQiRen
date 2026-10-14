.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301806_Event;
.super Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;",
        ">;"
    }
.end annotation


# instance fields
.field private hasLeaveLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301806_Event;->hasLeaveLine:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Z
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301806_Event;->handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)Z

    move-result p1

    return p1
.end method

.method protected handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)Z
    .locals 0

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301806_Event;->hasLeaveLine:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p3, :cond_1

    iget p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    .line 3
    iget-boolean p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H:Z

    if-eqz p1, :cond_0

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301806_Event;->hasLeaveLine:Z

    :cond_0
    return p2

    .line 5
    :cond_1
    iget-boolean p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    if-nez p1, :cond_2

    return p2

    .line 6
    :cond_2
    iget-object p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method protected wheel()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    return v0
.end method
