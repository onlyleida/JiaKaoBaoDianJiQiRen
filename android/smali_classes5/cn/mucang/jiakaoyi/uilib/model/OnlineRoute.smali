.class public final Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;
.super Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;",
        "Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "routeSpotList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "getRouteSpotList",
        "()Ljava/util/List;",
        "setRouteSpotList",
        "(Ljava/util/List;)V",
        "spots",
        "",
        "getSpots",
        "setSpots",
        "toLocalRoute",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private routeSpotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ">;"
        }
    .end annotation
.end field

.field private spots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteSpotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->routeSpotList:Ljava/util/List;

    return-object v0
.end method

.method public final getSpots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->spots:Ljava/util/List;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRouteSpotList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->routeSpotList:Ljava/util/List;

    return-void
.end method

.method public final setSpots(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->spots:Ljava/util/List;

    return-void
.end method

.method public final toLocalRoute()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setRouteName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setRouteId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getExamSiteId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setExamSiteId(J)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getExamSiteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setExamSiteName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->isCanPublic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setCanPublic(Z)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->isProxyRoute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setProxyRoute(Z)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->isOfficial()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setOfficial(Z)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setDistance(I)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setAreaName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setAreaCode(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setSource(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->isCanAdd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setCanAdd(Z)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getFromDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setFromDistance(I)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getUseCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setUseCount(I)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->isCopy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->setCopy(Z)V

    .line 17
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->routeSpotList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    .line 21
    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/model/h;->a(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->setNodes(Ljava/util/List;)V

    return-object v0
.end method
