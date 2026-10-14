.class public Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private allowUserSet:Z

.field private areaCode:Ljava/lang/String;

.field private deductIds:Ljava/lang/String;

.field private examSiteId:J

.field private hadSetByUser:Z

.field private level:I

.field private maxValue:I

.field private maxValue2:I

.field private minValue:I

.field private minValue2:I

.field private name:Ljava/lang/String;

.field private transient optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options:Ljava/lang/String;

.field private position:I

.field private ruleId:I

.field private stepId:I

.field public transient updateTime:J

.field private userId:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private value2:I

.field private valueType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;Z)V

    return-void
.end method

.method public copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;Z)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    .line 3
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    .line 4
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    .line 5
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    .line 6
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    .line 7
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    .line 8
    iget-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->hadSetByUser:Z

    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->hadSetByUser:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->optionList:Ljava/util/List;

    .line 10
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    if-eqz p2, :cond_0

    .line 11
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    .line 12
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    .line 13
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->userId:Ljava/lang/String;

    .line 14
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->position:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->position:I

    .line 15
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->areaCode:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->areaCode:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    .line 17
    iget-boolean p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->allowUserSet:Z

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->allowUserSet:Z

    .line 18
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    .line 19
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->examSiteId:J

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->examSiteId:J

    .line 20
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    .line 21
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    instance-of v2, p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-super {p0, p1}, Lcn/mucang/android/core/db/IdEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getExamSiteId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getExamSiteId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue2()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue2()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeductIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    return-object v0
.end method

.method public getExamSiteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->examSiteId:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    return v0
.end method

.method public getMaxValue2()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    return v0
.end method

.method public getMinValue2()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->optionList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->optionList:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->optionList:Ljava/util/List;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->position:I

    return v0
.end method

.method public getRuleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    return v0
.end method

.method public getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue2()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    return v0
.end method

.method public getValueType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/db/IdEntity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getExamSiteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllowUserSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->allowUserSet:Z

    return v0
.end method

.method public isHadSetByUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->hadSetByUser:Z

    return v0
.end method

.method public setAllowUserSet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->allowUserSet:Z

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setDeductIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    return-void
.end method

.method public setExamSiteId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->examSiteId:J

    return-void
.end method

.method public setHadSetByUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->hadSetByUser:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    return-void
.end method

.method public setMaxValue2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    return-void
.end method

.method public setMinValue2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->position:I

    return-void
.end method

.method public setRuleId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    return-void
.end method

.method public setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->userId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    return-void
.end method

.method public setValue2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    return-void
.end method

.method public setValueType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuleConfigEntity{stepId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deductIds=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", examSiteId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->examSiteId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ruleId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", valueType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", allowUserSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->allowUserSet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minValue2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxValue2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", options=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", optionList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->optionList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", hadSetByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->hadSetByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->valueType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    :try_start_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;->minValue:I

    .line 6
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;->maxValue:I

    .line 7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 8
    :try_start_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    :try_start_5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 10
    :try_start_6
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 11
    :try_start_7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    .line 12
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value2:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    .line 13
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->minValue:I

    .line 14
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->maxValue:I

    .line 15
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue2:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->minValue2:I

    .line 16
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue2:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->maxValue2:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 17
    :try_start_8
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 18
    :try_start_9
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->options:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;->options:Ljava/util/List;

    .line 20
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 22
    :try_start_a
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 23
    :try_start_b
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->minValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;->minValue:I

    .line 24
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->maxValue:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;->maxValue:I

    .line 25
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v1, v0

    .line 26
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6570\u636e\u8f6c\u6362\u53d1\u751f\u9519\u8bef: ruleId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stepId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6570\u636e\u8f6c\u6362\u53d1\u751f\u9519\u8bef:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v1, :cond_6

    return-object v0

    .line 30
    :cond_6
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->ruleId:I

    iput v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 31
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->stepId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 32
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->name:Ljava/lang/String;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->deductIds:Ljava/lang/String;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->deductIds:Ljava/lang/String;

    .line 34
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->level:I

    iput v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->level:I

    return-object v1
.end method
