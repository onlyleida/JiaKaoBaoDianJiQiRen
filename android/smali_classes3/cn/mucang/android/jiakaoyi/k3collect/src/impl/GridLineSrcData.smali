.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public gridLineInterval:I

.field public gridLineWidth:I

.field public lineWidth:I

.field public p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    const/16 v0, 0x96

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    const/16 v0, 0x8

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const/16 v0, 0x14

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    const/16 v0, 0x96

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    const/16 v0, 0x8

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    .line 12
    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    .line 13
    iput p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;
    .locals 3

    :try_start_0
    const-string v0, "ref"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;-><init>()V

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

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p2"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p3"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "p4"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "lineWidth"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    const-string v1, "gridLineInterval"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    const-string v1, "gridLineWidth"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;
    .locals 2

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;-><init>()V

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 14
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 22
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 24
    :cond_3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    :cond_4
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    .line 25
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    if-gtz v0, :cond_5

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    :cond_5
    iput v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    .line 26
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    if-gtz p1, :cond_6

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    :cond_6
    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    goto :goto_0

    .line 27
    :cond_7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    .line 28
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    .line 29
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    iput p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    :goto_0
    return-object p2
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    .line 9
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    return-object v0
.end method
