.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0008\u0010\"\u001a\u00020\u001eH\u0007J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0011H\u0007J\u0008\u0010%\u001a\u00020\u001eH\u0007J\u0006\u0010&\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0002\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/stepsync/StepTriggerAsk$AskCallback;",
        "()V",
        "ALL_NAME",
        "",
        "changeAction",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "changeModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;",
        "circleList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "filterSteps",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "value",
        "",
        "selectIndex",
        "getSelectIndex$annotations",
        "getSelectIndex",
        "()I",
        "setSelectIndex",
        "(I)V",
        "stepList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;",
        "getStepList$annotations",
        "getStepList",
        "()Ljava/util/List;",
        "callback",
        "",
        "boundary",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "action",
        "change",
        "handleSelectIndex",
        "index",
        "initList",
        "onCircleTrainStart",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;

.field private static d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_XiaCheJianCha:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_BianXianShiBie:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DoubleYuanHuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/s0;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->b:Ljava/util/Set;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->f:I

    return v0
.end method

.method public static final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final e(I)V
    .locals 7

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->f:I

    if-ne v0, p0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->b()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->index:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->itemList:Ljava/util/List;

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {v1, p0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->g:Ljava/util/List;

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 10
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getBusinessId()I

    move-result v5

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    move-object v2, v4

    .line 11
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager$handleSelectIndex$3;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager$handleSelectIndex$3;-><init>(I)V

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final f()V
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->t(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v1

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v5

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_6

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getLoopStep()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_4
    :goto_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-direct {v3, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->setBusinessId(I)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->h(I)V

    return-void

    .line 10
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-eqz v1, :cond_15

    .line 11
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ChangeStep:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_c

    .line 12
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 16
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->b:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_8

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager$a;-><init>()V

    invoke-static {v6, v1}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 19
    iget v7, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iget v10, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->setBusinessId(I)V

    sget-object v6, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 21
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_b

    .line 22
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->t(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;)V

    goto :goto_6

    .line 23
    :cond_b
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->t(Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b$b;)V

    .line 24
    :goto_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->l()Ljava/util/List;

    move-result-object v0

    .line 25
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 26
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getLoopStep()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_9

    .line 31
    :cond_d
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;

    .line 32
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;->getStep()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 33
    :cond_e
    :goto_9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v1

    invoke-virtual {v8, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->setBusinessId(I)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 34
    :cond_f
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_10

    .line 35
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    const-string v6, "\u5168\u90e8\u9879\u76ee"

    invoke-direct {v1, v6, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36
    :cond_10
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->h(I)V

    .line 37
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_14

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    .line 39
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getBusinessId()I

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getBusinessId()I

    move-result v5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v7

    if-nez v7, :cond_12

    :cond_11
    const/4 v5, 0x0

    goto :goto_b

    :cond_12
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v7

    if-ne v5, v7, :cond_11

    const/4 v5, 0x1

    :goto_b
    if-eqz v5, :cond_13

    .line 40
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->h(I)V

    return-void

    :cond_13
    move v1, v6

    goto :goto_a

    .line 41
    :cond_14
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v2

    :cond_15
    :goto_c
    return-void
.end method

.method public static final h(I)V
    .locals 1

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->f:I

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    invoke-static {v0, p0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getStepIdGroup()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->u(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;->stepId:I

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepChangeModel;->stepName:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sput-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->e()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->f()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;

    .line 5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getBusinessId()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getBusinessId()I

    move-result v3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v5

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->h(I)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;-><init>()V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->b()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->index:I

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->itemList:Ljava/util/List;

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    return-void
.end method
