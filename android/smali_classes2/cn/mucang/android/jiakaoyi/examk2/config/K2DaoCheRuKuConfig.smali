.class public Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public p402100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p402101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p402103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p402105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p402127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p402140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

.field public p402141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field public p402144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field public p402147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public p402148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;


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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEndVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method public isShowCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
