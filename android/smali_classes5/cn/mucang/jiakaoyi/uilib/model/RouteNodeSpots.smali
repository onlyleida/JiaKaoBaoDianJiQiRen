.class public Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private routeId:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->routeId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->spots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRouteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->routeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpots()Ljava/util/List;
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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->spots:Ljava/util/List;

    return-object v0
.end method

.method public setRouteId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->routeId:Ljava/lang/String;

    return-void
.end method

.method public setSpots(Ljava/util/List;)V
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
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNodeSpots;->spots:Ljava/util/List;

    return-void
.end method
