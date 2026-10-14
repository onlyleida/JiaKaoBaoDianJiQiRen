.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0007J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R,\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00048\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;",
        "",
        "()V",
        "MODE_HIGH",
        "",
        "MODE_LOW",
        "MODE_MIDDLE",
        "value",
        "mode",
        "getMode$annotations",
        "getMode",
        "()I",
        "setMode",
        "(I)V",
        "modes",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;",
        "createDefaultList",
        "getInUseMode",
        "getLocalKey",
        "",
        "loadConfig",
        "",
        "refreshConfig",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;",
        "SafeModeParam",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;

.field private static b:I = 0x1

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;

    .line 1
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->e()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;)V

    return-void
.end method

.method public static final synthetic d(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->c:Ljava/util/List;

    return-void
.end method

.method private final e()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    .line 1
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;-><init>()V

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setMode(I)V

    const/16 v4, 0x8

    .line 3
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setSpeed(I)V

    const/16 v5, 0xf

    .line 4
    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setProjectOutSpeed(I)V

    .line 5
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setBackSpeed(I)V

    .line 6
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareDoorBrake(Z)V

    .line 7
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareBeltBrake(Z)V

    const/16 v5, 0x28

    .line 8
    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHouLiu(I)V

    const/16 v6, 0x14

    .line 9
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3Speed(I)V

    const/16 v7, 0x1e

    .line 10
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3StraightSpeed(I)V

    .line 11
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2Speed(I)V

    const/16 v8, 0x3c

    .line 12
    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2HighSpeed(I)V

    .line 13
    sget-object v9, Lkotlin/v;->a:Lkotlin/v;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;-><init>()V

    const/4 v10, 0x2

    .line 15
    invoke-virtual {v2, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setMode(I)V

    const/16 v11, 0xa

    .line 16
    invoke-virtual {v2, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setSpeed(I)V

    .line 17
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setProjectOutSpeed(I)V

    .line 18
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setBackSpeed(I)V

    .line 19
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareDoorBrake(Z)V

    .line 20
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareBeltBrake(Z)V

    .line 21
    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHouLiu(I)V

    .line 22
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3Speed(I)V

    .line 23
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3StraightSpeed(I)V

    .line 24
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2Speed(I)V

    .line 25
    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2HighSpeed(I)V

    aput-object v2, v1, v3

    .line 26
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;-><init>()V

    .line 27
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setMode(I)V

    const/16 v0, 0xc

    .line 28
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setSpeed(I)V

    .line 29
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setProjectOutSpeed(I)V

    .line 30
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setBackSpeed(I)V

    .line 31
    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareDoorBrake(Z)V

    .line 32
    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareBeltBrake(Z)V

    .line 33
    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHouLiu(I)V

    .line 34
    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3Speed(I)V

    .line 35
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3StraightSpeed(I)V

    .line 36
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2Speed(I)V

    .line 37
    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2HighSpeed(I)V

    aput-object v2, v1, v10

    .line 38
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final f()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getMode()I

    move-result v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->h()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->appendParam()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->c:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->appendParam()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    move-result-object v0

    return-object v0
.end method

.method private final g()Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "safe_param_"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final h()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->b:I

    return v0
.end method

.method public static final i()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/l1;->a:Lkotlinx/coroutines/l1;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$loadConfig$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$loadConfig$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->getMode()I

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getSafeType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setSpeed(I)V

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getDoorBrake()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareDoorBrake(Z)V

    .line 8
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getBeltBrake()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHardwareBeltBrake(Z)V

    .line 10
    :goto_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getHouLiu()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setHouLiu(I)V

    .line 12
    :goto_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getBackSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setBackSpeed(I)V

    .line 14
    :goto_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getProjectOutSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setProjectOutSpeed(I)V

    .line 16
    :goto_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getK3Speed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3Speed(I)V

    .line 18
    :goto_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getK3StraightSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setK3StraightSpeed(I)V

    .line 20
    :goto_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getB2HighSpeed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2HighSpeed(I)V

    .line 22
    :goto_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;->getB2Speed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;->setB2Speed(I)V

    goto/16 :goto_0

    .line 24
    :cond_b
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 25
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static final k(I)V
    .locals 1

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->b:I

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/b0;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
