.class public Lcn/mucang/android/jiakaoyi/examk2/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

.field private c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/examk2/a/d;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/examk2/a/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    return-void
.end method

.method public static declared-synchronized a(JLjava/lang/String;)Ljava/util/Map;
    .locals 3
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

    const-class p2, Lcn/mucang/android/jiakaoyi/examk2/a/c;

    monitor-enter p2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {p0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->l(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    .line 16
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/config/a;->b(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public synthetic canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/b;->a(Lcn/mucang/android/jiakaoyi/engine/i/c;Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z

    move-result p1

    return p1
.end method

.method public createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 14

    const-string v0, "TAG"

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "K2_"

    const-string v4, ""

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz v6, :cond_0

    .line 8
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->judgeType:Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/engine/model/JudgeType;->notAuto()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cn.mucang.android.jiakaoyi.examk2.rule."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_Event"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 12
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x2

    if-ge v10, v7, :cond_3

    aget-object v12, v4, v10

    .line 13
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 14
    array-length v13, v13

    if-ne v13, v11, :cond_2

    move-object v5, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    new-array v4, v11, [Ljava/lang/Object;

    .line 15
    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    aput-object v7, v4, v8

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;

    .line 16
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    instance-of v6, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    if-eqz v6, :cond_4

    .line 17
    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setPlayScore(Z)V

    .line 18
    :cond_4
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:deduct = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , Constructor = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 21
    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v4, v3, v5}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/b/d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    invoke-direct {v1, p1, v5}, Lcn/mucang/android/jiakaoyi/examk2/b/d;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/c;-><init>()V

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic getEngineType()I
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/i/b;->b(Lcn/mucang/android/jiakaoyi/engine/i/c;)I

    move-result v0

    return v0
.end method

.method public getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-nez v0, :cond_7

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v3

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-wide v3, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 6
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 7
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->examSiteId:J

    .line 8
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapSiteId:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->mapMd5:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 13
    invoke-static {v3, v4, v1}, Lcn/mucang/jiakaoyi/uilib/m/a;->g(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53cd\u5c04--\u4ece\u6570\u636e\u5e93\u83b7\u53d6\u6263\u5206\u9879\u7684\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " , isCommonSite:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, -0x3e7

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "K2ExamCreator"

    invoke-static {v5, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 17
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_3

    .line 18
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    iget v8, v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcn/mucang/android/jiakaoyi/examk2/a/c;->a(JLjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53cd\u5c04--\u4ece\u6570\u636e\u5e93\u83b7\u53d6\u6263\u5206\u914d\u7f6e\u7684\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 25
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;-><init>()V

    .line 26
    iput-object v3, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 27
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    if-nez v5, :cond_5

    goto :goto_3

    .line 28
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    .line 29
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->steps:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    :cond_7
    return-object v0
.end method

.method public declared-synchronized stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/a/c;->b:Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stepList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
