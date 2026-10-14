.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public enterType:I

.field public gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public lineColor:I

.field public lineWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const v0, -0xffff01

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    const/16 v0, 0xf

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    const/16 v0, 0xb

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const v0, -0xffff01

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    const/16 v0, 0xf

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    const/16 p1, 0xb

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;
    .locals 3

    :try_start_0
    const-string v0, "ref"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;-><init>()V

    const-string v1, "id"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v1, "type"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const-string v1, "gps1"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "gps2"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "enterType"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    const v0, -0xffff01

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    const/16 v0, 0xf

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public center()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;-><init>()V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    .line 8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    .line 9
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;
    .locals 3

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;-><init>()V

    .line 11
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    const v0, -0xffff01

    .line 19
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    .line 20
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    return-object p2
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_TURN_LEFT_RIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 6
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    const p1, -0xffff01

    .line 7
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    return-object v0
.end method
