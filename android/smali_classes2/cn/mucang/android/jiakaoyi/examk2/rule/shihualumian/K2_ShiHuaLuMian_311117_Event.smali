.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;
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
.field private hasOpenWiper:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;->hasOpenWiper:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;->hasOpenWiper:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;->hasOpenWiper:Z

    return p1

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;->hasOpenWiper:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    if-eqz p1, :cond_1

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_311117_Event;->hasOpenWiper:Z

    :cond_1
    return p3
.end method
