.class public Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private allowUserSet:Z

.field private areaCode:Ljava/lang/String;

.field private canAutoJudge:Z

.field private code:I

.field private deductScore:I

.field private desc:Ljava/lang/String;

.field private examSiteId:J

.field private hadSetByUser:Z

.field private judgeType:I

.field private name:Ljava/lang/String;

.field private position:I

.field private ruleIds:Ljava/lang/String;

.field private status:I

.field private stepId:I

.field public transient updateTime:J

.field private useMode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "applicableMode"
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Z)V

    return-void
.end method

.method public copy(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Z)V
    .locals 2

    .line 2
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    .line 3
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    .line 4
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    .line 5
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->name:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    .line 7
    iget-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->canAutoJudge:Z

    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->canAutoJudge:Z

    .line 8
    iget-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->hadSetByUser:Z

    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->hadSetByUser:Z

    .line 9
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    .line 10
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    if-eqz p2, :cond_0

    .line 11
    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->examSiteId:J

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->examSiteId:J

    .line 12
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    .line 13
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->ruleIds:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->ruleIds:Ljava/lang/String;

    .line 14
    iget p2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->position:I

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->position:I

    .line 15
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->userId:Ljava/lang/String;

    .line 16
    iget-boolean p2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->allowUserSet:Z

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->allowUserSet:Z

    .line 17
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->areaCode:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->areaCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    return v0
.end method

.method public getDeductScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExamSiteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->examSiteId:J

    return-wide v0
.end method

.method public getJudgeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->position:I

    return v0
.end method

.method public getRuleIds()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->ruleIds:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    return v0
.end method

.method public getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    return v0
.end method

.method public getUseMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowUserSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->allowUserSet:Z

    return v0
.end method

.method public isCanAutoJudge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->canAutoJudge:Z

    return v0
.end method

.method public isDelete()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHadSetByUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->hadSetByUser:Z

    return v0
.end method

.method public setAllowUserSet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->allowUserSet:Z

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setCanAutoJudge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->canAutoJudge:Z

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    return-void
.end method

.method public setDeductScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    return-void
.end method

.method public setExamSiteId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->examSiteId:J

    return-void
.end method

.method public setHadSetByUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->hadSetByUser:Z

    return-void
.end method

.method public setJudgeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->position:I

    return-void
.end method

.method public setRuleIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->ruleIds:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    return-void
.end method

.method public setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    return-void
.end method

.method public setUseMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->userId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeductEntity{examSiteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", judgeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deductScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowUserSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->allowUserSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", areaCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", canAutoJudge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->canAutoJudge:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", hadSetByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->hadSetByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", useMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform()Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->code:I

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff0c\u6263"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->deductScore:I

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->stepId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v5

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->judgeType:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->parse(I)Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    move-result-object v6

    iget v7, p0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->useMode:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;-><init>(ILjava/lang/String;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;I)V

    return-object v8
.end method
