.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/shangpoqibu/Teach_ShangPoQiBu_12001_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->y:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;->u:Z

    if-nez p2, :cond_0

    return v0

    .line 5
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1
.end method
