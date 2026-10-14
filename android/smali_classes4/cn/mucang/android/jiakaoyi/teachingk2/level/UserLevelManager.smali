.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001cH\u0007J \u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u00112\u0008\u0010(\u001a\u0004\u0018\u00010\u0004J\n\u0010)\u001a\u0004\u0018\u00010\u0014H\u0002J\u0008\u0010*\u001a\u00020#H\u0007J\u0010\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\u0018H\u0002J(\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H\u0007J&\u00101\u001a\u00020\n2\u0006\u00102\u001a\u00020\n2\u0008\u00103\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J\u0018\u00105\u001a\u00020#2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0007J\u0010\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020\u0004H\u0002J\u0008\u0010<\u001a\u00020#H\u0002J\u0008\u0010=\u001a\u00020#H\u0007J\u0008\u0010>\u001a\u00020#H\u0007J\u0010\u0010?\u001a\u00020#2\u0006\u0010;\u001a\u00020\u001fH\u0007J\u0008\u0010@\u001a\u00020#H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n \u000b*\u0004\u0018\u00010\n0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R6\u0010\u001a\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001c0\u001bj\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001c`\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;",
        "",
        "()V",
        "TAG",
        "",
        "USER_LEVEL_SP",
        "callback",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;",
        "closeConfig",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getCloseConfig",
        "()Landroidx/lifecycle/MutableLiveData;",
        "configCodeList",
        "",
        "Lkotlin/Pair;",
        "",
        "configDataArray",
        "Landroid/util/SparseArray;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "currentLevel",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;",
        "showFlag",
        "subStepMap",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "userDataArray",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "videoMap",
        "Landroid/util/SparseIntArray;",
        "calculateStep",
        "",
        "getComplexTrainList",
        "getLevelData",
        "code",
        "id",
        "name",
        "getTrainingStep",
        "getUserData",
        "handleTraceInfo",
        "it",
        "handleUrl",
        "page",
        "child",
        "subCode",
        "judgeDialogShow",
        "byClick",
        "configLevelModel",
        "lastConfig",
        "onRecordChanged",
        "record",
        "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;",
        "duration",
        "",
        "savePassStatus",
        "data",
        "setLoadFlag",
        "setResumeFlag",
        "showGuideDialog",
        "updateFpData",
        "uploadPassStatus",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

.field private static final b:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final e:Landroid/util/SparseIntArray;

.field private static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;>;"
        }
    .end annotation
.end field

.field private static g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

.field private static final h:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;

.field private static final i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static j:I

