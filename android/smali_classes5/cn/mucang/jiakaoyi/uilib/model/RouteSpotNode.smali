.class public final Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\t\n\u0002\u0008\u0017\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R\u001a\u0010-\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0015\"\u0004\u0008/\u0010\u0017R\u001a\u00100\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0015\"\u0004\u00082\u0010\u0017R\u001a\u00103\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\'\"\u0004\u00085\u0010)R\u001a\u00106\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010<\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\'\"\u0004\u0008>\u0010)R\u001e\u0010?\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008G\u0010\u0008R\u001a\u0010H\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u000c\"\u0004\u0008J\u0010\u000eR\u001a\u0010K\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010!\"\u0004\u0008M\u0010#R\"\u0010N\u001a\n\u0012\u0004\u0012\u00020P\u0018\u00010OX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010!\"\u0004\u0008W\u0010#R\u001c\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u0006\"\u0004\u0008Z\u0010\u0008\u00a8\u0006["
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Ljava/io/Serializable;",
        "()V",
        "alias",
        "",
        "getAlias",
        "()Ljava/lang/String;",
        "setAlias",
        "(Ljava/lang/String;)V",
        "bearing",
        "",
        "getBearing",
        "()F",
        "setBearing",
        "(F)V",
        "brakeBearing",
        "getBrakeBearing",
        "setBrakeBearing",
        "brakeDistance",
        "",
        "getBrakeDistance",
        "()D",
        "setBrakeDistance",
        "(D)V",
        "brakeLat",
        "getBrakeLat",
        "setBrakeLat",
        "brakeLon",
        "getBrakeLon",
        "setBrakeLon",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "judgeBrake",
        "",
        "getJudgeBrake",
        "()Z",
        "setJudgeBrake",
        "(Z)V",
        "judgeTurnLight",
        "getJudgeTurnLight",
        "setJudgeTurnLight",
        "lat",
        "getLat",
        "setLat",
        "lon",
        "getLon",
        "setLon",
        "manualTrigger",
        "getManualTrigger",
        "setManualTrigger",
        "orderId",
        "",
        "getOrderId",
        "()J",
        "setOrderId",
        "(J)V",
        "playStartVoice",
        "getPlayStartVoice",
        "setPlayStartVoice",
        "randomGroup",
        "getRandomGroup",
        "()Ljava/lang/Integer;",
        "setRandomGroup",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "startVoice",
        "getStartVoice",
        "setStartVoice",
        "stepDistance",
        "getStepDistance",
        "setStepDistance",
        "stepId",
        "getStepId",
        "setStepId",
        "teachGpsList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "getTeachGpsList",
        "()Ljava/util/List;",
        "setTeachGpsList",
        "(Ljava/util/List;)V",
        "teachNum",
        "getTeachNum",
        "setTeachNum",
        "uid",
        "getUid",
        "setUid",
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
.field private alias:Ljava/lang/String;

.field private bearing:F

.field private brakeBearing:F

.field private brakeDistance:D

.field private brakeLat:D

.field private brakeLon:D

.field private id:I

.field private judgeBrake:Z

.field private judgeTurnLight:Z

.field private lat:D

.field private lon:D

.field private manualTrigger:Z

.field private orderId:J

.field private playStartVoice:Z

.field private randomGroup:Ljava/lang/Integer;

.field private startVoice:Ljava/lang/String;

.field private stepDistance:F

.field private stepId:I

.field private teachGpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;"
        }
    .end annotation
.end field

.field private teachNum:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final getBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->bearing:F

    return v0
.end method

.method public final getBrakeBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeBearing:F

    return v0
.end method

.method public final getBrakeDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeDistance:D

    return-wide v0
.end method

.method public final getBrakeLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeLat:D

    return-wide v0
.end method

.method public final getBrakeLon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeLon:D

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->id:I

    return v0
.end method

.method public final getJudgeBrake()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->judgeBrake:Z

    return v0
.end method

.method public final getJudgeTurnLight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->judgeTurnLight:Z

    return v0
.end method

.method public final getLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->lat:D

    return-wide v0
.end method

.method public final getLon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->lon:D

    return-wide v0
.end method

.method public final getManualTrigger()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->manualTrigger:Z

    return v0
.end method

.method public final getOrderId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->orderId:J

    return-wide v0
.end method

.method public final getPlayStartVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->playStartVoice:Z

    return v0
.end method

.method public final getRandomGroup()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->randomGroup:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->startVoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getStepDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->stepDistance:F

    return v0
.end method

.method public final getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->stepId:I

    return v0
.end method

.method public final getTeachGpsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->teachGpsList:Ljava/util/List;

    return-object v0
.end method

.method public final getTeachNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->teachNum:I

    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->alias:Ljava/lang/String;

    return-void
.end method

.method public final setBearing(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->bearing:F

    return-void
.end method

.method public final setBrakeBearing(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeBearing:F

    return-void
.end method

.method public final setBrakeDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeDistance:D

    return-void
.end method

.method public final setBrakeLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeLat:D

    return-void
.end method

.method public final setBrakeLon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->brakeLon:D

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->id:I

    return-void
.end method

.method public final setJudgeBrake(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->judgeBrake:Z

    return-void
.end method

.method public final setJudgeTurnLight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->judgeTurnLight:Z

    return-void
.end method

.method public final setLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->lat:D

    return-void
.end method

.method public final setLon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->lon:D

    return-void
.end method

.method public final setManualTrigger(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->manualTrigger:Z

    return-void
.end method

.method public final setOrderId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->orderId:J

    return-void
.end method

.method public final setPlayStartVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->playStartVoice:Z

    return-void
.end method

.method public final setRandomGroup(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->randomGroup:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartVoice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->startVoice:Ljava/lang/String;

    return-void
.end method

.method public final setStepDistance(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->stepDistance:F

    return-void
.end method

.method public final setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->stepId:I

    return-void
.end method

.method public final setTeachGpsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->teachGpsList:Ljava/util/List;

    return-void
.end method

.method public final setTeachNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->teachNum:I

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->uid:Ljava/lang/String;

    return-void
.end method
