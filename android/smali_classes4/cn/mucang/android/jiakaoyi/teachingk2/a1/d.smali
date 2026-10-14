.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:J

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->b:J

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 8
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

    .line 1
    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_16

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 p6, 0x2

    if-lt p4, p6, :cond_16

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->left:Ljava/util/List;

    .line 2
    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_16

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->right:Ljava/util/List;

    .line 3
    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p4

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v0, :cond_2

    .line 7
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 8
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->left:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 10
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 11
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->right:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 15
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 16
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    iput-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 17
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    const/16 v3, 0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v0, v4, v5, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->G(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v2, v3, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->G(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v0

    .line 22
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 23
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    goto/16 :goto_6

    .line 25
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v0, :cond_7

    .line 26
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 27
    :cond_7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p3, v2, v4

    if-gez p3, :cond_8

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return p5

    .line 30
    :cond_8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double p3, v2, v4

    if-gez p3, :cond_9

    return p5

    .line 31
    :cond_9
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, v0, :cond_a

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    :cond_a
    const/4 p3, 0x0

    move-object v2, p3

    move-object v3, v2

    const/4 v0, 0x0

    .line 32
    :cond_b
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_c

    .line 33
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 35
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v2, v3, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_d

    .line 36
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return p5

    .line 37
    :cond_d
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 38
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v4, v2

    double-to-float v0, v4

    .line 39
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    float-to-double v2, v0

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v5, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v6, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v7, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, p4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    invoke-virtual {v0, v4, v5, v6, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 41
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->f:Ljava/util/List;

    invoke-static {p4, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result p4

    .line 42
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->g:Ljava/util/List;

    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;)Z

    move-result v0

    if-eqz p4, :cond_e

    if-eqz v0, :cond_e

    const-wide/16 v4, 0x0

    cmpl-double p4, v2, v4

    if-lez p4, :cond_f

    goto :goto_3

    :cond_e
    if-eqz p4, :cond_10

    :cond_f
    const/4 p4, 0x2

    goto :goto_4

    :cond_10
    if-eqz v0, :cond_11

    :goto_3
    const/4 p4, 0x1

    goto :goto_4

    :cond_11
    const/4 p4, 0x0

    :goto_4
    if-ne p4, p6, :cond_12

    .line 43
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_left_trun_right:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_12
    if-ne p4, v1, :cond_13

    .line 44
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_right_trun_left:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_13
    :goto_5
    if-eqz p3, :cond_15

    .line 45
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-wide v0, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->b:J

    sub-long/2addr v0, v2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    const/16 p4, 0xfa0

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_14

    return p5

    .line 46
    :cond_14
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 47
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->b:J

    .line 48
    :cond_15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_16
    :goto_6
    return p5
.end method
