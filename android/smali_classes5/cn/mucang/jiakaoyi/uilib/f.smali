.class public final Lcn/mucang/jiakaoyi/uilib/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u001a\u0016\u0010\u0002\u001a\u00020\u00012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u001a\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u001a\u0010\u0010\t\u001a\u00020\n*\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "TAG",
        "",
        "parseRouteNote",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "spots",
        "nodes",
        "parseSpotsList",
        "",
        "toEntity",
        "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
        "",
        "uilib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/f;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJSONString(spots)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBearing()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeBearing()F

    move-result v4

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeDistance()D

    move-result-wide v4

    .line 7
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isPlayStartVoice()Z

    move-result v4

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isJudgeTurnLight()Z

    move-result v4

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isJudgeBrake()Z

    move-result v4

    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepDistance()F

    move-result v4

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getOrderId()J

    move-result-wide v4

    .line 19
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getTeachNum()I

    move-result v4

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getRandomGroup()Ljava/lang/Integer;

    move-result-object v4

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getManualTrigger()Ljava/lang/Boolean;

    move-result-object v4

    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static final c(Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setRuleId(I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setStepId(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setName(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->deductIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setDeductIds(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    const-string v2, "0"

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue(Ljava/lang/String;)V

    .line 7
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    .line 8
    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    goto/16 :goto_2

    .line 9
    :cond_2
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    .line 11
    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;->minValue:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue(I)V

    .line 12
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;->maxValue:I

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue(I)V

    goto/16 :goto_2

    .line 13
    :cond_3
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    .line 14
    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    goto/16 :goto_2

    .line 15
    :cond_4
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    .line 17
    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue2(I)V

    .line 18
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->minValue:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue(I)V

    .line 19
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->maxValue:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue(I)V

    .line 20
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->minValue2:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue2(I)V

    .line 21
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->maxValue2:I

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue2(I)V

    goto :goto_2

    .line 22
    :cond_5
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;->options:Ljava/util/List;

    const-string v2, "options"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_7

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, ","

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p0, 0x0

    throw p0

    .line 30
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setOptions(Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_9
    instance-of v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    .line 32
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    .line 33
    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;->minValue:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue(I)V

    .line 34
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;->maxValue:I

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue(I)V

    :cond_a
    :goto_2
    return-object v0
.end method
