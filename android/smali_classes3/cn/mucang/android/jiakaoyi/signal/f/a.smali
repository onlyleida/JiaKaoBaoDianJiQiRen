.class public Lcn/mucang/android/jiakaoyi/signal/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:D

.field private c:J

.field private d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private g:F

.field private h:J

.field private i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, -0x383cb000    # -100000.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->a:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->b:D

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->c:J

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 13

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->h:J

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->g:F

    add-float/2addr v3, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v3, v7

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->h:J

    sub-long v7, v1, v7

    long-to-double v7, v7

    mul-double v3, v3, v7

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v3, v3, v7

    double-to-float v3, v3

    .line 7
    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->a:F

    add-float/2addr v4, p1

    float-to-double v7, v4

    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 8
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 9
    iget-wide v7, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v9, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v7, v11

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 10
    iget-wide v7, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    iput-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->g:F

    .line 12
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->h:J

    .line 13
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->a:F

    return-object v6
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_4
    return-void
.end method

.method private e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/c/e;I)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "I)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->c:J

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->g:F

    .line 5
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->h:J

    .line 6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->a:F

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/f/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p3, :cond_1

    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    const/16 v1, 0xa

    invoke-direct {p0, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/signal/f/a;->e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/c/e;I)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)D
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->b:D

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/signal/f/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v2, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/f/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-byte p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    if-ne p1, v1, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/f/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 11
    :cond_5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpl-double p1, v4, v2

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    .line 14
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v3

    invoke-virtual {p1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result p1

    int-to-float v0, v1

    mul-float p1, p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->b:D

    .line 15
    :cond_7
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/f/a;->b:D

    return-wide v0
.end method
