.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.TrainingStepHelper$checkTrainLevel$1"
    f = "TrainingStepHelper.kt"
    l = {
        0x92,
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method private static final invokeSuspend$getDesc(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_self_training:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.teachbase_self_training)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_key_points_strengthened:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.teach\u2026_key_points_strengthened)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_strengthen_point_practice:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.teach\u2026trengthen_point_practice)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1$recommend$1;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1$recommend$1;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;

    if-nez p1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getStep()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_7

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->b()Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v5

    if-eq v2, v5, :cond_7

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/j0;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/j0;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "java.lang.String.format(format, *args)"

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    sget-object v5, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    .line 12
    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_is_mode:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "getString(R.string.teachbase_is_mode)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v7

    .line 13
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_2
    sget-object v5, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auto_switch_for_you:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "getString(R.string.teachbase_auto_switch_for_you)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->invokeSuspend$getDesc(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v4

    aput-object v2, v9, v3

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->d(I)V

    const/16 v5, 0x7531

    .line 16
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TrainStepLevel$StepLevel;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    .line 18
    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->list:Ljava/util/Map;

    .line 19
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 20
    invoke-static {v5, v6, v4}, Lcn/mucang/android/jiakaoyi/unity/c/d;->d(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V

    const-wide/16 v4, 0x3e8

    .line 21
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TrainingStepHelper$checkTrainLevel$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v3, v2

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x16

    const/4 v9, 0x0

    .line 22
    invoke-static/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    .line 23
    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
