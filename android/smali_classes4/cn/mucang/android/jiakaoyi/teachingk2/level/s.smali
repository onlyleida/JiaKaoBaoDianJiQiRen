.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/level/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\r2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00110\rJ\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00132\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDataCreator;",
        "",
        "()V",
        "HomeUrl",
        "",
        "createParam",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;",
        "sortList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "config",
        "lastConfig",
        "getLevelData",
        "Lkotlin/Function1;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "getLevelDataArray",
        "",
        "Landroid/util/SparseArray;",
        "getJumpUrl",
        "Lkotlin/Pair;",
        "allDone",
        "",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/level/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;)Lcn/mucang/android/jiakaoyi/teachingk2/level/p;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;>;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/p;"
        }
    .end annotation

    const-string v0, "sortList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getLevelData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getLevelDataArray"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 4
    invoke-interface {p4, v2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    .line 5
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v6

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v9

    if-ne v6, v9, :cond_1

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v9

    if-ne v6, v9, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getNotTrained()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-eq v6, v7, :cond_3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 8
    :cond_3
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/r;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p5, v9}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getTrainDesc(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v7, v3, v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/level/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;->b(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Z)Lkotlin/Pair;

    move-result-object p1

    if-eqz v1, :cond_5

    .line 10
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_complete_guide_train:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getString(R.string.teachbase_complete_guide_train)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_continue_train:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "getString(R.string.teachbase_continue_train)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    move-object v4, v3

    move-object v3, p3

    goto/16 :goto_3

    :cond_5
    const-string p4, "java.lang.String.format(format, *args)"

    if-eqz p3, :cond_6

    .line 12
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result p3

    invoke-virtual {p5, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    move-result-object p3

    .line 13
    sget-object p5, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_congratulations:I

    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "getString(R.string.teachbase_congratulations)"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getTitle()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget p5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_recommend_train:I

    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "getString(R.string.teachbase_recommend_train)"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_6
    sget-object p3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_welcome_proj:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    const-string p5, "getString(R.string.teachbase_welcome_proj)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p5, v0, [Ljava/lang/Object;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v4

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_train_uncomplete_continute:I

    invoke-static {p5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "getString(R.string.teach\u2026ain_uncomplete_continute)"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_2
    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teachbase_recommend_train2:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teach\u2026achbase_recommend_train2)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p2

    move-object v2, p3

    move-object v3, p5

    .line 18
    :goto_3
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_train2:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string p3, "getString(R.string.teachbase_start_train2)"

    invoke-static {v5, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->k()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/level/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object p2
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Z)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            "Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "http://robot.nav.mucang.cn/callUnity?page=1000"

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getPageCode()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v2, :cond_4

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/s$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v3, 0x7d0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getVideoSubType()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    move v3, v2

    const/16 v2, 0x7d0

    goto :goto_2

    :cond_2
    const/16 v2, 0x1bbc

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x1770

    const/16 v3, 0x1775

    goto :goto_1

    .line 7
    :cond_4
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Video:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    if-ne p2, v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    move-object v0, v1

    .line 8
    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    if-eq p2, v1, :cond_8

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    if-ne p2, v1, :cond_7

    goto :goto_3

    :cond_7
    move v5, v3

    .line 9
    :cond_8
    :goto_3
    new-instance p2, Lkotlin/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://robot.nav.mucang.cn/callUnity?page="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&must=true&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&subCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
