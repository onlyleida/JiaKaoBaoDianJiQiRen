.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static final w:I

.field private static final x:I

.field private static final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:I

.field private d:D

.field private e:Z

.field private f:F

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:D

.field private p:D

.field private q:D

.field private r:J

.field private s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private v:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->w:I

    const/16 v0, 0x2d0

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->x:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    .line 4
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->w:I

    const/16 v0, 0x230

    .line 5
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->x:I

    .line 6
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->y:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->c:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->e:Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->l:Ljava/util/List;

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->m:Z

    .line 12
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->u:Ljava/util/List;

    return-void
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 19

    .line 1
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v1, v1

    .line 3
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->x:I

    int-to-double v4, v3

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    neg-int v4, v3

    int-to-double v4, v4

    .line 4
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 5
    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->w:I

    int-to-double v4, v4

    mul-double v1, v1, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v9, 0x1

    const/4 v10, -0x1

    cmpg-double v11, v3, v7

    if-gez v11, :cond_1

    cmpl-double v3, v1, v5

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-double v1, v1

    mul-double v1, v1, v7

    .line 7
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 8
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 9
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    cmpl-double v11, v1, v5

    if-lez v11, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    mul-int/lit8 v2, v1, 0x5a

    int-to-double v5, v2

    add-double/2addr v7, v5

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 11
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v3

    add-double/2addr v7, v11

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    add-double/2addr v11, v5

    move-object/from16 v2, p6

    invoke-virtual {v2, v7, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x0

    .line 12
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v7, :cond_4

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v5, :cond_5

    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 15
    :cond_4
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v6, v7, :cond_6

    :cond_5
    :goto_3
    const/4 v9, -0x1

    goto :goto_4

    .line 16
    :cond_6
    invoke-interface/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v6, v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :cond_8
    :goto_4
    int-to-double v5, v1

    mul-double v5, v5, p3

    int-to-double v7, v9

    mul-double v5, v5, v7

    div-double/2addr v5, v3

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    move-wide v15, v5

    move-wide/from16 v17, v3

    .line 19
    invoke-virtual/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v13, p2

    .line 20
    invoke-virtual/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object/from16 p0, v0

    move-object/from16 p1, p6

    move-wide/from16 p2, v5

    move-wide/from16 p4, v3

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
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

    if-eqz v0, :cond_4

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
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 5
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    if-eqz v2, :cond_3

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 5

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 2
    iget v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v2, v3, :cond_0

    .line 3
    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static f(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3fc9c2778b7c5833L    # 0.20124716101480686

    mul-double v0, v0, v2

    const-wide v2, 0x3feb5207c6b2c5a1L    # 0.8537634735895844

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->e(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public e(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v15, 0x2

    const/4 v8, 0x0

    if-nez v5, :cond_12

    .line 2
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v9

    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 5
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    iput v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    .line 10
    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    .line 11
    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    iput-wide v13, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    .line 12
    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    iput v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    .line 13
    iget-boolean v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    iput-boolean v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    .line 14
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v6

    .line 16
    iget-object v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-eqz v7, :cond_0

    .line 17
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 18
    :goto_0
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 19
    invoke-static {v7}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    .line 21
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    iput v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->c:I

    .line 22
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6cd5\u7ebf\u6587\u672c:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " \u9884\u62a5\u64cd\u4f5c\u70b9\u6587\u672c:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u9884\u6d4b\u64ad\u653e\u65f6\u95f4:"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->c:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->f(I)D

    move-result-wide v22

    move-object v14, v13

    int-to-double v12, v9

    mul-double v12, v12, v10

    add-double v12, v22, v12

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 23
    :goto_2
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v13, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    const-string v5, "key-normal-speed-config"

    .line 26
    invoke-static {v5, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->e:Z

    if-eqz v5, :cond_3

    const-string v5, "key-normal-speed-value"

    const/high16 v7, 0x40000000    # 2.0f

    .line 27
    invoke-static {v5, v7}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v5

    iput v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->f:F

    .line 28
    :cond_3
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->c:Ljava/util/List;

    invoke-direct {v0, v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    .line 29
    :cond_4
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_6

    .line 30
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    div-int/2addr v12, v15

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-byte v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v12

    .line 32
    sget-object v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->y:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_7

    .line 33
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 35
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-virtual {v7, v14}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->y:Ljava/util/Map;

    const/16 v7, 0x14

    invoke-static {v13, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 37
    :cond_7
    :goto_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->y:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->u:Ljava/util/List;

    .line 38
    iget v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    if-ne v5, v15, :cond_8

    .line 39
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v13, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    move-object/from16 v14, p2

    invoke-static {v14, v5, v12, v7, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->l:Ljava/util/List;

    goto :goto_6

    :cond_8
    move-object/from16 v14, p2

    .line 40
    :goto_6
    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const-string v5, "\u56de\u6b63"

    const-wide/16 v20, 0x0

    cmp-long v7, v12, v20

    if-nez v7, :cond_d

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    if-ne v7, v15, :cond_d

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v7, v12, :cond_d

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 41
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eq v7, v12, :cond_9

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-ne v7, v12, :cond_d

    .line 42
    :cond_9
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 43
    :cond_a
    move-object v5, v2

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 44
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 45
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 46
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v12, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    .line 47
    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v23

    sub-double v12, v12, v23

    double-to-float v7, v12

    .line 48
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v12, v7

    .line 49
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v25

    .line 50
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v7, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v27, 0x4014000000000000L    # 5.0

    cmpg-double v7, v12, v27

    if-gez v7, :cond_c

    const-wide/high16 v18, 0x403e000000000000L    # 30.0

    cmpg-double v7, v25, v18

    if-ltz v7, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v5, 0x1

    goto :goto_9

    :cond_c
    :goto_8
    const-wide/high16 v27, 0x402c000000000000L    # 14.0

    cmpg-double v7, v12, v27

    if-gez v7, :cond_11

    const-wide v12, 0x405a400000000000L    # 105.0

    cmpg-double v7, v25, v12

    if-gez v7, :cond_11

    const-wide v12, 0x4046800000000000L    # 45.0

    cmpg-double v7, v5, v12

    if-gez v7, :cond_11

    goto :goto_7

    .line 51
    :goto_9
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->n:Z

    const-wide v5, 0x4066800000000000L    # 180.0

    add-double v5, v23, v5

    double-to-float v5, v5

    .line 52
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    goto/16 :goto_a

    .line 53
    :cond_d
    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const-wide/high16 v23, 0x4028000000000000L    # 12.0

    const-wide/16 v20, 0x0

    cmp-long v7, v12, v20

    if-nez v7, :cond_f

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    if-ne v7, v15, :cond_f

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v7, v10, :cond_f

    .line 54
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 55
    :cond_e
    move-object v5, v2

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    .line 56
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 57
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    sub-double/2addr v6, v10

    double-to-float v5, v6

    .line 58
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v7, v5, v23

    if-gez v7, :cond_11

    .line 59
    invoke-direct {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    .line 60
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->n:Z

    double-to-float v5, v10

    .line 61
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    goto :goto_a

    :cond_f
    const-wide/16 v10, 0x0

    cmp-long v7, v12, v10

    if-nez v7, :cond_11

    .line 62
    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    if-ne v7, v15, :cond_11

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v7, v10, :cond_11

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    sget-object v10, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v7, v10, :cond_11

    .line 63
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 64
    :cond_10
    move-object v5, v2

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    .line 65
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 66
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v10, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    sub-double/2addr v6, v10

    double-to-float v5, v6

    .line 67
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v7, v5, v23

    if-gez v7, :cond_11

    .line 68
    invoke-direct {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    .line 69
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->n:Z

    double-to-float v5, v10

    .line 70
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    .line 71
    :cond_11
    :goto_a
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v7, v6, v10, v11}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_b

    :cond_12
    move-object/from16 v14, p2

    const/4 v9, 0x1

    .line 72
    :goto_b
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v5

    if-nez v5, :cond_13

    return v8

    .line 73
    :cond_13
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v5

    if-nez v5, :cond_14

    return v8

    .line 74
    :cond_14
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    .line 75
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-boolean v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    if-eqz v7, :cond_18

    .line 76
    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    int-to-double v6, v6

    cmpg-double v9, v2, v6

    if-lez v9, :cond_15

    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 77
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    int-to-double v4, v4

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_16

    :cond_15
    const/4 v8, 0x1

    :cond_16
    if-eqz v8, :cond_17

    .line 78
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    :cond_17
    return v8

    :cond_18
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 79
    iget-wide v10, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->q:D

    sub-double/2addr v10, v12

    double-to-float v7, v10

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    mul-float v7, v7, v6

    float-to-double v6, v7

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    iget-wide v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->r:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    add-double/2addr v10, v12

    div-double/2addr v6, v10

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    const-wide v10, 0x4029666666666666L    # 12.7

    .line 80
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    .line 81
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->r:J

    .line 82
    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->q:D

    .line 83
    iget v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    const-wide/16 v10, 0x0

    if-ltz v6, :cond_1e

    const/4 v6, 0x0

    .line 84
    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 85
    iput-wide v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    .line 86
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 87
    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x0

    .line 88
    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_1a

    .line 89
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_19

    goto :goto_d

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_1a
    const/4 v7, -0x1

    :goto_d
    const/4 v12, 0x1

    sub-int/2addr v7, v12

    :goto_e
    if-ltz v7, :cond_1e

    .line 90
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 91
    iget v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    iget v15, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    if-lt v13, v15, :cond_1c

    move-object/from16 v13, p4

    :cond_1b
    :goto_f
    const-wide/high16 v18, 0x403e000000000000L    # 30.0

    goto :goto_10

    :cond_1c
    move-object/from16 v13, p4

    .line 92
    invoke-static {v12, v13, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/l;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v15

    if-eqz v15, :cond_1d

    goto :goto_f

    .line 93
    :cond_1d
    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v12

    if-eqz v12, :cond_1b

    .line 94
    iget-object v15, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v15, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v23

    const-wide/high16 v27, 0x4079000000000000L    # 400.0

    cmpl-double v8, v23, v27

    if-ltz v8, :cond_1b

    .line 95
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->t:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v4, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 96
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide/high16 v18, 0x403e000000000000L    # 30.0

    sub-double v6, v6, v18

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    goto :goto_11

    :goto_10
    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const/4 v15, 0x2

    goto :goto_e

    .line 97
    :cond_1e
    :goto_11
    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    mul-double v12, v12, v12

    cmpl-double v2, v6, v12

    if-lez v2, :cond_1f

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 98
    invoke-virtual {v2, v4, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    cmpg-double v2, v6, v10

    if-gez v2, :cond_1f

    const/4 v2, 0x0

    return v2

    .line 99
    :cond_1f
    iget v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_20

    .line 100
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v2

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    invoke-virtual {v2, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->o(J)V

    .line 101
    :cond_20
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v6, 0x4099000000000000L    # 1600.0

    if-eqz v2, :cond_21

    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    cmpl-double v2, v12, v6

    if-lez v2, :cond_22

    .line 102
    :cond_21
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->m:Z

    if-nez v2, :cond_22

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->l:Ljava/util/List;

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    .line 103
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->m:Z

    .line 104
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->l:Ljava/util/List;

    invoke-direct {v4, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 105
    :cond_22
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v12, v2

    .line 106
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    cmpg-double v2, v6, v10

    if-gez v2, :cond_23

    .line 107
    iput-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    goto :goto_12

    :cond_23
    add-double/2addr v6, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v12

    .line 108
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    .line 109
    :goto_12
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->e:Z

    if-eqz v2, :cond_24

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->f:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_24

    float-to-double v6, v2

    .line 110
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    .line 111
    :cond_24
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->c:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->f(I)D

    move-result-wide v6

    int-to-double v8, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v12

    add-double/2addr v6, v8

    .line 112
    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    const-wide/16 v18, 0x0

    cmp-long v2, v12, v18

    if-nez v2, :cond_25

    sub-double/2addr v6, v8

    mul-double v6, v6, v15

    const-wide v8, 0x3fe3333333333333L    # 0.6

    .line 113
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 114
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide/high16 v12, 0x4099000000000000L    # 1600.0

    cmpg-double v2, v8, v12

    if-gez v2, :cond_25

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v6, v6, v8

    .line 115
    :cond_25
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    if-eqz v2, :cond_26

    const-wide v6, 0x3fd3333333333333L    # 0.3

    :cond_26
    const-wide v8, 0x3fd999999999999aL    # 0.4

    .line 116
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    mul-double v8, v8, v6

    const-wide v12, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v8, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v12

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 117
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 118
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    invoke-static {v2, v4, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 119
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v12

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v25, 0x0

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v4

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v28}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 120
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    move-object/from16 v23, v12

    move-object/from16 v24, v2

    invoke-virtual/range {v23 .. v28}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 121
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 122
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v13, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 123
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v23, p2

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    invoke-static/range {v23 .. v29}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 124
    const-class v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v11

    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;

    invoke-direct {v15, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v11, v15}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 125
    iget-boolean v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->n:Z

    const-string v15, ",wheel:"

    const-string v3, ",\u8ddd\u79bb\u4e0a\u4e00\u4e2a\u6559\u5b66\u70b9:"

    const-string v14, ",\u5b9e\u9645\u8ddd\u79bb:"

    move-object/from16 p6, v12

    move-object/from16 v16, v13

    const-string v12, ",\u64ad\u653e:"

    const-string v13, ",speed:"

    move-object/from16 v20, v2

    const-string v2, ",\u9884\u6d4b\u8ddd\u79bb:"

    if-eqz v11, :cond_2c

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    .line 126
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 127
    iget-boolean v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    if-eqz v4, :cond_27

    .line 128
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v18

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide v10, 0x3fcbcb7b1526e50dL    # 0.21714724095162588

    mul-double v6, v6, v10

    .line 129
    :cond_27
    iget-wide v10, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    mul-double v12, v12, v6

    add-double/2addr v10, v12

    .line 130
    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    const-wide/high16 v18, 0x40b9000000000000L    # 6400.0

    cmpg-double v4, v12, v18

    if-gez v4, :cond_2a

    iget-wide v12, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    move-object/from16 v21, v3

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    sub-double/2addr v12, v3

    double-to-float v3, v12

    .line 131
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_29

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    sub-double v12, v10, v12

    double-to-float v3, v12

    .line 132
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_28

    goto :goto_13

    :cond_28
    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v12, v21

    goto/16 :goto_15

    .line 133
    :cond_29
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e6\u53d13 : \u9884\u6d4b\u65f6\u95f4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u76ee\u6807\u89d2\u5ea6:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u5f53\u524d\u89d2\u5ea6:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u9884\u6d4b\u89d2\u5ea6:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u89d2\u901f\u5ea6:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    :goto_14
    const/4 v1, 0x1

    return v1

    :cond_2a
    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object v12, v3

    .line 137
    :goto_15
    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    const-wide v20, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v18, v20

    if-gez v1, :cond_2b

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p3, v4

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 138
    invoke-virtual {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p4, v15

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/16 v15, 0x0

    cmpl-double v1, v3, v15

    if-lez v1, :cond_2b

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e6\u53d14 : \u9884\u6d4b\u65f6\u95f4:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u76ee\u6807\u89d2\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->o:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u5f53\u524d\u89d2\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u9884\u6d4b\u89d2\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u89d2\u901f\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->p:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v1

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto/16 :goto_14

    :cond_2b
    const/4 v1, 0x0

    return v1

    :cond_2c
    move-object v11, v1

    move-object/from16 v21, v3

    move-object v1, v12

    move-object/from16 p4, v13

    move-object v3, v15

    .line 143
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->v:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v12, v18

    if-gez v15, :cond_2d

    const-wide v12, 0x408f400000000000L    # 1000.0

    :cond_2d
    move-object/from16 p3, v14

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 144
    iget-object v14, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    mul-double v18, v12, v12

    cmpg-double v22, v14, v18

    if-gtz v22, :cond_33

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v15, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v18, v1

    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 145
    invoke-static {v15, v14, v1, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v15, p6

    .line 146
    invoke-static {v14, v1, v4, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v15, v16

    move-object/from16 v14, v20

    .line 147
    invoke-static {v4, v1, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v15, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 148
    invoke-static {v4, v1, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 149
    :cond_2e
    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v10, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-lez v1, :cond_32

    .line 150
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->direCarDot:I

    if-eqz v1, :cond_31

    .line 151
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    if-ne v1, v2, :cond_2f

    const/4 v8, 0x1

    goto :goto_16

    :cond_2f
    const/4 v8, 0x0

    :goto_16
    if-eqz v8, :cond_30

    .line 152
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    :cond_30
    return v8

    .line 153
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e6\u53d12 : \u9884\u6d4b\u65f6\u95f4:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    goto/16 :goto_14

    :cond_32
    move-object/from16 v4, p4

    move-object/from16 v3, v18

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u56e0\u4e3a\u5411\u91cf\u4e0d\u6ee1\u8db3\u6ca1\u89e6\u53d1 : \u9884\u6d4b\u65f6\u95f4:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r;->d:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_33
    const/4 v1, 0x0

    return v1
.end method
