.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p403100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p403101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p403103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p403105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p403107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p403109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p403115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p403116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p403117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;


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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method public isShowCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;->p403109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
