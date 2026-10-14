.class public Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private areaCode:Ljava/lang/String;

.field private areaName:Ljava/lang/String;

.field private canAdd:Z

.field private canPublic:Z

.field private copy:Z

.field private distance:I

.field private examSiteId:J

.field private examSiteName:Ljava/lang/String;

.field private fromDistance:I

.field private official:Z

.field private proxyRoute:Z

.field private routeId:Ljava/lang/String;

.field private routeName:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private useCount:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->distance:I

    return v0
.end method

.method public getExamSiteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->examSiteId:J

    return-wide v0
.end method

.method public getExamSiteName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->examSiteName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->fromDistance:I

    return v0
.end method

.method public getRouteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->routeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->routeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->useCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isCanAdd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->canAdd:Z

    return v0
.end method

.method public isCanPublic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->canPublic:Z

    return v0
.end method

.method public isCopy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->copy:Z

    return v0
.end method

.method public isOfficial()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->official:Z

    return v0
.end method

.method public isProxyRoute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->proxyRoute:Z

    return v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setCanAdd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->canAdd:Z

    return-void
.end method

.method public setCanPublic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->canPublic:Z

    return-void
.end method

.method public setCopy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->copy:Z

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->distance:I

    return-void
.end method

.method public setExamSiteId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->examSiteId:J

    return-void
.end method

.method public setExamSiteName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->examSiteName:Ljava/lang/String;

    return-void
.end method

.method public setFromDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->fromDistance:I

    return-void
.end method

.method public setOfficial(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->official:Z

    return-void
.end method

.method public setProxyRoute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->proxyRoute:Z

    return-void
.end method

.method public setRouteId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->routeId:Ljava/lang/String;

    return-void
.end method

.method public setRouteName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->routeName:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->source:Ljava/lang/String;

    return-void
.end method

.method public setUseCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->useCount:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->userId:Ljava/lang/String;

    return-void
.end method
