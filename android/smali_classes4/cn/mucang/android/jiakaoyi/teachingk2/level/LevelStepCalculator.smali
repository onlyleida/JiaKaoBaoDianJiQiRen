.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/a;
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/engine/f/a;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J\u0008\u0010\u0019\u001a\u00020\u0017H\u0007J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001fH\u0007J\u0012\u0010 \u001a\u00020\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010&\u001a\u00020\u00172\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\u0008\u0010\'\u001a\u00020\u0017H\u0007J\u0008\u0010(\u001a\u00020\u0017H\u0007J \u0010)\u001a\u00020\u00172\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001fH\u0007R*\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "()V",
        "<set-?>",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "config",
        "getConfig$annotations",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "currentStep",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "isStart",
        "stepSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "subStepObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "switchEnd",
        "callback",
        "",
        "data",
        "handleNextStep",
        "handleStepSwitch",
        "selectStep",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;",
        "selectConfig",
        "onSelect",
        "Lkotlin/Function0;",
        "nextTrainStep",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
        "setTrainConfig",
        "start",
        "stop",
        "switch",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private static f:Z

.field private static final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/c;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->g:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    return-object v0
.end method

.method public static final c()V
    .locals 10

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->h(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    const-string v2, ""

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->N(Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->S(Z)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 6
    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_start_train:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.teachbase_please_start_train)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x12

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "selectStep"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onSelect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eqz v1, :cond_7

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v1

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v5

    if-ne v1, v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v1

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v5

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_7

    .line 4
    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "getCurrentActivity()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 7
    sget-object v7, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_quit_train_title:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.teachbase_quit_train_title)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_quit_train_desc:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(R.string.teachbase_quit_train_desc)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TrainStepModel;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_train:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 10
    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;

    move-object/from16 v2, p1

    invoke-direct {v11, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_keep_practicing:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x60

    const/16 v16, 0x0

    move-object v7, v6

    .line 12
    invoke-direct/range {v7 .. v16}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 13
    invoke-direct {v1, v5, v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 14
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_4

    :cond_8
    move-object/from16 v2, p1

    .line 15
    invoke-static/range {p1 .. p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->m(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V

    :goto_4
    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    const-string p2, "$onSelect"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->m(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->l(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getLoopStep()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LoopStepModel;->getStep()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static final i(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u8bad\u7ec3\u5173\u5361:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v5

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_6

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v2

    if-nez p0, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v5

    if-ne v2, v5, :cond_4

    :goto_3
    if-nez v3, :cond_6

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 5
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    return-void

    .line 6
    :cond_6
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result p0

    if-ne v0, p0, :cond_7

    const/16 p0, 0x1b

    goto :goto_4

    :cond_7
    const/16 p0, 0x1c

    :goto_4
    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 8
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator$setTrainConfig$1;

    invoke-direct {v6, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator$setTrainConfig$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final j()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->u:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->d:Z

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const-class v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->n(Lcn/mucang/android/jiakaoyi/engine/f/a;)V

    return-void
.end method

.method public static final k()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->u:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    const/4 v1, 0x0

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->d:Z

    const-class v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->u(Lcn/mucang/android/jiakaoyi/engine/f/a;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;

    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final m(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSelect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->f:Z

    .line 5
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->i(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->S(Z)V

    .line 8
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->a(Z)V

    return-void
.end method

.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 6

    const-string p2, "stepHandler"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 7
    :cond_1
    sget-boolean p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->f:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 8
    sput-boolean p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->f:Z

    .line 9
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator$onStep$1;

    invoke-direct {v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator$onStep$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c()V

    :cond_3
    :goto_0
    return-void
.end method
