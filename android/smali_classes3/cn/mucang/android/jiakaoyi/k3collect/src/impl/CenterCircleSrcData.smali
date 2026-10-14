.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public inLineInterval:I

.field public inLineWidth:I

.field public outLineWidth:I

.field public p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public shape:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/16 v0, 0xf

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    const/16 v0, 0x1e

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    const/4 v0, 0x7

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/16 v0, 0xf

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    const/16 v0, 0x1e

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/4 p1, 0x7

    .line 13
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;
    .locals 3

    :try_start_0
    const-string v0, "ref"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;-><init>()V

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

    const-string v1, "p1"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p2"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p3"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p4"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "shape"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const-string v1, "inLineWidth"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    const-string v1, "outLineWidth"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    const-string v1, "inLineInterval"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;
    .locals 4

    .line 13
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;-><init>()V

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 15
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 16
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    .line 19
    :goto_1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    .line 21
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    .line 22
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    goto :goto_3

    .line 23
    :cond_3
    :goto_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 24
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    .line 26
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 27
    :cond_5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_6

    .line 28
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    :cond_6
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 30
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    .line 31
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 32
    :cond_7
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    :cond_8
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    .line 33
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    if-gtz v0, :cond_9

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    :cond_9
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    .line 34
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    if-gtz p1, :cond_a

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    :cond_a
    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    :goto_3
    return-object p2
.end method

.method public isComplete()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v4, 0x3

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    .line 9
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    .line 10
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    if-ne p1, v3, :cond_0

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 13
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    return-object v0
.end method
