.class public Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExamDataCreator"


# instance fields
.field private final cityCode:Ljava/lang/String;

.field private final engineType:I

.field private final examSiteId:J

.field private final localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

.field private randomCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private randomRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private routeConfig:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

.field private final stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private steps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private teachDataMap:Ljava/util/Map;
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

.field private final teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILcn/mucang/jiakaoyi/uilib/model/LocalRoute;Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachDataMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomRecordMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomCountMap:Ljava/util/Map;

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->cityCode:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->engineType:I

    .line 8
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 9
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachDataMap:Ljava/util/Map;

    .line 11
    :cond_0
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomRecordMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomCountMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u542f\u7528\u7684\u8bed\u97f3\u5305\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bed\u97f3\u5305\u5185\u5bb9\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static createSteps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/g;->c(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getConfigs(JLjava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getConfigs(JLjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getConfigs(JLjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">;"
        }
    .end annotation

    const-class p2, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    monitor-enter p2

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BanMaXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDaoChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BusStation:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BusStationStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_GongQiao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuanDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuiChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JianSuStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JianSuStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JinTingStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JinTingStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiWanPoDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZhiXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZhiXingStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZhiXingStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_RangXing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SuiDaoStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SuiDaoStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_XianSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3XianSuStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3XianSuStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_School:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TeShuQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TeShuQuYuStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {p0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->l(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/config/a;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 33
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/config/a;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    .line 34
    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 35
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataCreator;->getLocalTeachData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 37
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 38
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator$1;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    .line 39
    :goto_1
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 40
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 41
    iput v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    .line 42
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->parseVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    .line 44
    :cond_1
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    if-nez v4, :cond_2

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->parseVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    .line 46
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->setRuleConfigValue(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    :cond_3
    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    .line 48
    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getTeachStepKey(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "\u8003\u8bd5\u5f15\u64ce\u89e3\u6790\u8003\u8bd5\u6570\u636e\u51fa\u9519"

    .line 50
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_4
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public static getTeachStepKey(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 16

    move-object/from16 v1, p1

    const-string v2, "TAG"

    const-string v3, ","

    const-string v4, "\u5168\u5c40\u6263\u5206\u52a0\u8f7d\u5931\u8d25:"

    .line 1
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "K3_"

    const-string v7, ""

    .line 4
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7
    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz v9, :cond_0

    .line 8
    iget-object v10, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->notAuto()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cn.mucang.android.jiakaoyi.exam.k3.rule."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_Event"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 12
    array-length v10, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x2

    if-ge v13, v10, :cond_3

    aget-object v15, v0, v13

    .line 13
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 14
    array-length v8, v8

    if-ne v8, v14, :cond_2

    move-object v8, v15

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    new-array v0, v14, [Ljava/lang/Object;

    .line 15
    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    aput-object v10, v0, v11

    const/4 v10, 0x1

    aput-object v9, v0, v10

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:deduct = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " , Constructor = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 22
    :cond_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v7, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v2, 0x0

    invoke-direct {v7, v6, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    invoke-static {v6, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;->createByStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    move-result-object v8

    new-instance v9, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;-><init>()V

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public getEngineType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->engineType:I

    return v0
.end method

.method public getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->routeConfig:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;-><init>()V

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->examSiteId:J

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->routeId:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->routeName:Ljava/lang/String;

    .line 9
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    .line 10
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->a()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f15\u64ce\u52a0\u8f7d\u8003\u573a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\u7684\u6263\u5206\u6570\u636e"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    invoke-static {v7, v8, v1}, Lcn/mucang/jiakaoyi/uilib/m/a;->g(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v1

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53cd\u5c04--\u4ece\u6570\u636e\u5e93\u83b7\u53d6\u6263\u5206\u9879\u7684\u65f6\u95f4\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , isCommonSite:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    const-wide/16 v7, -0x3e7

    cmp-long v9, v3, v7

    if-nez v9, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v4, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 17
    iget-object v7, v5, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_3

    .line 18
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v8, v5, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    iget v8, v5, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\u7684\u89c4\u5219\u6570\u636e"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->examSiteId:J

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->cityCode:Ljava/lang/String;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachDataMap:Ljava/util/Map;

    invoke-static {v5, v6, v1, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getConfigs(JLjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53cd\u5c04--\u4ece\u6570\u636e\u5e93\u83b7\u53d6\u6263\u5206\u914d\u7f6e\u7684\u65f6\u95f4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 26
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;-><init>()V

    .line 27
    iput-object v4, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 28
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    if-nez v6, :cond_5

    goto :goto_2

    .line 29
    :cond_5
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_6

    .line 30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 31
    :cond_6
    iput-object v6, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    .line 32
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33
    :cond_7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->routeConfig:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    return-object v0
.end method

.method public stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->engineType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->teachDataMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Ljava/util/Map;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3StepCreator;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Ljava/util/Map;)V

    return-object v0
.end method

.method public stepList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->stepListGetter:Lcn/mucang/android/jiakaoyi/framework/h/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->localRoute:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->parseStartPos(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/StepInfoParseUtil;->getEmptyStepInfo(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 11
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->n:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->n:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->n:Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 23
    iput-boolean v1, v5, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->p:Z

    goto :goto_2

    .line 24
    :cond_6
    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v5

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 26
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomRecordMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 27
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomCountMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "-"

    const/4 v10, 0x1

    if-ne v6, v7, :cond_9

    if-nez v8, :cond_7

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 29
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x2

    if-lt v7, v11, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v11, :cond_8

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u8fde\u7eed\u4e24\u6b21\u88ab\u968f\u673a\u5230 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; size "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 31
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 35
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 36
    :goto_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomRecordMap:Ljava/util/Map;

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->randomCountMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 38
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->p:Z

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u968f\u673a\u5230  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 40
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->steps:Ljava/util/ArrayList;

    return-object v0
.end method
