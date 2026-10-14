.class public Lcn/mucang/jiakaoyi/uilib/model/RouteNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


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

.field private manualTrigger:Ljava/lang/Boolean;

.field private orderId:J

.field private playStartVoice:Z

.field private randomGroup:Ljava/lang/Integer;

.field private startVoice:Ljava/lang/String;

.field private stepDistance:F

.field private stepId:I

.field private teachNodes:Ljava/util/List;
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
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->playStartVoice:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeTurnLight:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeBrake:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepDistance:F

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->bearing:F

    return v0
.end method

.method public getBrakeBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeBearing:F

    return v0
.end method

.method public getBrakeDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeDistance:D

    return-wide v0
.end method

.method public getBrakeLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLat:D

    return-wide v0
.end method

.method public getBrakeLon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLon:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->id:I

    return v0
.end method

.method public getLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lon:D

    return-wide v0
.end method

.method public getManualTrigger()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->manualTrigger:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOrderId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->orderId:J

    return-wide v0
.end method

.method public getRandomGroup()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->randomGroup:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->startVoice:Ljava/lang/String;

    return-object v0
.end method

.method public getStepDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepDistance:F

    return v0
.end method

.method public getStepId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepId:I

    return v0
.end method

.method public getTeachNodes()Ljava/util/List;
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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->teachNodes:Ljava/util/List;

    return-object v0
.end method

.method public getTeachNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->teachNum:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isJudgeBrake()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeBrake:Z

    return v0
.end method

.method public isJudgeTurnLight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeTurnLight:Z

    return v0
.end method

.method public isPlayStartVoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->playStartVoice:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->alias:Ljava/lang/String;

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->bearing:F

    return-void
.end method

.method public setBrakeBearing(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeBearing:F

    return-void
.end method

.method public setBrakeDistance(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeDistance:D

    return-void
.end method

.method public setBrakeLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLat:D

    return-void
.end method

.method public setBrakeLon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLon:D

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->id:I

    return-void
.end method

.method public setJudgeBrake(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeBrake:Z

    return-void
.end method

.method public setJudgeTurnLight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeTurnLight:Z

    return-void
.end method

.method public setLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lat:D

    return-void
.end method

.method public setLon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lon:D

    return-void
.end method

.method public setManualTrigger(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->manualTrigger:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrderId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->orderId:J

    return-void
.end method

.method public setPlayStartVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->playStartVoice:Z

    return-void
.end method

.method public setRandomGroup(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->randomGroup:Ljava/lang/Integer;

    return-void
.end method

.method public setStartVoice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->startVoice:Ljava/lang/String;

    return-void
.end method

.method public setStepDistance(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepDistance:F

    return-void
.end method

.method public setStepId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepId:I

    return-void
.end method

.method public setTeachNodes(Ljava/util/List;)V
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
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->teachNodes:Ljava/util/List;

    return-void
.end method

.method public setTeachNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->teachNum:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteNode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->bearing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeBearing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->brakeDistance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->playStartVoice:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeTurnLight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->judgeBrake:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->stepDistance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->orderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->startVoice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->teachNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->randomGroup:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
