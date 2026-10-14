.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;

    return-void
.end method

.method private e(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 7
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private f(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)D
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/c;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move-object v8, p3

    move-object/from16 v1, p5

    .line 1
    instance-of v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    move-object v2, v8

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    move-object v3, p4

    .line 4
    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    if-nez v5, :cond_3

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;

    .line 8
    :cond_3
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;

    invoke-virtual {v5, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/j;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;

    invoke-virtual {v5, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/e;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

    if-nez v5, :cond_4

    .line 10
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

    .line 11
    :cond_4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;

    invoke-virtual {v5, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/k;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)D

    move-result-wide v9

    if-ne v3, v4, :cond_5

    const/4 v1, 0x3

    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    const/4 v3, 0x5

    .line 14
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-object v4, v5

    move-wide v5, v9

    move-object v7, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v2

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;->e(Ljava/util/List;)D

    move-result-wide v9

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v9

    move-object v7, p1

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public synthetic enable()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;)Z

    move-result v0

    return v0
.end method
