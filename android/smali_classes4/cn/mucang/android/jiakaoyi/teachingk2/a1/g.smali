.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private h:Z

.field private final i:D

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->e:Ljava/util/List;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h:Z

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    .line 12
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    .line 13
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->i:D

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j:Z

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d:Ljava/util/List;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->e:Ljava/util/List;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 2
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 3
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 4
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    .line 5
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    .line 7
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v1, p2

    double-to-float p2, v1

    .line 8
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-short p2, p2

    .line 9
    iput-short p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    .line 10
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    int-to-byte p2, p2

    iput-byte p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    .line 11
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    iput-byte p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    .line 12
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr p2, p3

    int-to-byte p2, p2

    iput-byte p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    .line 13
    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 14
    iput-short v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    .line 15
    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-short p2, p2

    iput-short p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    .line 16
    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->footBrake:I

    .line 17
    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->cluth:I

    .line 18
    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->speed:F

    return-object v0
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr p1, v1

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0xa

    int-to-double p1, p1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v1

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object v0
.end method

.method public static d(Ljava/util/List;Ljava/util/List;Ljava/util/List;DZ)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;DZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 2
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const/4 v13, 0x0

    .line 3
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v17, -0x10000000000001L

    move-wide/from16 v19, v17

    const/4 v7, 0x0

    const-wide v21, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 4
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_4

    .line 5
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    neg-double v5, v11

    move-object v4, v14

    move-wide/from16 v23, v5

    move-wide v5, v9

    move v13, v7

    move-wide/from16 v7, v23

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpg-double v5, v3, v21

    if-gez v5, :cond_0

    .line 8
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v21, v3

    .line 9
    :cond_0
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v5, v3, v19

    if-lez v5, :cond_1

    .line 10
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v19, v3

    .line 11
    :cond_1
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpg-double v5, v3, v21

    if-gez v5, :cond_2

    .line 12
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v21, v3

    .line 13
    :cond_2
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v5, v3, v19

    if-lez v5, :cond_3

    .line 14
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v19, v3

    :cond_3
    add-int/lit8 v7, v13, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move-wide/from16 v5, v21

    :goto_1
    cmpg-double v7, v5, v19

    if-gtz v7, :cond_13

    if-eqz p5, :cond_5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_2

    :cond_5
    move-wide/from16 v7, v17

    :goto_2
    const/4 v13, 0x0

    const/16 v21, 0x0

    .line 15
    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v15, v22, -0x1

    const-wide/16 v25, 0x0

    if-ge v13, v15, :cond_9

    .line 16
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v13, v13, 0x1

    .line 17
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v27, v11

    .line 18
    iget-wide v11, v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v29, v11, v5

    move-wide/from16 v31, v9

    iget-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v33, v5, v9

    mul-double v29, v29, v33

    cmpl-double v4, v29, v25

    if-ltz v4, :cond_7

    .line 19
    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move/from16 v16, v13

    move-object/from16 p4, v14

    iget-wide v13, v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v13

    sub-double v25, v5, v11

    mul-double v3, v3, v25

    sub-double/2addr v9, v11

    div-double/2addr v3, v9

    add-double/2addr v3, v13

    if-eqz p5, :cond_6

    cmpg-double v9, v3, v7

    if-gez v9, :cond_8

    goto :goto_4

    :cond_6
    cmpl-double v9, v3, v7

    if-lez v9, :cond_8

    :goto_4
    move-wide v7, v3

    const/16 v21, 0x1

    goto :goto_5

    :cond_7
    move/from16 v16, v13

    move-object/from16 p4, v14

    if-eqz v21, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v14, p4

    move/from16 v13, v16

    move-wide/from16 v11, v27

    move-wide/from16 v9, v31

    goto :goto_3

    :cond_9
    move-wide/from16 v31, v9

    move-wide/from16 v27, v11

    move-object/from16 p4, v14

    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 20
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_d

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v3, v3, 0x1

    .line 22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-wide v11, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v13, v11, v5

    move v15, v3

    iget-wide v2, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v29, v5, v2

    mul-double v13, v13, v29

    cmpl-double v16, v13, v25

    if-ltz v16, :cond_b

    .line 24
    iget-wide v13, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v13, v9

    sub-double v29, v5, v11

    mul-double v13, v13, v29

    sub-double/2addr v2, v11

    div-double/2addr v13, v2

    add-double/2addr v13, v9

    if-eqz p5, :cond_a

    cmpg-double v2, v13, v7

    if-gez v2, :cond_c

    goto :goto_8

    :cond_a
    cmpl-double v2, v13, v7

    if-lez v2, :cond_c

    :goto_8
    move-wide v7, v13

    const/4 v4, 0x1

    const/16 v21, 0x1

    goto :goto_9

    :cond_b
    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    move-object/from16 v2, p2

    move v3, v15

    goto :goto_7

    :cond_d
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    :goto_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v12, v10, v5

    iget-wide v14, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v29, v5, v14

    mul-double v12, v12, v29

    cmpl-double v16, v12, v25

    if-ltz v16, :cond_f

    .line 29
    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v12, v0

    sub-double v29, v5, v10

    mul-double v12, v12, v29

    sub-double/2addr v14, v10

    div-double/2addr v12, v14

    add-double/2addr v12, v0

    if-eqz p5, :cond_e

    cmpg-double v0, v12, v7

    if-gez v0, :cond_10

    goto :goto_c

    :cond_e
    cmpl-double v0, v12, v7

    if-lez v0, :cond_10

    :goto_c
    move-wide v7, v12

    const/4 v3, 0x1

    const/16 v21, 0x1

    goto :goto_d

    :cond_f
    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_b

    :cond_11
    :goto_e
    if-eqz v21, :cond_12

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_12
    move-object/from16 v1, p2

    :goto_f
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    add-double/2addr v5, v2

    move-object/from16 v0, p0

    move-object/from16 v14, p4

    move-object v2, v1

    move-wide/from16 v11, v27

    move-wide/from16 v9, v31

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_13
    move-object v1, v2

    move-wide/from16 v31, v9

    move-wide/from16 v27, v11

    move-object/from16 p4, v14

    const/4 v13, 0x0

    .line 31
    :goto_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_14

    .line 32
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v4, p4

    move-wide/from16 v5, v31

    move-wide/from16 v7, v27

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_14
    return-void
