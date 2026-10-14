.class public final Lcn/mucang/jiakaoyi/uilib/model/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "parseRouteNote",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
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
.method public static final a(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Lcn/mucang/jiakaoyi/uilib/model/RouteNode;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setId(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setStepId(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLon(D)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLat(D)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBearing(F)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getBrakeLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeLat(D)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getBrakeLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeLon(D)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getBrakeBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeBearing(F)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getBrakeDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeDistance(D)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getPlayStartVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setPlayStartVoice(Z)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getJudgeBrake()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setJudgeBrake(Z)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getJudgeTurnLight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setJudgeTurnLight(Z)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepDistance()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setStepDistance(F)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getOrderId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setOrderId(J)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setAlias(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setTeachNum(I)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getManualTrigger()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setManualTrigger(Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getRandomGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setRandomGroup(Ljava/lang/Integer;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setUid(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getTeachGpsList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setTeachNodes(Ljava/util/List;)V

    return-object v0
.end method
