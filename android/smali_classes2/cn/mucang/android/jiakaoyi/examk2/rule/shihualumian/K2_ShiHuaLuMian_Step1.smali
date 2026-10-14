.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_Step1;
.super Lcn/mucang/android/jiakaoyi/examk2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/c/a<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/d;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/examk2/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method protected onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/a;->onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;

    invoke-direct {p1, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/examk2/c/b/b;-><init>()V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;)V

    return-void
.end method

.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6e7f\u6ed1\u8def\u9762"

    return-object v0
.end method
