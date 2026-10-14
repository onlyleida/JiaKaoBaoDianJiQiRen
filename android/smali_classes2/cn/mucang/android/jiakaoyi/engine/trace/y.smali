.class public final Lcn/mucang/android/jiakaoyi/engine/trace/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0011R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R6\u0010\u0008\u001a*\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000b0\tj\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/engine/trace/TraceStepController;",
        "",
        "()V",
        "cacheModel",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
        "hasWarehousing",
        "",
        "isValid",
        "stepMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "changeSubStep",
        "model",
        "internal",
        "setValid",
        "",
        "setWarehousing",
        "startStep",
        "stop",
        "stopStep",
        "writeStep",
        "engine_release"
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
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/y;->h()V

    return-void
.end method

.method private static final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->S(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;Z)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 4

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExercise()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz p2, :cond_3

    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    if-lez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iput v0, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    :goto_0
    return-object v1

    .line 6
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_5

    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    iget v3, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v2, :cond_4

    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_6

    iget p2, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    if-eq p2, v2, :cond_6

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->copy()Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    .line 8
    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->U(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-object v1

    .line 9
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-le v0, v2, :cond_9

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->O()V

    :cond_9
    return-object p1

    :cond_a
    :goto_4
    if-eqz p2, :cond_b

    .line 12
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    .line 13
    :cond_b
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    return-object p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->c:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->d:Z

    return-void
.end method

.method public final e(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;Z)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExercise()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->S(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->copy()Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    if-lez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    invoke-static {p2, v1, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->l(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V

    goto :goto_1

    .line 6
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    :cond_3
    :goto_1
    const-class p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    .line 7
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-direct {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;-><init>(ZI)V

    invoke-virtual {p2, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    return-void
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 4

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->isRobotExercise()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->c:Z

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/b;-><init>(ZI)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;-><init>(ZI)V

    .line 5
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->c:Z

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->e(Z)V

    .line 6
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->d:Z

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->f(Z)V

    .line 7
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/v;->a:Lcn/mucang/android/jiakaoyi/engine/trace/v;

    const-wide/16 v1, 0x64

    .line 9
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 10
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->c:Z

    .line 11
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->d:Z

    :cond_1
    return-object p1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/y;->b:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->R(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    :cond_0
    return-void
.end method
