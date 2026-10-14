.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u000bH\u0007J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehaviorManager;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "checkList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;",
        "result",
        "Ljava/util/HashSet;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
        "Lkotlin/collections/HashSet;",
        "check",
        "",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "onSignalChanged",
        "startStep",
        "stopStep",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->b:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c:Ljava/util/HashSet;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/d;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/f;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;

    .line 3
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getCode()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static final c()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getCode()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->a(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    .line 8
    :cond_2
    invoke-static {v0}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    .line 14
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getCode()I

    move-result v3

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    .line 17
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getCode()I

    move-result v5

    if-le v3, v5, :cond_6

    move-object v1, v4

    move v3, v5

    .line 18
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    :goto_1
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getDesc()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
