.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;
.super Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile start:Z = false


# instance fields
.field private hasSpeaking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;)V
    .locals 9

    .line 1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->hasSpeaking:Z

    return-void
.end method


# virtual methods
.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->hasSpeaking:Z

    if-nez p1, :cond_0

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_open_engine:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->hasSpeaking:Z

    :cond_0
    return p2
.end method

.method protected reachStartPos(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_QiBu_Starter;->start:Z

    return p1
.end method
