.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p405100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p405101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p405103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p405105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p405124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p405130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountDownTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;->getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getReportVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method public isShowCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
