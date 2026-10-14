.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

.field private c:I

.field private d:I

.field private e:J

.field private f:D

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    return-void
.end method

.method private b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    if-eq v1, v2, :cond_1

    int-to-byte v1, v1

    int-to-byte v2, v2

    if-ne v1, v2, :cond_0

    .line 3
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0, p4, p3, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/l;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 6
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    if-eqz v2, :cond_4

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(DD)Z
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    cmpl-double v4, p3, v1

    if-nez v4, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    cmpl-double v3, p3, v1

    if-nez v3, :cond_2

    :cond_1
    return v0

    :cond_2
    mul-double p1, p1, p3

    cmpg-double p3, p1, v1

    if-gez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(D)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-string p1, "\u56de\u6b63\u8f66\u8eab"

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_steering_right:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_turn_steering_left:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(D)I
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v11, p5

    .line 1
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_8

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    const/16 v1, 0x1e

    invoke-direct {v0, v13, v13, v14, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;-><init>(ZILjava/util/List;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    move-object/from16 v5, p6

    .line 3
    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->c:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    if-nez v0, :cond_0

    return v13

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    iput v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    .line 7
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    int-to-double v3, v1

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->a:D

    .line 8
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    const/16 v2, 0xfa0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->d:I

    .line 9
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    const-wide v3, 0x4041800000000000L    # 35.0

    invoke-static {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    invoke-direct {v1, v2, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 15
    iget v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_3

    iget v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, v15, :cond_5

    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_4

    iget v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v1, v15, :cond_5

    :cond_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_6

    iget v0, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v0, v15, :cond_6

    .line 16
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;

    goto :goto_2

    .line 17
    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/a;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;

    goto :goto_2

    :cond_7
    :goto_1
    return v13

    .line 18
    :cond_8
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_4

    .line 19
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    if-nez v0, :cond_a

    return v13

    .line 20
    :cond_a
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    if-eqz v0, :cond_b

    return v13

    .line 21
    :cond_b
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v9

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    move-object/from16 v11, p5

    move-object/from16 v12, p3

    const/4 v1, 0x0

    move-object v13, v0

    invoke-interface/range {v7 .. v13}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)V

    .line 22
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    if-eqz v2, :cond_c

    .line 23
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    iget v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    invoke-direct {v0, v1, v1, v14, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;-><init>(ZILjava/util/List;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 24
    :cond_c
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_d

    .line 25
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->f:I

    if-ne v2, v15, :cond_d

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->e:Z

    if-eqz v2, :cond_d

    .line 26
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->f:I

    const-wide/16 v2, 0x0

    .line 27
    iput-wide v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f:D

    .line 28
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    iget v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    invoke-direct {v0, v1, v1, v14, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;-><init>(ZILjava/util/List;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    return v1

    .line 29
    :cond_d
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->f:I

    const-wide v3, 0x3fc999999999999aL    # 0.2

    if-nez v2, :cond_e

    .line 30
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->b:D

    iget v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    int-to-double v9, v2

    cmpl-double v2, v7, v9

    if-lez v2, :cond_12

    .line 31
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f(D)I

    move-result v0

    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->a:Ljava/util/List;

    iget v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    invoke-direct {v2, v15, v0, v5, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;-><init>(ZILjava/util/List;I)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 32
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iput v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->f:I

    .line 33
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e:J

    .line 34
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e(D)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f:D

    .line 36
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v7, v2

    cmpl-double v2, v7, v3

    if-lez v2, :cond_12

    .line 37
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 38
    :cond_e
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_f

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e:J

    sub-long/2addr v7, v9

    iget v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->d:I

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_10

    :cond_f
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f:D

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    invoke-direct {v6, v7, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c(DD)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    :cond_10
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e(D)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->e:J

    .line 41
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f:D

    .line 42
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;

    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->f(D)I

    move-result v5

    iget v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;->c:I

    invoke-direct {v2, v15, v5, v14, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c$a;-><init>(ZILjava/util/List;I)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    move-object v14, v0

    :cond_11
    if-eqz v14, :cond_12

    .line 43
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v7, v0

    cmpl-double v0, v7, v3

    if-lez v0, :cond_12

    .line 44
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {v0, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_12
    :goto_3
    return v1

    :cond_13
    :goto_4
    const/4 v1, 0x0

    return v1
.end method
