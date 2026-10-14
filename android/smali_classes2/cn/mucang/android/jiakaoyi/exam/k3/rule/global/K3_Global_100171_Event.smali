.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)V

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    return-object p0
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->a()I

    move-result p1

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    const-string p1, "\u68c0\u6d4b\u5230\u8f66\u8f86\u95ef\u52a8"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_1
    return p3

    .line 4
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne p2, v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    .line 5
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->b()V

    :cond_4
    return p3
.end method

.method protected sameEventDeductOnce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
