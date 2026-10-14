.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;

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
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 7
    :goto_0
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
    .locals 10
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

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p2, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p2, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v4, p4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 p2, 0x1

    if-eq v4, p2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;

    const-wide/16 v1, 0x3e8

    if-nez p2, :cond_3

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;

    .line 6
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-direct {p2, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 7
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    iput-wide v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a:J

    goto :goto_0

    .line 10
    :cond_4
    iget p2, p4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    .line 11
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v3, p2, :cond_5

    if-ne v3, v0, :cond_6

    .line 12
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v2

    const/4 p2, 0x0

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;->e(Ljava/util/List;)D

    move-result-wide v6

    move-object v8, p1

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic enable()Z
    .locals 1

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/d;)Z

    move-result v0

    return v0
.end method
