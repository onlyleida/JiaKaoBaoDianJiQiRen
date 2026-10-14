.class public Lcn/mucang/android/jiakaoyi/examk2/rule/xiachejiancha/K2_XiaCheJianCha_Step1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4e0b\u8f66\u68c0\u67e5"

    return-object v0
.end method
