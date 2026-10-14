.class public Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private examSiteId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->examSiteId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->type:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExamSiteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->examSiteId:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "examSiteId"

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->examSiteId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 5
    iget-object v2, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->type:I

    return v0
.end method

.method public parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    move-result-object v1

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;

    move-result-object v1

    goto :goto_1

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    move-result-object v1

    goto :goto_1

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    move-result-object v1

    goto :goto_1

    .line 9
    :pswitch_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;

    move-result-object v1

    goto :goto_1

    .line 10
    :pswitch_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    move-result-object v1

    goto :goto_1

    .line 11
    :pswitch_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    move-result-object v1

    goto :goto_1

    .line 12
    :pswitch_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v1

    goto :goto_1

    .line 13
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->parse(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_1

    .line 15
    iget-object v0, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setExamSiteId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->examSiteId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->type:I

    return-void
.end method
