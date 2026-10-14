.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p411100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p411101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p411103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p411105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p411118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p411120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p411121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method
