.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static teachDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->teachDataCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBanMaXianData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u901a\u8fc7\u4eba\u884c\u6a2a\u9053\u533a\u57df\uff0c\u8bf7\u5728\u4eba\u884c\u6a2a\u9053\u524d\u540e5\u7c73\u5185\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u505c\u8f66"

    const-string v6, "\u8bf7\u5239\u8f66\uff0c\u5728\u542c\u5230\u6709\u884c\u4eba\u901a\u8fc7\u4eba\u884c\u6a2a\u9053\u540e\u57285\u79d2\u5185\u505c\u8f66\uff0c\u505c\u8f66\u65f6\u95f45\u79d2"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createBianDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u53d8\u9053\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v12, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v11, 0x5

    const-string v13, "\u5f00\u542f\u8f6c\u5411\u706f"

    const-string v14, "\u4e0b\u9762\u5c06\u8fdb\u884c\u53d8\u9053\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    const/4 v15, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;

    const/4 v6, 0x2

    new-array v10, v6, [I

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v12, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    aput v12, v10, v4

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    aput v5, v10, v7

    const/4 v5, 0x3

    invoke-direct {v3, v10, v7, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;-><init>([IZII)V

    .line 7
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v10, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v12, "\u4e0b\u9762\u5c06\u8fdb\u884c\u53d8\u9053\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v7, v3, v10, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v10, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v10, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 10
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 11
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v8, "\u5411\u5de6\u53d8\u9053"

    const-string v9, "\u8bf7\u5f00\u59cb\u5411\u5de6\u53d8\u9053"

    invoke-direct {v1, v6, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v4, "\u5411\u53f3\u53d8\u9053"

    const-string v8, "\u8bf7\u5f00\u59cb\u5411\u53f3\u53d8\u9053"

    invoke-direct {v1, v5, v3, v4, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x6

    const-string v5, "\u53d8\u9053"

    const-string v7, "\u8bf7\u5f00\u59cb\u53d8\u9053"

    invoke-direct {v1, v4, v3, v5, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x4

    const-string v6, "\u56de\u6b63\u65b9\u5411"

    const-string v7, "\u53d8\u9053\u5b8c\u6210\uff0c\u8bf7\u56de\u6b63\u65b9\u5411"

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createBusStationData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u901a\u8fc7\u516c\u5171\u6c7d\u8f66\u7ad9\uff0c\u8bf7\u5728\u516c\u4ea4\u7ad9\u524d\u540e5m\u5185\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u505c\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u901a\u8fc7\u516c\u5171\u6c7d\u8f66\u7ad9\uff0c\u8bf7\u5239\u8f66\uff0c\u5728\u542c\u5230\u6709\u884c\u4eba\u901a\u8fc7\u516c\u5171\u6c7d\u8f66\u7ad9\u540e\u57285\u79d2\u5185\u505c\u8f66\uff0c\u505c\u8f66\u65f6\u95f45\u79d2"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createChaoCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8d85\u8f66\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u5411\u5de6\u53d8\u9053"

    const-string v9, "\u8bf7\u5f00\u59cb\u5411\u5de6\u53d8\u9053"

    invoke-direct {v1, v6, v3, v5, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x2

    const-string v12, "\u884c\u9a76\u6307\u5b9a\u7684\u8ddd\u79bb"

    const-string v13, "\u53d8\u9053\u5b8c\u6210\uff0c\u56de\u6b63\u65b9\u5411\uff0c\u7ee7\u7eed\u884c\u9a768\u7c73"

    const/4 v14, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    .line 8
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addErrorVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v4, 0x3251f

    .line 9
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x3

    const-string v5, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v9, "\u51c6\u5907\u8fd4\u56de\u539f\u8f66\u9053\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v4, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 12
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 13
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x4

    const-string v5, "\u5411\u53f3\u53d8\u9053"

    const-string v7, "\u8bf7\u5f00\u59cb\u5411\u53f3\u53d8\u9053"

    invoke-direct {v1, v4, v3, v5, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x5

    const-string v6, "\u56de\u6b63\u65b9\u5411"

    const-string v7, "\u53d8\u9053\u5b8c\u6210\uff0c\u8bf7\u56de\u6b63\u65b9\u5411"

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method public static createDefault()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createShangcheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createQiBuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createZhiXianData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createBianDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createChaoCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createHuiCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createLuKouZuoZhuanData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createLuKouYuoZhuanData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createDiaoTouData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createLuKouZhiXingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createJiaJianDangData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createBusStationData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createSchoolData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createBanMaXianData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createTingCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createJianSuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createXianSuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createSuiDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createGongQiaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createJiWanPoDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createLingTingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createRangXingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->createHuanDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 26
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static createDiaoTouData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u6389\u5934\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v6, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v10, "\u4e0b\u9762\u5c06\u8fdb\u884c\u6389\u5934\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v7, v3, v6, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v10, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v10, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 7
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 8
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v8, 0x2

    const-string v9, "\u5239\u8f66"

    const-string v10, "\u8bf7\u5728\u505c\u6b62\u7ebf\u524d\u8e29\u5239\u8f66"

    invoke-direct {v1, v8, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v8, 0x3

    const-string v10, "\u6302\u52301\u6321"

    const-string v11, "\u8bf7\u63021\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v7, v1

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v12, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v11, 0x4

    const-string v13, "\u6302\u52302\u6321"

    const-string v14, "\u8bf7\u63022\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x5

    const-string v8, "\u6389\u5934"

    const-string v9, "\u8bf7\u5728\u8def\u53e3\u5f00\u59cb\u6389\u5934\uff0c\u4fdd\u6301\u4f4e\u901f\uff0c\u6ce8\u610f\u7ea2\u7eff\u706f\u3001\u884c\u4eba"

    invoke-direct {v1, v7, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v8, 0x6

    const-string v10, "\u56de\u6b63\u65b9\u5411\u76d8"

    const-string v11, "\u8f6c\u5f2f\u5b8c\u6210\uff0c\u8bf7\u56de\u6b63\u65b9\u5411"

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v8, 0x7

    const-string v10, "\u5173\u95ed\u8f6c\u5411\u706f"

    const-string v11, "\u8bf7\u5173\u95ed\u8f6c\u5411\u706f"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 16
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v5, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 17
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v4, 0x8

    const-string v6, "\u505c\u8f66"

    const-string v7, "\u8bf7\u5728\u8def\u53e3\u505c\u8f66\u89c2\u5bdf\u7ea2\u7eff\u706f\u3001\u884c\u4eba\u3002"

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    .line 20
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createGongQiaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_GongQiao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u901a\u8fc7\u62f1\u6865\u9879\u76ee\uff0c\u8bf7\u8e29\u5239\u8f66\u51cf\u901f"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u6309\u5587\u53ed"

    const-string v6, "\u8bf7\u6309\u5587\u53ed"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createHuanDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuanDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u901a\u8fc7\u73af\u5c9b\u9879\u76ee\uff0c\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createHuiCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuiChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v2, 0x0

    const-string v4, "\u5239\u8f66"

    const-string v5, "\u4e0b\u9762\u5c06\u8fdb\u884c\u4f1a\u8f66\u9879\u76ee\uff0c\u8fdb\u5165\u9879\u76ee\u540e\u8bf7\u57285\u79d2\u5185\u8e29\u5239\u8f66"

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v7, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v4, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v3, 0x1

    const-string v5, "\u5411\u53f3\u504f\u79fb\uff0c\u4e0e\u8fb9\u7ebf\u4fdd\u6301\u8bbe\u7f6e\u7684\u8ddd\u79bb"

    const-string v6, "\u8f66\u8f86\u5411\u53f3\u504f\u79fb\uff0c\u572830m\u5185\u4fdd\u6301\u4e0e\u8fb9\u7ebf\u4e0d\u8d85\u8fc730\u5398\u7c73\u7684\u8ddd\u79bb"

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v3, 0x32911

    .line 4
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;-><init>(I)V

    const v3, 0x32903

    .line 5
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v4, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v3, 0x2

    const-string v5, "\u4fdd\u6301\u6b63\u5e38\u884c\u9a76"

    const-string v6, "\u8bf7\u4fdd\u6301\u6b63\u5e38\u884c\u9a76"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v3, 0x32908

    .line 8
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v2, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createJiWanPoDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiWanPoDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u901a\u8fc7\u6025\u5f2f\u5761\u8def\u9879\u76ee\uff0c\u8bf7\u8e29\u5239\u8f66\u51cf\u901f"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u6309\u5587\u53ed"

    const-string v6, "\u8bf7\u6309\u5587\u53ed"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createJiaJianDangData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v2, 0x0

    const-string v4, "1\u6321"

    const-string v5, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u76f4\u884c\u9879\u76ee\uff0c\u8bf7\u5c06\u6321\u4f4d\u6302\u52301\u6321"

    move-object v1, v7

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v7, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x1

    const-string v12, "2\u6321"

    const-string v13, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u76f4\u884c\u9879\u76ee\uff0c\u8bf7\u5c06\u6321\u4f4d\u6302\u52302\u6321"

    move-object v9, v1

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x2

    const-string v12, "3\u6321"

    const-string v13, "\u8bf7\u8f7b\u8e29\u6cb9\u95e8\u52a0\u901f\uff0c\u8e29\u79bb\u5408\uff0c\u5c06\u6321\u4f4d\u6302\u52303\u6321"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x3

    const-string v12, "4\u6321"

    const-string v13, "\u8bf7\u8f7b\u8e29\u6cb9\u95e8\u52a0\u901f\uff0c\u8e29\u79bb\u5408\uff0c\u5c06\u6321\u4f4d\u6302\u52304\u6321"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x4

    const-string v12, "5\u6321"

    const-string v13, "\u8bf7\u8f7b\u8e29\u6cb9\u95e8\u52a0\u901f\uff0c\u8e29\u79bb\u5408\uff0c\u5c06\u6321\u4f4d\u6302\u52305\u6321"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v2, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v3, 0x5

    const-string v4, "\u964d\u901f"

    const-string v5, "\u52a0\u51cf\u6863\u9879\u76ee\u5b8c\u6210\uff0c\u8bf7\u51cf\u901f"

    invoke-direct {v1, v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v2, v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createJianSuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u8bf7\u5728\u4eba\u884c\u6a2a\u9053\u524d\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createLingTingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u9760\u8fb9\u505c\u8f66\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013s\u4ee5\u4e0a\u51c6\u5907\u5411\u53f3\u505c\u9760"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u5411\u53f3\u505c\u9760"

    const-string v9, "\u5f00\u59cb\u5411\u53f3\u505c\u9760\uff0c\u6ce8\u610f\u89c2\u5bdf\u53f3\u540e\u89c6\u955c\u6709\u65e0\u8f66\u8f86\u4eba\u5458"

    invoke-direct {v1, v6, v3, v5, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;-><init>(I)V

    const v9, 0x34c40

    invoke-virtual {v3, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v9, "\u505c\u8f66"

    const-string v10, "\u8bf7\u51c6\u5907\u505c\u8f66"

    invoke-direct {v1, v5, v3, v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v10, 0x3

    const-string v12, "\u56de\u7a7a\u6321"

    const-string v13, "\u505c\u8f66\u5b8c\u6210\uff0c\u8bf7\u56de\u7a7a\u6321"

    move-object v9, v1

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v5, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v10, 0x4

    const-string v12, "\u56deP\u6321"

    const-string v13, "\u505c\u8f66\u5b8c\u6210\uff0c\u8bf7\u56deP\u6321"

    move-object v9, v1

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x5

    const-string v11, "\u62c9\u624b\u5239"

    const-string v12, "\u8bf7\u62c9\u624b\u5239"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    invoke-direct {v9, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x6

    const-string v11, "\u677e\u811a\u5239"

    const-string v12, "\u8bf7\u677e\u811a\u5239"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    invoke-direct {v9, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x7

    const-string v11, "\u89e3\u5b89\u5168\u5e26"

    const-string v12, "\u8bf7\u89e3\u5b89\u5168\u5e26"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;

    invoke-direct {v9, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v10, 0x8

    const-string v11, "\u7184\u706b"

    const-string v12, "\u8bf7\u7184\u706b"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;

    invoke-direct {v9, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v10, 0x9

    const-string v11, "\u5f00\u8f66\u95e8"

    const-string v12, "\u8bf7\u5f00\u8f66\u95e8"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;

    invoke-direct {v9, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v10, 0xa

    const-string v11, "\u8c03\u6574\u540e\u89c6\u955c"

    const-string v12, "\u8bf7\u8c03\u6574\u540e\u89c6\u955c"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-direct {v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;-><init>(I)V

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v10, 0xb

    const-string v11, "\u6253\u5f00\u5e94\u6025\u706f"

    const-string v12, "\u8bf7\u5f00\u542f\u5e94\u6025\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v10, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>()V

    const v10, 0x3639b

    .line 17
    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v11, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 18
    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v11, 0xc

    const-string v12, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v13, "\u51c6\u5907\u8d77\u6b65\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v11, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v11, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 21
    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v9, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 22
    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v13, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v12, 0xd

    const-string v14, "\u5173\u95ed\u5e94\u6025\u706f"

    const-string v15, "\u8d77\u6b65\u524d\u5173\u95ed\u5e94\u6025\u706f"

    const/16 v16, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v8, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v7, v8, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v14, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v13, 0xe

    const-string v15, "\u63021\u6321"

    const-string v16, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u79bb\u5408\u63021\u6321"

    const/16 v17, 0x1

    move-object v12, v1

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v14, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v13, 0xf

    const-string v15, "\u6302D\u6321"

    const-string v16, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u6302D\u6321"

    move-object v12, v1

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v8, 0x10

    const-string v10, "\u653e\u624b\u5239"

    const-string v11, "\u8bf7\u653e\u624b\u5239"

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    invoke-direct {v4, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v14, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v13, 0x11

    const-string v15, "\u8d77\u6b65"

    const-string v16, "\u8bf7\u6162\u62ac\u79bb\u5408\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v12, v1

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v14, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v13, 0x12

    const-string v15, "\u8d77\u6b65"

    const-string v16, "\u8bf7\u6162\u62ac\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v12, v1

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createLuKouYuoZhuanData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 17

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u53f3\u8f6c\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v6, "\u5239\u8f66"

    const-string v8, "\u8bf7\u5728\u505c\u6b62\u7ebf\u524d\u8e29\u5239\u8f66"

    invoke-direct {v1, v7, v3, v6, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v10, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v16, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v9, 0x2

    const-string v11, "\u6302\u52301\u6321"

    const-string v12, "\u8bf7\u63021\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v8, v1

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v13, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v12, 0x3

    const-string v14, "\u6302\u52302\u6321"

    const-string v15, "\u8bf7\u63022\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x4

    const-string v8, "\u53f3\u8f6c\u5f2f"

    const-string v9, "\u8bf7\u5728\u8def\u53e3\u5f00\u59cb\u53f3\u8f6c\uff0c\u4fdd\u6301\u4f4e\u901f\uff0c\u6ce8\u610f\u7ea2\u7eff\u706f\u3001\u884c\u4eba"

    invoke-direct {v1, v6, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x5

    const-string v9, "\u56de\u6b63\u65b9\u5411\u76d8"

    const-string v10, "\u8f6c\u5f2f\u5b8c\u6210\uff0c\u8bf7\u56de\u6b63\u65b9\u5411"

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x6

    const-string v9, "\u5173\u95ed\u8f6c\u5411\u706f"

    const-string v10, "\u9879\u76ee\u7ed3\u675f\u524d\u8bf7\u5173\u95ed\u8f6c\u5411\u706f"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createLuKouZhiXingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u76f4\u884c\u9879\u76ee\uff0c\u8bf7\u5728\u505c\u6b62\u7ebf\u524d\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u51cf\u901f\u5230\u6307\u5b9a\u901f\u5ea6"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u76f4\u884c\u9879\u76ee\uff0c\u8bf7\u5728\u505c\u6b62\u7ebf\u524d\u8e29\u5239\u8f66\u5e76\u51cf\u901f\u523020\u7801\u4ee5\u4e0b"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;-><init>()V

    const v4, 0x338a0

    .line 4
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x2

    const-string v5, "\u505c\u8f66"

    const-string v6, "\u8bf7\u5728\u8def\u53e3\u505c\u8f66\u89c2\u5bdf\u7ea2\u7eff\u706f\u3001\u884c\u4eba\u3002"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    .line 7
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v4, 0x3

    const-string v6, "\u8d77\u6b65"

    const-string v7, "\u8bf7\u6162\u62ac\u79bb\u5408\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    .line 10
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v4, 0x4

    const-string v6, "\u8d77\u6b65"

    const-string v7, "\u8bf7\u6162\u62ac\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    .line 13
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createLuKouZuoZhuanData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8def\u53e3\u5de6\u8f6c\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v6, "\u5239\u8f66"

    const-string v8, "\u8bf7\u5728\u505c\u6b62\u7ebf\u524d\u8e29\u5239\u8f66"

    invoke-direct {v1, v7, v3, v6, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    invoke-direct {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v14, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v7, 0x2

    const-string v9, "\u6302\u52301\u6321"

    const-string v10, "\u8bf7\u63021\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v6, v1

    move-object v11, v14

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x3

    const-string v12, "\u6302\u52302\u6321"

    const-string v13, "\u8bf7\u63022\u6321\u4f4e\u901f\u8f6c\u5f2f"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x4

    const-string v7, "\u5de6\u8f6c\u5f2f"

    const-string v8, "\u8bf7\u5728\u8def\u53e3\u5f00\u59cb\u5de6\u8f6c\uff0c\u4fdd\u6301\u4f4e\u901f\uff0c\u6ce8\u610f\u7ea2\u7eff\u706f\u3001\u884c\u4eba"

    invoke-direct {v1, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x5

    const-string v9, "\u56de\u6b63\u65b9\u5411\u76d8"

    const-string v10, "\u8f6c\u5f2f\u5b8c\u6210\uff0c\u8bf7\u56de\u6b63\u65b9\u5411"

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x6

    const-string v9, "\u5173\u95ed\u8f6c\u5411\u706f"

    const-string v10, "\u9879\u76ee\u7ed3\u675f\u524d\u8bf7\u5173\u95ed\u8f6c\u5411\u706f"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createQiBuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 21

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u8d77\u6b65\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v4, "\u6309\u5587\u53ed"

    const-string v6, "\u8bf7\u6309\u5587\u53ed\uff0c\u5c3d\u91cf\u6309\u957f\u4e00\u70b9\u65f6\u95f4\u54e6"

    invoke-direct {v1, v5, v3, v4, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v14, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v7, 0x2

    const-string v9, "\u63021\u6321"

    const-string v10, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u79bb\u5408\u63021\u6321"

    move-object v6, v1

    move-object v11, v14

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v8, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v20, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v7, 0x3

    const-string v9, "\u6302D\u6321"

    const-string v10, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u6302D\u6321"

    move-object v6, v1

    move-object/from16 v11, v20

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x4

    const-string v6, "\u653e\u624b\u5239"

    const-string v7, "\u8bf7\u653e\u624b\u5239"

    invoke-direct {v1, v4, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x5

    const-string v12, "\u8d77\u6b65"

    const-string v13, "\u8bf7\u6162\u62ac\u79bb\u5408\u5239\u8f66\u8d77\u6b65"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v16, 0x6

    const-string v18, "\u8d77\u6b65"

    const-string v19, "\u8bf7\u6162\u62ac\u5239\u8f66\u8d77\u6b65"

    move-object v15, v1

    move/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createRangXingData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 20

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_RangXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u505c\u8f66\u8ba9\u884c\u9879\u76ee\uff0c\u8bf7\u5239\u8f66\uff0c\u5728\u505c\u6b62\u7ebf\u524d\u505c\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u505c\u8f66\u5230\u8bbe\u7f6e\u7684\u65f6\u95f4"

    const-string v6, "\u8bf7\u505c\u8f66\u4fdd\u63015\u79d2"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>()V

    const v5, 0x36781

    .line 5
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x2

    const-string v6, "\u5f00\u542f\u5de6\u8f6c\u5411\u706f"

    const-string v7, "\u51c6\u5907\u8d77\u6b65\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u5de6\u8f6c\u5411\u706f\u4fdd\u63013\u79d2\u4ee5\u4e0a"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 8
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 9
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v6, 0x3

    const-string v8, "\u63021\u6321"

    const-string v9, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u79bb\u5408\u63021\u6321"

    move-object v5, v1

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v19, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v6, 0x4

    const-string v8, "\u6302D\u6321"

    const-string v9, "\u8bf7\u8e29\u4e0b\u5239\u8f66\u6302D\u6321"

    move-object v5, v1

    move-object/from16 v10, v19

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x5

    const-string v8, "\u653e\u624b\u5239"

    const-string v9, "\u8bf7\u653e\u624b\u5239"

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v10, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v9, 0x6

    const-string v11, "\u8d77\u6b65"

    const-string v12, "\u8bf7\u6162\u62ac\u79bb\u5408\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v15, 0x7

    const-string v17, "\u8d77\u6b65"

    const-string v18, "\u8bf7\u6162\u62ac\u5239\u8f66\u51c6\u5907\u8d77\u6b65"

    move-object v14, v1

    move/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createSchoolData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u901a\u8fc7\u5b66\u6821\u533a\u57df\uff0c\u8bf7\u5728\u5b66\u6821\u533a\u57df\u524d\u540e5\u7c73\u5185\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u505c\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u901a\u8fc7\u5b66\u6821\u533a\u57df\uff0c\u8bf7\u5239\u8f66\uff0c\u5728\u542c\u5230\u6709\u5b66\u751f\u901a\u8fc7\u5b66\u6821\u533a\u57df\u540e\u57285\u79d2\u5185\u505c\u8f66\uff0c\u505c\u8f66\u65f6\u95f45\u79d2"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x2

    const-string v6, "\u4fdd\u6301\u6b63\u5e38\u884c\u9a76"

    const-string v7, "\u8bf7\u4fdd\u6301\u6b63\u5e38\u884c\u9a76"

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v4, 0x3445e    # 3.00032E-40f

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createShangcheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u6309\u6307\u7eb9"

    const-string v6, "\u8bf7\u5f00\u59cb\u6307\u7eb9\u9a8c\u8bc1"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FingerPrintVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FingerPrintVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x1

    const-string v8, "\u6253\u5f00\u8f66\u95e8"

    const-string v9, "\u4e0b\u9762\u5c06\u8fdb\u884c\u4e0a\u8f66\u51c6\u5907\u64cd\u4f5c\uff0c\u5148\u4e0b\u8f66\u7ed5\u8f66\u4e00\u5468\u68c0\u67e5\u8f66\u8f86\u5916\u89c2\u53ca\u5b89\u5168\u72b6\u51b5\uff0c\u6253\u5f00\u8f66\u95e8\u89c2\u524d\u5bdf\u540e\u65b9\u4ea4\u901a\u60c5\u51b5"

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x2

    const-string v6, "\u6309\u7ed5\u8f661\uff08\u5de6\u524d\uff09\u6309\u94ae"

    const-string v7, "\u8bf7\u53bb\u8f66\u8f86\u5de6\u524d\u65b9\u6309\u4e0b\u6309\u94ae"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x3

    const-string v6, "\u6309\u7ed5\u8f662\uff08\u5de6\u540e\uff09\u6309\u94ae"

    const-string v7, "\u8bf7\u53bb\u8f66\u8f86\u5de6\u540e\u65b9\u6309\u4e0b\u6309\u94ae"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x4

    const-string v6, "\u6309\u7ed5\u8f663\uff08\u53f3\u540e\uff09\u6309\u94ae"

    const-string v7, "\u8bf7\u53bb\u8f66\u8f86\u53f3\u540e\u65b9\u6309\u4e0b\u6309\u94ae"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x5

    const-string v6, "\u6309\u7ed5\u8f664\uff08\u53f3\u524d\uff09\u6309\u94ae"

    const-string v7, "\u8bf7\u53bb\u8f66\u8f86\u53f3\u524d\u65b9\u6309\u4e0b\u6309\u94ae"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x6

    const-string v8, "\u5173\u95ed\u8f66\u95e8"

    const-string v9, "\u8bf7\u4e0a\u8f66\uff0c\u5173\u95ed\u8f66\u95e8"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v6, 0x7

    const-string v7, "\u6478\u4e09\u64781\uff08\u5185\u540e\u89c6\u955c\uff09"

    const-string v8, "\u4e0b\u9762\u5c06\u8fdb\u884c\u4e09\u6478\u64cd\u4f5c\uff0c\u8bf7\u6309\u5185\u540e\u89c6\u955c\u6309\u94ae"

    invoke-direct {v1, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0x8

    const-string v7, "\u6478\u4e09\u64782\uff08\u5916\u540e\u89c6\u955c\uff09"

    const-string v8, "\u8bf7\u6309\u5916\u540e\u89c6\u955c\u6309\u94ae"

    invoke-direct {v1, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0x9

    const-string v7, "\u6478\u4e09\u64783\uff08\u5ea7\u6905\u4e0b\uff09"

    const-string v8, "\u8bf7\u6309\u5ea7\u6905\u4e0b\u6309\u94ae"

    invoke-direct {v1, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0xa

    const-string v7, "\u7cfb\u5b89\u5168\u5e26"

    const-string v8, "\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26"

    invoke-direct {v1, v6, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0xb

    const-string v8, "\u5173\u95ed\u8fdc\u5149\u706f"

    const-string v9, "\u8bf7\u5173\u95ed\u8fdc\u5149\u706f"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0xc

    const-string v8, "\u542f\u52a8\u53d1\u52a8\u673a"

    const-string v9, "\u8bf7\u542f\u52a8\u53d1\u52a8\u673a"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createSuiDaoData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u901a\u8fc7\u96a7\u9053\u9879\u76ee\uff0c\u8bf7\u5728\u9879\u76ee\u5f00\u59cb\u540e5s\u5185\u8e29\u5239\u8f66"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v6, "\u6253\u5f00\u8fd1\u5149\u706f"

    const-string v7, "\u8fdb\u96a7\u9053\u9700\u8981\u6253\u5f00\u706f\u5149\u884c\u9a76\uff0c\u8bf7\u6253\u5f00\u8fd1\u5149\u706f"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v7, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x2

    const-string v7, "\u901f\u5ea6\u8981\u6c42"

    const-string v8, "\u8fdb\u96a7\u9053\u540e\uff0c\u8bf7\u4fdd\u6301\u4e00\u5b9a\u901f\u5ea6\u884c\u9a76\uff0c\u6700\u9ad8\u901f\u5ea6\u4e0d\u80fd\u8d85\u8fc740\u7801\uff0c\u4e5f\u4e0d\u80fd\u4f4e\u4e8e20\u7801\u901f\u5ea6"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v5, 0x357ec

    .line 5
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;-><init>()V

    const v5, 0x357e1

    .line 6
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedUpVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedUpVariable;-><init>()V

    const v5, 0x357e2

    .line 7
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x3

    const-string v7, "\u5173\u95ed\u8fd1\u5149\u706f"

    const-string v8, "\u51fa\u96a7\u9053\u540e\u8bf7\u5173\u95ed\u8fd1\u5149\u706f"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    iget v5, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createTingCheData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u5f00\u542f\u53f3\u8f6c\u5411\u706f"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u9760\u8fb9\u505c\u8f66\u9879\u76ee\uff0c\u73b0\u5728\u8bf7\u5f00\u542f\u53f3\u8f6c\u5411\u706f\u4fdd\u63013s\u4ee5\u4e0a\u51c6\u5907\u5411\u53f3\u505c\u9760"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    .line 3
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-direct {v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;-><init>(D)V

    .line 4
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v5, "\u5411\u53f3\u505c\u9760"

    const-string v7, "\u5f00\u59cb\u5411\u53f3\u505c\u9760\uff0c\u6ce8\u610f\u89c2\u5bdf\u53f3\u540e\u89c6\u955c\u6709\u65e0\u8f66\u8f86\u4eba\u5458"

    invoke-direct {v1, v6, v3, v5, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;-><init>(I)V

    const v7, 0x34c40

    invoke-virtual {v3, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v7, "\u505c\u8f66"

    const-string v8, "\u8bf7\u51c6\u5907\u505c\u8f66"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;-><init>()V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->manual:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v8, 0x3

    const-string v10, "\u56de\u7a7a\u6321"

    const-string v11, "\u505c\u8f66\u5b8c\u6210\uff0c\u8bf7\u56de\u7a7a\u6321"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v9, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->auto:Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    const/4 v8, 0x4

    const-string v10, "\u56deP\u6321"

    const-string v11, "\u505c\u8f66\u5b8c\u6210\uff0c\u8bf7\u56deP\u6321"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x5

    const-string v7, "\u62c9\u624b\u5239"

    const-string v8, "\u8bf7\u62c9\u624b\u5239"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x6

    const-string v7, "\u677e\u811a\u5239"

    const-string v8, "\u8bf7\u677e\u811a\u5239"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v5, 0x7

    const-string v7, "\u89e3\u5b89\u5168\u5e26"

    const-string v8, "\u8bf7\u89e3\u5b89\u5168\u5e26"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v5, 0x8

    const-string v7, "\u7184\u706b"

    const-string v8, "\u8bf7\u7184\u706b"

    invoke-direct {v1, v5, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;

    invoke-direct {v3, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v5, 0x9

    const-string v6, "\u5f00\u8f66\u95e8"

    const-string v7, "\u8bf7\u5f00\u8f66\u95e8"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v5, 0xa

    const-string v6, "\u8c03\u6574\u540e\u89c6\u955c"

    const-string v7, "\u8bf7\u8c03\u6574\u540e\u89c6\u955c"

    invoke-direct {v1, v5, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/16 v6, 0xb

    const-string v8, "\u5173\u95ed\u706f\u5149"

    const-string v9, "\u8bf7\u5173\u95ed\u706f\u5149"

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createXianSuData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_XianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u9650\u901f"

    const-string v6, "\u8bf7\u4fdd\u630120\u7801\u4ee5\u4e0b\u884c\u9a76"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;-><init>()V

    const v4, 0x353f7

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static createZhiXianData()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x0

    const-string v5, "\u52a0\u901f\u5230\u6307\u5b9a\u901f\u5ea6"

    const-string v6, "\u4e0b\u9762\u5c06\u8fdb\u884c\u76f4\u884c\u884c\u9a76\u9879\u76ee\uff0c\u8bf7\u4fdd\u8bc1\u8f66\u8f86\u4fdd\u6301\u76f4\u7ebf\u884c\u9a76\uff0c\u4e14\u901f\u5ea6\u52a0\u901f\u523030\u7801\u4ee5\u4e0a\uff0c\u6ce8\u610f\u5b89\u5168"

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedUpVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedUpVariable;-><init>()V

    const v4, 0x31d4a

    .line 3
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;-><init>()V

    const v4, 0x31d4e

    .line 4
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;-><init>()V

    const v4, 0x31d48

    .line 5
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addErrorVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;-><init>(I)V

    const v4, 0x31d47

    .line 6
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->addRuleCode(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->addErrorVariable(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-object v1
.end method

.method private static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "K3_Teach_Data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalTeachData(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->teachDataCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    const-class v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->teachDataCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->teachDataCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static saveTeachDataToLocal(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->teachDataCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
