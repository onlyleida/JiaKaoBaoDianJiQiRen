.class public Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_Step1;
.super Lcn/mucang/android/jiakaoyi/examk2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/c/a<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/h;Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/examk2/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method protected onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/a;->onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;

    invoke-direct {p1, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;)V

    return-void
.end method

.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6a21\u62df\u96a7\u9053"

    return-object v0
.end method
