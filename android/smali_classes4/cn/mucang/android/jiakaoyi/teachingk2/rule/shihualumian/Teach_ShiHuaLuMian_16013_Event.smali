.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/Teach_ShiHuaLuMian_16013_Event;
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
.field private isNearEndLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/Teach_ShiHuaLuMian_16013_Event;->isNearEndLine:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;

    .line 2
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/Teach_ShiHuaLuMian_16013_Event;->isNearEndLine:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;->w:D

    iget p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;->b:I

    mul-int/lit8 p3, p3, 0x64

    int-to-double v3, p3

    cmpg-double p3, v1, v3

    if-gtz p3, :cond_0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/Teach_ShiHuaLuMian_16013_Event;->isNearEndLine:Z

    .line 4
    :cond_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/Teach_ShiHuaLuMian_16013_Event;->isNearEndLine:Z

    if-eqz p3, :cond_5

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 6
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;->d:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 8
    :cond_1
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;->e:Z

    if-eqz p3, :cond_3

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 10
    :cond_3
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;->f:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    :cond_5
    return v0
.end method
