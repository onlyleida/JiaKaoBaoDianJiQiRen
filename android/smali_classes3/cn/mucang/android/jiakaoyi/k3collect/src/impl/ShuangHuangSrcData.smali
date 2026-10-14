.class public Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;
.super Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
.source "SourceFile"


# instance fields
.field public curveList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public curveList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public isCurve:Z

.field public isDashed:Z

.field public line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public lineColor:I

.field public lineWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const/16 v0, 0xf

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    const/16 v0, -0x20bd

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;-><init>()V

    const/16 v0, 0xf

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    const/16 v0, -0x20bd

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 10
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    .line 11
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;
    .locals 3

    :try_start_0
    const-string v0, "ref"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>()V

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

    const-string v1, "lineWidth"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    const-string v1, "lineColor"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    const-string v1, "isDashed"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    const-string v1, "isCurve"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    const-string v1, "line1Start"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "line1End"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "line2Start"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "line2End"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->b(Lorg/json/JSONObject;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v1, "curveList1"

    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    const-string v1, "curveList2"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    const/16 v0, -0x20bd

    .line 17
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    .line 15
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    .line 16
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    return-object v0
.end method

.method public bridge synthetic copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Z)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;
    .locals 7

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;-><init>()V

    .line 18
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 19
    iget v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 20
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_1

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    .line 21
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 22
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 24
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->b(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 26
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 27
    :goto_2
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 28
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 29
    :cond_5
    :goto_3
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 31
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x1

    .line 32
    :cond_6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    .line 33
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 34
    :cond_7
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz v1, :cond_8

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    :cond_8
    const/16 v1, -0x20bd

    .line 37
    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    .line 38
    iput-boolean p2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    if-eqz v2, :cond_a

    .line 39
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    if-gtz p1, :cond_9

    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    :cond_9
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    goto :goto_4

    .line 40
    :cond_a
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    :goto_4
    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public transform(I)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    :cond_2
    :goto_0
    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    .line 13
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    .line 14
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz p1, :cond_3

    .line 15
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CURVE:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    goto :goto_1

    .line 16
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->STRAIGHT_LINE:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result p1

    iput p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 17
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    return-object v0
.end method
