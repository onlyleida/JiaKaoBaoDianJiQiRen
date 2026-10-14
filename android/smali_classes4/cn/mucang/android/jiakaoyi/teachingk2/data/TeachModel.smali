.class public Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
.super Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
.source "SourceFile"


# instance fields
.field public transient boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field public driveSchoolId:Ljava/lang/String;

.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field public examSiteId:Ljava/lang/String;

.field public exclusiveIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public grade:I

.field public transient index:I

.field public transient normalIndex:I

.field public transient order:I

.field public parkingSpaceBindId:Ljava/lang/String;

.field public parkingSpaceGroup:Ljava/lang/String;

.field public pointType:I

.field public position:I

.field public preIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public programmeId:Ljava/lang/String;

.field public transient reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field public step:I

.field public stepDirection:I

.field public subStep:I

.field public teachModelId:Ljava/lang/String;

.field private transient traceState:I

.field public variableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->traceState:I

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/c;->a(Lcom/alibaba/fastjson/JSONObject;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    return-object v0
.end method

.method public findText()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    .line 5
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    return-object v0

    .line 11
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 13
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v3, :cond_4

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0

    :cond_5
    const-string v0, "\u672a\u77e5\u6559\u5b66\u5185\u5bb9"

    return-object v0
.end method

.method public getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPointTypeDesc()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u3010\u9884\u62a5\u70b9\u3011"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\u3010\u64cd\u4f5c\u70b9\u3011"

    return-object v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "\u3010\u63d0\u793a\u70b9\u3011"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getShowText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStepAndPlayText()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    const-string v3, "\u9a76\u5165\u9879\u76ee"

    if-ne v0, v1, :cond_1

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    const-string v4, "\u53f3\u51fa\u5e93"

    const-string v5, "\u5de6\u5012\u5e93"

    const-string v6, "\u5de6\u51fa\u5e93"

    const-string v7, "\u53f3\u5012\u5e93"

    if-ne v1, v2, :cond_0

    .line 4
    filled-new-array {v3, v5, v4, v7, v6}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    filled-new-array {v3, v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_2

    const-string v1, "\u5012\u5165\u4fa7\u65b9"

    const-string v4, "\u9a76\u51fa\u4fa7\u65b9"

    .line 7
    filled-new-array {v3, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v3, "-"

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceModel()Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReverse()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->i(II)Z

    move-result v0

    return v0
.end method

.method public isStopTeach()Z
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-boolean v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceTeach()Z
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->traceState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->traceState:I

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->traceState:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->traceState:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setVoice(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    :cond_1
    return-void
.end method
