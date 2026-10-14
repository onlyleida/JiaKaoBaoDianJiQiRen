.class public Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    return-object v0
.end method

.method public static parseStartPos(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localRoute Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepId()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    .line 9
    new-instance v3, Landroid/location/Location;

    const-string v4, "gps"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 11
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 12
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBearing()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/location/Location;->setBearing(F)V

    .line 13
    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 15
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 16
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/location/Location;->setBearing(F)V

    .line 17
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getTeachNodes()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    .line 20
    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getBearing()Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 21
    new-instance v9, Landroid/location/Location;

    invoke-direct {v9, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 23
    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 24
    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getBearing()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/location/Location;->setBearing(F)V

    .line 25
    new-instance v10, Lcn/mucang/android/jiakaoyi/engine/j/a;

    invoke-direct {v10}, Lcn/mucang/android/jiakaoyi/engine/j/a;-><init>()V

    .line 26
    invoke-virtual {v8}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v10, Lcn/mucang/android/jiakaoyi/engine/j/a;->a:Ljava/lang/Long;

    .line 27
    iput-object v9, v10, Lcn/mucang/android/jiakaoyi/engine/j/a;->b:Landroid/location/Location;

    .line 28
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_2

    .line 29
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    .line 30
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    .line 31
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getId()I

    move-result v2

    iput v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    .line 32
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeDistance()D

    move-result-wide v2

    iput-wide v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->c:D

    .line 33
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isPlayStartVoice()Z

    move-result v2

    iput-boolean v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->e:Z

    .line 34
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isJudgeTurnLight()Z

    move-result v2

    iput-boolean v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    .line 35
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->isJudgeBrake()Z

    move-result v2

    iput-boolean v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->g:Z

    .line 36
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepDistance()F

    move-result v2

    iput v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->h:F

    .line 37
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->k:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getOrderId()J

    move-result-wide v2

    iput-wide v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->j:J

    .line 39
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStartVoice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->l:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getTeachNum()I

    move-result v2

    iput v2, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->m:I

    .line 41
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getRandomGroup()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->n:Ljava/lang/Integer;

    .line 42
    iput-object v7, v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->o:Ljava/util/List;

    .line 43
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object p0
.end method
