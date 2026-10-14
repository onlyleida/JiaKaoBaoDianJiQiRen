.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p404100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p404101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p404103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p404105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p404122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p404129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p404134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p404137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p404138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;


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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method public isShowCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
