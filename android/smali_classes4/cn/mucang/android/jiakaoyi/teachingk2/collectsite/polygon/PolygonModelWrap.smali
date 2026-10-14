.class public Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public desc:Ljava/lang/String;

.field public examSiteId:Ljava/lang/String;

.field public fenceType:I

.field public fenceWidth:D

.field public gpsData:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public qrCode:Ljava/lang/String;

.field public safeData:Ljava/lang/String;

.field public width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toPolygon()Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->id:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->id:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->qrCode:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->qrCode:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->name:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->desc:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->examSiteId:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->examSiteId:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->fenceType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->fenceType:I

    .line 8
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->width:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->fenceWidth:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->width:D

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->gpsData:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->gpsData:Ljava/lang/String;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->gpsData:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->safeData:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->safeData:Ljava/lang/String;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->safeData:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->safeData:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    .line 14
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModelWrap;->images:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->images:Ljava/util/List;

    return-object v0
.end method
