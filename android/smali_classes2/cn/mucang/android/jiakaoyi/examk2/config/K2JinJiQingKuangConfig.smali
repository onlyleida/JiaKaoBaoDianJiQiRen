.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p410100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p410101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p410102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p410103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p410104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p410105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p410106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p410112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;


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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;->p410100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method
