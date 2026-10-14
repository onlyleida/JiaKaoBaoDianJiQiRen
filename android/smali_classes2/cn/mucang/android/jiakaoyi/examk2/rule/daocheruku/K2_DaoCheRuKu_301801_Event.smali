.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301801_Event;
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


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/rule/TeachBaseDeduct;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Z
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301801_Event;->handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)Z

    move-result p1

    return p1
.end method

.method protected handleTeachSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)Z
    .locals 0

    .line 2
    iget-boolean p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->L:Z

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->v:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-boolean p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->w:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected wheel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