.end method

.method private h(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j:Z

    return v0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->e:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d:Ljava/util/List;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    if-le v2, v3, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v0, 0x0

    .line 6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    move-object v4, v0

    .line 8
    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;DZ)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v2, v3, :cond_3

    .line 5
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    goto :goto_0

    .line 6
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v2, v3, :cond_4

    .line 7
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    .line 8
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide v4, 0x408c200000000000L    # 900.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_6

    .line 10
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    :cond_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->i:D

    mul-double v4, v4, v4

    cmpl-double v6, v2, v4

    if-gez v6, :cond_8

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h:Z

    if-nez v2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v2, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h:Z

    return-object v1

    .line 14
    :cond_8
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object p2

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v3, 0x406c200000000000L    # 225.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_9

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h:Z

    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c:Ljava/util/List;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    if-le v2, v3, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v0, 0x0

    .line 6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v4, v0

    .line 8
    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;DZ)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j:Z

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->l:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->k:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public k(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/utils/b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->j:Z

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide v5, 0x406c200000000000L    # 225.0

    cmpg-double p2, v3, v5

    if-gez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const-string p1, "\u7ed3\u675f\u91c7\u96c6\u6807\u51c6\u8f68\u8ff9\u5f02\u5e38\uff1a\u6570\u636e\u4e3a\u7a7a"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/g;->a:Ljava/util/List;

    return-object p1
.end method
