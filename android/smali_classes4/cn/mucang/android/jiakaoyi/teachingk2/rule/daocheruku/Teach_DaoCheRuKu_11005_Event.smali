.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;
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


# instance fields
.field private lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/b;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->K:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_2

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_0

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p3, v2, :cond_1

    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    :cond_1
    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    .line 5
    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne p2, p3, :cond_3

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    goto :goto_0

    .line 7
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    if-ne p2, p3, :cond_4

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 9
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->E:Z

    if-nez p2, :cond_5

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return v0

    .line 11
    :cond_5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11005_Event;->lastStep:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
