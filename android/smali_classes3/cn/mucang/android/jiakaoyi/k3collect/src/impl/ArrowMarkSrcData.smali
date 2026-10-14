.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public arrowType:I

.field public gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    const/4 p1, 0x6

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;
    .locals 3

    :try_start_0
    const-string v0, "ref"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;-><init>()V

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

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "gps2"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "arrowType"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;-><init>(I)V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;
    .locals 2

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;-><init>(I)V

    .line 8
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    :cond_1
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    return-object p2
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->ARROW_STRAIGHT:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

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

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->arrowType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 5
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    return-object v0
.end method
