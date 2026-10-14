.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00152\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001cJ\u001e\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\n2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001cJ\"\u0010#\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00152\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\t\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;",
        "",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "ruleConfigs",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
        "clearExamSiteConfig",
        "",
        "siteId",
        "",
        "findOrderByName",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "name",
        "",
        "orderItems",
        "",
        "getKey",
        "getSiteOrderConfig",
        "getStartVoice",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
        "cityCode",
        "stepType",
        "",
        "getStartVoiceCode",
        "saveSiteOrderConfig",
        "orders",
        "syncK3OrderData",
        "examSiteId",
        "displayStatus",
        "updateRouteData",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->b:Lkotlin/f;

    return-void
.end method

.method private final a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final b(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "exam_site_order_"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(JLjava/lang/String;I)Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    const-string v0, "cityCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->a:Ljava/util/List;

    if-nez p3, :cond_0

    .line 2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/m/b;->l(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->a:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 5
    invoke-virtual {p0, p4}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->d(I)I

    move-result p3

    if-eqz p3, :cond_2

    .line 6
    iget v0, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    if-ne v0, p3, :cond_2

    .line 7
    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_0

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_1

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_2

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_3

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuiChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_4

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_5

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 7
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_6

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 8
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_7

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 9
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_8

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZhiXingStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 10
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_9

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 11
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_a

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 12
    :cond_a
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_b

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 13
    :cond_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_c

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 14
    :cond_c
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_d

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->startVoice:I

    goto/16 :goto_0

    .line 15
    :cond_d
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_e

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JianSuStepConfig;->startVoice:I

    goto :goto_0

    .line 16
    :cond_e
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_XianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_f

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3XianSuStepConfig;->startVoice:I

    goto :goto_0

    .line 17
    :cond_f
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_10

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SuiDaoStepConfig;->startVoice:I

    goto :goto_0

    .line 18
    :cond_10
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_GongQiao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_11

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->startVoice:I

    goto :goto_0

    .line 19
    :cond_11
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiWanPoDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_12

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;->startVoice:I

    goto :goto_0

    .line 20
    :cond_12
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_13

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;->startVoice:I

    goto :goto_0

    .line 21
    :cond_13
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_RangXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_14

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;->startVoice:I

    goto :goto_0

    .line 22
    :cond_14
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuanDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_15

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->startVoice:I

    goto :goto_0

    .line 23
    :cond_15
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_16

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JinTingStepConfig;->startVoice:I

    goto :goto_0

    .line 24
    :cond_16
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDaoChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_17

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->startVoice:I

    goto :goto_0

    .line 25
    :cond_17
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TeShuQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v0, :cond_18

    sget p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;->startVoice:I

    goto :goto_0

    :cond_18
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->b(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->b(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final f(JI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;->p(JI)Ljava/util/List;

    move-result-object p3

    const-string v0, "\u7ebf\u4e0a\u7528\u6237\u7684\u6307\u4ee4\u6570\u636e\uff1a "

    .line 2
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 5
    iget-wide v3, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 6
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/g;->e(J)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    const/16 v1, 0xa

    if-lez v2, :cond_6

    if-nez v0, :cond_4

    const/4 p3, 0x0

    goto :goto_3

    .line 8
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    .line 11
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    invoke-direct {v3, v2}, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {p3}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    goto :goto_3

    .line 13
    :cond_6
    invoke-static {p3}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    .line 14
    :goto_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    if-nez p3, :cond_8

    goto :goto_6

    .line 15
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p3, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 18
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    const-string v5, "examSite.cityCode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-virtual {p0, p1, p2, v4, v5}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->c(JLjava/lang/String;I)Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    move-object v5, v4

    .line 19
    :goto_5
    iput-object v5, v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    .line 20
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    :goto_6
    if-nez p3, :cond_c

    goto :goto_7

    .line 21
    :cond_c
    :try_start_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;->o(JLjava/util/List;)Ljava/util/List;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_d
    :goto_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->e(JLjava/util/List;)V

    return-object p3

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u540c\u6b65\u6307\u4ee4\u65f6\u67e5\u8be2\u6307\u4ee4\u5931\u8d25 "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    const-string p2, "\u540c\u6b65\u6307\u4ee4\u65f6\u67e5\u8be2\u6307\u4ee4\u5931\u8d25"

    :cond_e
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 27
    throw p1
.end method
