.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private canStart:Z

.field public changeGearOutTime:Z

.field public changeGearStartTime:J

.field private currentTime:J

.field private highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private index:I

.field private isPlayDingDong:Z

.field public isSmoothJiaJianDang:Z

.field public isYueJi:Z

.field private lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private noInited:Z

.field public reachTargetGear:Z

.field private reduceTargetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final smoothJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;

.field public startGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public success:Z

.field private final targetGears:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isSmoothJiaJianDang:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->canStart:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->noInited:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->startGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    .line 9
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong:Z

    .line 11
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->smoothJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->currentTime:J

    return-wide v0
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong:Z

    return-void
.end method

.method private createGearIter(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)V

    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->currentTime:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearStartTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method private getGearsByGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private initGear(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->startGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    :goto_0
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->getGearsByGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 7
    :try_start_0
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->createGearIter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 11
    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v6, v7, :cond_1

    .line 12
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    .line 13
    :cond_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 17
    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v4, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, v0, :cond_4

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_4

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, v2, :cond_4

    .line 21
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_up_shift_x_gear_judge:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 22
    :cond_4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return v2

    :catchall_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6321\u4f4d\u914d\u7f6e\u9519\u8bef"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string p1, ""

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_7
    return v1

    .line 24
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 25
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v0, v2, :cond_9

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 27
    :cond_9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v0, v2, :cond_a

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v4, 0x6

    if-gt v0, v4, :cond_a

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v4, v1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/2addr p1, v3

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_a
    return v1

    .line 30
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    if-eqz v0, :cond_e

    .line 31
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_c

    .line 32
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 33
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    aget-object v0, v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, v2, :cond_d

    .line 36
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_up_shift_x_gear_1:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_d
    return v2

    :cond_e
    return v1
.end method

.method private isPlayDingDong()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong:Z

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/a;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_0
    return-void
.end method

.method private orderJiaJianDang(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->canStart:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 4
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->canStart:Z

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->canStart:Z

    if-eqz v1, :cond_10

    .line 6
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->currentTime:J

    sub-long/2addr v8, v4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v8, v4

    if-lez v1, :cond_2

    .line 7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearOutTime:Z

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_f

    .line 9
    iput-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearStartTime:J

    .line 10
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearOutTime:Z

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->highGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v1, :cond_3

    .line 12
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 13
    :cond_3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    sub-int/2addr v0, v3

    if-lt v1, v0, :cond_4

    .line 15
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 16
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    goto/16 :goto_3

    .line 17
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong()V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "*"

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 20
    iget v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 21
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne v4, v3, :cond_5

    .line 22
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 25
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    add-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 26
    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v4, p2, :cond_6

    const/4 p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_9

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v5, p2

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 28
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 29
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 30
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 31
    :cond_8
    sget p2, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_up_shift_x_gear:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 32
    :cond_9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v5, p2

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-eqz v5, :cond_b

    .line 33
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 34
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 35
    :cond_a
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_b
    sget p2, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_down_shift_x_gear:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez v0, :cond_d

    .line 37
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-nez p1, :cond_e

    .line 38
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, v3, :cond_c

    .line 39
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)V

    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_2

    .line 40
    :cond_c
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->currentTime:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearStartTime:J

    goto :goto_2

    .line 41
    :cond_d
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/b;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/b;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/lang/String;)V

    int-to-long p1, v0

    invoke-static {v1, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 42
    :cond_e
    :goto_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->index:I

    goto :goto_3

    .line 43
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_10

    if-eqz p1, :cond_10

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_10

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isYueJi "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " current "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 45
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    :cond_10
    :goto_3
    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->currentTime:J

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isSmoothJiaJianDang:Z

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isSmoothJiaJianDang:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->smoothJiaJianDangChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isSmoothJiaJianDang:Z

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    if-eqz v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->noInited:Z

    if-eqz v1, :cond_4

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->initGear(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->noInited:Z

    .line 13
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto/16 :goto_2

    .line 14
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    const/4 v3, 0x6

    if-ne p1, p2, :cond_9

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p1, :cond_8

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p2, :cond_8

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt p2, v1, :cond_8

    if-gt p2, v3, :cond_8

    .line 16
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/2addr p1, v1

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    .line 18
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    .line 19
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong()V

    .line 21
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 22
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    goto/16 :goto_3

    .line 23
    :cond_9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p1, :cond_c

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p2, :cond_c

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt p2, v1, :cond_c

    if-gt p2, v3, :cond_c

    .line 24
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/2addr p1, v1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    goto :goto_1

    :cond_b
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_c

    .line 25
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    .line 26
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reduceTargetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p1, :cond_e

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, p2, :cond_d

    if-eqz p2, :cond_d

    .line 28
    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le p2, p1, :cond_d

    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 29
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isYueJi:Z

    .line 30
    :cond_d
    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reduceTargetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ge p1, p2, :cond_11

    .line 31
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 32
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    goto :goto_3

    .line 33
    :cond_e
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, p2, :cond_11

    .line 34
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->isPlayDingDong()V

    .line 35
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 37
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reachTargetGear:Z

    .line 38
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->success:Z

    goto :goto_3

    .line 39
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->targetGears:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 40
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->reduceTargetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 41
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    if-ne p1, v1, :cond_11

    .line 42
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p2, "\u8bf7\u51cf\u6321"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_3

    .line 43
    :cond_10
    :goto_2
    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->orderJiaJianDang(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 44
    :cond_11
    :goto_3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method
