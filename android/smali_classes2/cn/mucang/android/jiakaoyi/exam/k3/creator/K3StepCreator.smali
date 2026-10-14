.class public Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c$a;


# instance fields
.field protected final teachDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->teachDataMap:Ljava/util/Map;

    return-void
.end method

.method public static createByStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;",
            ")",
            "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator$1;->$SwitchMap$cn$mucang$android$jiakaoyi$engine$model$Step:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TeShuQuYuStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TeShuQuYuStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;)V

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/XianSuStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3XianSuStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/XianSuStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3XianSuStepConfig;)V

    return-object p0

    .line 5
    :pswitch_3
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/SuiDaoStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SuiDaoStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/SuiDaoStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SuiDaoStepConfig;)V

    return-object p0

    .line 6
    :pswitch_4
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;)V

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JinTingStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JinTingStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JinTingStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JinTingStepConfig;)V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JianSuStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JianSuStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JianSuStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JianSuStepConfig;)V

    return-object p0

    .line 9
    :pswitch_7
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;)V

    return-object p0

    .line 10
    :pswitch_8
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GongQiaoStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/GongQiaoStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;)V

    return-object p0

    .line 11
    :pswitch_9
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BusStationStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/BusStationStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;)V

    return-object p0

    .line 12
    :pswitch_a
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BanMaXianStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/BanMaXianStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;)V

    return-object p0

    .line 13
    :pswitch_b
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;)V

    return-object p0

    .line 14
    :pswitch_c
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;)V

    return-object p0

    .line 15
    :pswitch_d
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;)V

    return-object p0

    .line 16
    :pswitch_e
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;)V

    return-object p0

    .line 17
    :pswitch_f
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;)V

    return-object p0

    .line 18
    :pswitch_10
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/SchoolStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/SchoolStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;)V

    return-object p0

    .line 19
    :pswitch_11
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;)V

    return-object p0

    .line 20
    :pswitch_12
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/QiBuStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/QiBuStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;)V

    return-object p0

    .line 21
    :pswitch_13
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LuKouZhiXingStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZhiXingStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/LuKouZhiXingStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZhiXingStepConfig;)V

    return-object p0

    .line 22
    :pswitch_14
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;)V

    return-object p0

    .line 23
    :pswitch_15
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V

    return-object p0

    .line 24
    :pswitch_16
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;)V

    return-object p0

    .line 25
    :pswitch_17
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;)V

    return-object p0

    .line 26
    :pswitch_18
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;)V

    return-object p0

    .line 27
    :pswitch_19
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;)V

    return-object p0

    .line 28
    :pswitch_1a
    new-instance p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endEvent(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private fixedEvents(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v2, "TAG"

    const-string v3, ","

    const-string v4, "\u56fa\u5b9a\u6263\u5206\u52a0\u8f7d\u5931\u8d25:"

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object v5

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "K3_"

    const-string v8, ""

    .line 5
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8
    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz v9, :cond_1

    .line 9
    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->notAuto()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cn.mucang.android.jiakaoyi.exam.k3.rule."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_Event"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 13
    array-length v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x2

    if-ge v13, v11, :cond_4

    aget-object v15, v0, v13

    .line 14
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 15
    array-length v10, v10

    if-ne v10, v14, :cond_3

    move-object v10, v15

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_5

    new-array v0, v14, [Ljava/lang/Object;

    .line 16
    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    aput-object v11, v0, v12

    const/4 v11, 0x1

    aput-object v9, v0, v11

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:deduct = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " , Constructor = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u56fa\u5b9a\u4e8b\u4ef6\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    return-object v5
.end method

.method private orderEvents(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "K3_"

    const-string v3, ""

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cn.mucang.android.jiakaoyi.exam.k3.rule."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Step"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    .line 8
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v9, v7, :cond_1

    aget-object v11, v5, v9

    .line 9
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 10
    array-length v12, v12

    if-ne v12, v10, :cond_0

    move-object v6, v11

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    new-array v5, v10, [Ljava/lang/Object;

    .line 11
    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    aput-object v7, v5, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-Step-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->empty(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u987a\u5e8f\u4e8b\u4ef6\u6784\u9020\u5931\u8d25:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v4, v3, :cond_4

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u987a\u5e8f\u6263\u5206\u52a0\u8f7d\u5931\u8d25:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method private startEvent(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cn.mucang.android.jiakaoyi.exam.k3.starter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Starter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    .line 5
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 6
    array-length v7, v7

    if-ne v7, v5, :cond_0

    move-object v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p3, v0, v3

    const-string p3, "\u5f00\u59cb"

    .line 7
    invoke-static {p3, p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->empty(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--\u5f00\u59cb\u4e8b\u4ef6\u6784\u9020\u5931\u8d25:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TAG"

    invoke-static {p3, p2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5f00\u59cb\u4e8b\u4ef6\u52a0\u8f7d\u5931\u8d25:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;-><init>()V

    return-object p1
.end method


# virtual methods
.method public createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 9

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->needStepHandler()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->a:Landroid/location/Location;

    .line 4
    invoke-static {v1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->createByStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->teachDataMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 6
    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->m:I

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getTeachStepKey(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 10
    iget v5, v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->gearType:I

    if-eqz v5, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->a()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 11
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachDataList:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    iput-object v0, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachResultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8def\u7ebf\u70b9 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u7b2c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a\u9879\u76ee\u6ca1\u6709\u627e\u5230\u5e8f\u53f7\u4e3a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u627e\u4e0d\u5230\u4efb\u4f55\u6559\u5b66\u6570\u636e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    :cond_5
    :goto_1
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    .line 16
    invoke-direct {p0, v1, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->startEvent(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    move-result-object v4

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    .line 17
    invoke-direct {p0, v1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->endEvent(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    move-result-object v5

    .line 18
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->orderEvents(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v6

    .line 19
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->fixedEvents(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method
