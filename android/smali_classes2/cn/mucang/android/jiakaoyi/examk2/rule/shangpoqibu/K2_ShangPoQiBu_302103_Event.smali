.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302103_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->u:Z

    const/4 v0, 0x1

    if-nez p3, :cond_1

    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/examk2/b/k;->e:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v1, :cond_1

    .line 4
    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    const/16 v1, 0x1e

    if-le p3, v1, :cond_1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->t:I

    const/16 p3, 0x32

    if-gt p2, p3, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 6
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/examk2/b/k;->d:Z

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
