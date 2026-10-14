.class public Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bodyErrorCount:I

.field public final errorRound:I

.field public speedErrorCount:I

.field public final startTime:J

.field public final step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field public stopErrorCount:I

.field public final totalRound:I

.field public wheelErrorCount:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->totalRound:I

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->errorRound:I

    .line 5
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->startTime:J

    return-void
.end method


# virtual methods
.method public createFailedDesc()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_remain_problems:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->desc:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->stopErrorCount:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_stop_wrong:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->stopErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_counts:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 4
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->bodyErrorCount:I

    if-lez v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_body_touch_line:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->bodyErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_counts:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->wheelErrorCount:I

    if-lez v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_wheel_touch_line:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->wheelErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_counts:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->speedErrorCount:I

    if-lez v1, :cond_3

    add-int/2addr v5, v2

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_over_5:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->speedErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_counts:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_fp_fail_tip:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFinish()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->isPass()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->totalRound:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->totalCount:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->errorRound:I

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->passCount:I

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPass()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->totalRound:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->totalCount:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->errorRound:I

    sub-int/2addr v0, v2

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->passCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapToServerData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->FirstPractice:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->subCode:I

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;-><init>(II)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->isPass()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setPass(Z)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->totalRound:I

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setCourseTotalCount(I)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->totalRound:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->errorRound:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setCoursePassCount(I)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setCostTime(F)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setExtraData(Ljava/lang/String;)V

    return-object v0
.end method

.method public setCount(IIII)Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->stopErrorCount:I

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->bodyErrorCount:I

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->wheelErrorCount:I

    .line 4
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->speedErrorCount:I

    return-object p0
.end method
