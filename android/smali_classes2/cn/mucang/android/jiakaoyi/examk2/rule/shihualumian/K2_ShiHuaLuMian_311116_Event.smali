.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasOpenFogLight:Z

.field private hasOpenLight:Z

.field private hasOpenWarningLight:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenWarningLight:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenFogLight:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenLight:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/e;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/d;

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/d;->u:D

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    const/4 v2, 0x1

    cmpg-double v3, p2, v0

    if-gtz v3, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 4
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenWarningLight:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenWarningLight:Z

    return p3

    .line 6
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenWarningLight:Z

    if-nez p2, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenWarningLight:Z

    .line 8
    :cond_2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenFogLight:Z

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenFogLight:Z

    return p3

    .line 10
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenFogLight:Z

    if-nez p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    :cond_4
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenFogLight:Z

    .line 12
    :cond_5
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenLight:Z

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 13
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenLight:Z

    return p3

    .line 14
    :cond_6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenLight:Z

    if-nez p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 15
    :cond_7
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311116_Event;->hasOpenLight:Z

    :cond_8
    return v2
.end method
