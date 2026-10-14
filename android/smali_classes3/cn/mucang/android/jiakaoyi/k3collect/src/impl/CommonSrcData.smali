.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public color:I

.field public desc:Ljava/lang/String;

.field public interval:I

.field public length:I

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public points2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public shape:I

.field public width:I

.field public width2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    const/16 v0, 0xf

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    const/16 v0, 0xf

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 13
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 4

    const-string v0, "points2"

    :try_start_0
    const-string v1, "ref"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    const-string v2, "type"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const-string v2, "color"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    const-string v2, "width"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    const-string v2, "points"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const-string v2, "width2"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    const-string v2, "interval"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    const-string v2, "length"

    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    const-string v2, "shape"

    .line 13
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    const-string v2, "desc"

    .line 14
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public center()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 9
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    .line 15
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 2

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>(I)V

    .line 17
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 18
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 19
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 20
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 21
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 23
    :cond_0
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    if-eqz p2, :cond_1

    .line 24
    iget p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    .line 25
    iget p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    .line 26
    :cond_1
    iget p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 27
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    .line 28
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 29
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public isComplete()Z
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/16 v4, 0x13

    if-ne v0, v4, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v4, 0xd

    if-ne v0, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 4
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 5
    :cond_7
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    return v1
.end method

.method public isEmpty(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 3
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->desc:Ljava/lang/String;

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width2:I

    .line 9
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->interval:I

    .line 10
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->length:I

    .line 11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    return-object v0
.end method
