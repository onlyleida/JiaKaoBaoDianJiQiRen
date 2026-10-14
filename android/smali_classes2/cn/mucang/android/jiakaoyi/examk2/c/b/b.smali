.class public Lcn/mucang/android/jiakaoyi/examk2/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    const v1, 0x4bf41

    aput v1, p1, v3

    .line 8
    invoke-virtual {p2, v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method