.field private static final k:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    .line 1
    new-instance v0, Landroidx/lifecycle/z;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/z;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->b:Landroidx/lifecycle/z;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->h:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->i:Ljava/util/LinkedHashMap;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/i;

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->k:Landroidx/lifecycle/a0;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Train:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    aput-object v3, v2, v4

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->DaoKuLeft:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    aput-object v8, v2, v6

    aput-object v3, v2, v9

    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->DaoKuRight:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    aput-object v5, v2, v6

    aput-object v10, v2, v9

    invoke-static {v2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "\u8bbe\u7f6e\u52a0\u8f7d\u6807\u8bb0\uff1a"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->t(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final B()V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u6062\u590d\u6807\u8bb0\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->t(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final C()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Lkotlin/Pair;

    .line 5
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v9, ""

    invoke-virtual {v1, v8, v5, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v7

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v6

    :cond_2
    const v4, 0x7fffffff

    .line 8
    :goto_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    if-ltz v2, :cond_6

    check-cast v5, Lkotlin/Pair;

    if-ge v2, v4, :cond_3

    .line 10
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 11
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    if-ne v2, v4, :cond_4

    .line 12
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 14
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    move v2, v7

    goto :goto_2

    .line 15
    :cond_6
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v6

    .line 16
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    move-result-object v3

    .line 19
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->None:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    if-eq v3, v4, :cond_8

    .line 20
    new-instance v4, Lkotlin/Pair;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getCurrentActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final D(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;)V
    .locals 12

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->findByCode(I)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->j(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object p0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Done:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getCurrentActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pass_fp:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pass_fp_continue:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_pass_fp_continue)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_i_knew:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/level/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/k;

    const/4 v9, 0x0

    const/16 v10, 0x4c

    const/4 v11, 0x0

    move-object v2, v1

    .line 10
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 11
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 13
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->k(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    goto :goto_3

    .line 14
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCostTime()F

    move-result v3

    :goto_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCostTime()F

    move-result v4

    :goto_1
    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setCostTime(F)V

    .line 16
    :goto_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j()V

    :goto_3
    return-void
.end method

.method private static final E(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://robot.nav.mucang.cn/callUnity?page=3000"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private final F()V
    .locals 4

    const-string v0, "user_level_sp"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;-><init>()V

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "\u5173\u5361-\u901a\u5173\u4e0a\u62a5\u6210\u529f\uff1a"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    :cond_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserLevelManager"

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u5361-\u901a\u5173\u4e0a\u62a5\u5931\u8d25\uff0cerror\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Landroid/util/SparseArray;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static final synthetic c()Landroidx/lifecycle/a0;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->k:Landroidx/lifecycle/a0;

    return-object v0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;)Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->n()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Landroid/util/SparseArray;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static final synthetic f()Landroid/util/SparseIntArray;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->A()V

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->F()V

    return-void
.end method

.method private final j()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->n()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->h:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    .line 3
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    return-void
.end method

.method public static final l()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 4
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "configDataArray[it.first][it.second]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final n()Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u7b97\u5f53\u524d\u5173\u5361:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final o()V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final p(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5173\u5361-\u5904\u7406\u8f68\u8ff9\u6570\u636e:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setExtra(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->n:I

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getValid()Z

    move-result v3

    iput v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->pn:I

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getDeductList()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    .line 8
    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->sc:I

    add-int/2addr v4, v5

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    rsub-int/lit8 v4, v4, 0x64

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getPassScore()I

    move-result v5

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput-byte v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->pass:B

    .line 10
    :goto_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    const/16 v4, 0x1b

    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getSubCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getSubCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    const/16 v4, 0x1c

    if-ne v1, v4, :cond_8

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getSubCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 15
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getSubCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 16
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Exam:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 18
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v2, "150"

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 19
    :cond_a
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_d

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getStepList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-nez v1, :cond_b

    return-void

    .line 21
    :cond_b
    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 22
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_8

    :cond_c
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Exam:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 23
    :cond_d
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_10

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getStepList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-nez v1, :cond_e

    return-void

    .line 25
    :cond_e
    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 26
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_8

    :cond_f
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->HelpTeach:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 27
    :cond_10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1a

    .line 28
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getStepList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-nez v1, :cond_11

    return-void

    .line 29
    :cond_11
    iget v4, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    .line 30
    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v1, v4, :cond_13

    .line 31
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_12

    goto/16 :goto_8

    :cond_12
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Train:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    goto/16 :goto_8

    .line 32
    :cond_13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getStepList()Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    .line 35
    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 36
    :cond_14
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->i:Ljava/util/LinkedHashMap;

    .line 37
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 39
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const/4 v6, 0x0

    goto :goto_6

    :cond_17
    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_15

    .line 41
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    .line 42
    :goto_7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_8

    :cond_19
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->pn:I

    .line 43
    :cond_1a
    :goto_8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getC()I

    move-result v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->c:I

    .line 44
    :goto_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;->getDuration()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3a83126f    # 0.001f

    mul-float p1, p1, v1

    const/16 v1, 0xa

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->y(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V

    return-void
.end method

.method public static final q(IIII)V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->FirstPractice:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->findByCode(I)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->k(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    .line 3
    sget p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->a:I

    invoke-static {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->a(ZI)V

    goto/16 :goto_9

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v0

    if-eq p2, v0, :cond_12

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto/16 :goto_8

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->Exam:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getPageCode()I

    move-result v0

    if-ne p0, v0, :cond_13

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Exam:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v0

    if-ne p3, v0, :cond_13

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u5361\u8df3\u8f6c\u5355\u9879\u6a21\u62df\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    const-string v0, ""

    invoke-virtual {p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object p1

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getConditionGroup()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;

    .line 12
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;->getConditions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u5361\u6570\u636e\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionModel;

    .line 16
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionModel;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 17
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionModel;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 18
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    .line 23
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-ge v0, p2, :cond_b

    const-string p0, "\u5173\u5361\u5408\u683c\u7387\u6b21\u6570\u4e0d\u6ee1\u8db3\uff0c\u8fd4\u56de"

    .line 25
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_b
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 27
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_7

    .line 28
    :cond_d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_f

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v0, p2, :cond_e

    if-ne v3, v1, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    move v0, v4

    goto :goto_6

    :cond_f
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p0, 0x0

    throw p0

    :cond_10
    :goto_7
    mul-int/lit8 v2, v2, 0x64

    .line 29
    div-int/2addr v2, p2

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5173\u5361\u8ba1\u7b97\u5408\u683c\u7387\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-ge v2, p3, :cond_11

    .line 31
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/j;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/j;-><init>(I)V

    const-wide/16 p1, 0x12c

    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_11
    return-void

    .line 32
    :cond_12
    :goto_8
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$handleUrl$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$handleUrl$1;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->m(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/a;)V

    :cond_13
    :goto_9
    return-void
.end method

.method private static final r(I)V
    .locals 8

    .line 1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pass_rate_low:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_pass_rate_low)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "java.lang.String.format(format, *args)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x16

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    return-void
.end method

.method public static final s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z
    .locals 8

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;->isUnityLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "unity \u672a\u52a0\u8f7d\u5b8c\uff0c\u4e0d\u5c55\u793a\u5bfc\u8bad\u5f39\u7a97"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j:I

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->l()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u6559\u7ec3\u767b\u5f55\u4e14\u4e0d\u662f\u624b\u52a8\u70b9\u51fb\uff0c\u4e0d\u5c55\u793a\u5bfc\u8bad\u5f39\u7a97"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    if-nez p0, :cond_2

    const-string p0, "\u914d\u7f6e\u4e3a\u7a7a\uff0c\u4e0d\u5c55\u793a\u5bfc\u8bad\u5f39\u7a97"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    :cond_2
    if-nez p1, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    :cond_3
    move-object v4, p1

    .line 9
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_6

    :goto_0
    add-int/lit8 v0, v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0

    .line 14
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_7

    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$a;-><init>()V

    invoke-static {v3, p0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    :cond_7
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/s;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$1;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$param$2;

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/s;->a(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;)Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    move-result-object p0

    .line 16
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/p;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/g/f;->d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    return p1
.end method

.method public static synthetic t(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->x(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V

    return-void
.end method

.method public static synthetic v(I)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->r(I)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->E(Landroid/view/View;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->p(Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;)V

    return-void
.end method

.method public static final y(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V
    .locals 13

    const-string v1, "record"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u5361-\u6570\u636e\u4e0a\u62a5\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getC()I

    move-result v1

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->VideoEnd:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->VideoStart:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->TrainEnd:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->TrainStart:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v1

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getC()I

    move-result v1

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v3

    const/4 v5, -0x1

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7
    :goto_2
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->VideoStart:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 8
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Video:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v5

    move v1, v3

    .line 10
    :cond_6
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_7

    move-object v3, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    :goto_3
    if-nez v3, :cond_8

    return-void

    .line 11
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v7

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object v7

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    move-result-object v2

    invoke-virtual {v7, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->updateData(FLcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    .line 14
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "userDataArray[code]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v3, v7, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->isPass(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setPass(Z)V

    .line 16
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;-><init>()V

    .line 18
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setCode(I)V

    .line 19
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setSubCode(I)V

    .line 20
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/LevelPassModel;->setPass(Z)V

    .line 21
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 22
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_9
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_a

    new-array v0, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    .line 24
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5173\u5361-\u901a\u5173\u4e86\uff1a"

    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "text"

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->z(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$2;

    invoke-direct {v10, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$2;-><init>(Lkotlin/coroutines/c;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_4

    .line 28
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3;

    invoke-direct {v3, v7, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$onRecordChanged$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    :goto_4
    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->j()V

    return-void
.end method

.method private final z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_level_sp"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final k()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->b:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;-><init>()V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;-><init>()V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setData(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setPass(Z)V

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;-><init>(II)V

    .line 9
    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;-><init>()V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setData(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;)V

    :cond_3
    :goto_0
    return-object v0
.end method
