.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:J

.field private createUserId:J

.field private createUserName:Ljava/lang/String;

.field private driveSchoolId:J

.field private driveSchoolName:Ljava/lang/String;

.field private id:J

.field private noticeMessage:Ljava/lang/String;

.field private paramType:I

.field private paramValue:Ljava/lang/String;

.field private ruleCode:Ljava/lang/String;

.field private ruleInfo:Ljava/lang/String;

.field private status:I

.field private times:I

.field private type:I

.field private updateTime:J

.field private updateUserId:J

.field private updateUserName:Ljava/lang/String;

.field private voiceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createTime:J

    return-wide v0
.end method

.method public getCreateUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createUserId:J

    return-wide v0
.end method

.method public getCreateUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveSchoolId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->driveSchoolId:J

    return-wide v0
.end method

.method public getDriveSchoolName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->driveSchoolName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->id:J

    return-wide v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->noticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getParamCount(I)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return p1
.end method

.method public getParamRate(F)F
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return p1
.end method

.method public getParamTimeMs(J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p2, 0x42700000    # 60.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-wide p1
.end method

.method public getParamType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramType:I

    return v0
.end method

.method public getParamValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->ruleCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->ruleInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->status:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->times:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->type:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateTime:J

    return-wide v0
.end method

.method public getUpdateUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateUserId:J

    return-wide v0
.end method

.method public getUpdateUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->voiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createTime:J

    return-void
.end method

.method public setCreateUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createUserId:J

    return-void
.end method

.method public setCreateUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->createUserName:Ljava/lang/String;

    return-void
.end method

.method public setDriveSchoolId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->driveSchoolId:J

    return-void
.end method

.method public setDriveSchoolName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->driveSchoolName:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->id:J

    return-void
.end method

.method public setNoticeMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->noticeMessage:Ljava/lang/String;

    return-void
.end method

.method public setParamType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramType:I

    return-void
.end method

.method public setParamValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->paramValue:Ljava/lang/String;

    return-void
.end method

.method public setRuleCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->ruleCode:Ljava/lang/String;

    return-void
.end method

.method public setRuleInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->ruleInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->status:I

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->times:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->type:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateTime:J

    return-void
.end method

.method public setUpdateUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateUserId:J

    return-void
.end method

.method public setUpdateUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->updateUserName:Ljava/lang/String;

    return-void
.end method

.method public setVoiceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;->voiceUrl:Ljava/lang/String;

    return-void
.end method
