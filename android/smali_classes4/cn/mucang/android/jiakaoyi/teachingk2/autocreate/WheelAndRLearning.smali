.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;
    }
.end annotation


# static fields
.field public static final j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:I

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

.field private f:D

.field private g:D

.field private volatile h:Z

.field private i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    const-string v1, "learning_wheel_and_radius"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->k:Ljava/util/List;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Front14:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Back14:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Front12:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Back12:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Front34:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Back34:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Front1:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Back1:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Front15:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->Back15:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    const v1, -0x140ed8

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d:I

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h:Z

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;

    invoke-direct {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->add(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->fit(Ljava/util/Collection;)[D

    move-result-object v0

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    aget-wide v3, v0, p0

    const/4 p0, 0x1

    aget-wide v5, v0, p0

    aget-wide v7, v0, v1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;-><init>(DDD)V

    return-object v9
.end method

.method private static c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")D"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_1

    .line 3
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    move-wide/from16 v22, v6

    iget-wide v6, v13, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->b:D

    .line 4
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    move/from16 v24, v1

    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->c:D

    mul-double v25, v6, v6

    mul-double v27, v0, v0

    add-double/2addr v4, v6

    add-double/2addr v8, v0

    add-double v2, v2, v25

    add-double v14, v14, v27

    mul-double v29, v25, v6

    add-double v10, v10, v29

    mul-double v29, v27, v0

    add-double v18, v18, v29

    mul-double v29, v6, v0

    add-double v22, v22, v29

    mul-double v6, v6, v27

    add-double v20, v20, v6

    mul-double v25, v25, v0

    add-double v16, v16, v25

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v6, v22

    move/from16 v1, v24

    goto :goto_0

    :cond_1
    move v0, v1

    move-wide/from16 v22, v6

    int-to-double v0, v0

    mul-double v6, v0, v2

    mul-double v12, v4, v4

    sub-double/2addr v6, v12

    mul-double v12, v0, v22

    mul-double v22, v4, v8

    sub-double v12, v12, v22

    mul-double v10, v10, v0

    mul-double v20, v20, v0

    add-double v10, v10, v20

    add-double v20, v2, v14

    mul-double v22, v20, v4

    sub-double v10, v10, v22

    mul-double v22, v0, v14

    mul-double v24, v8, v8

    sub-double v22, v22, v24

    mul-double v16, v16, v0

    mul-double v18, v18, v0

    add-double v16, v16, v18

    mul-double v20, v20, v8

    sub-double v16, v16, v20

    mul-double v18, v16, v12

    mul-double v20, v10, v22

    sub-double v18, v18, v20

    mul-double v22, v22, v6

    mul-double v20, v12, v12

    sub-double v24, v22, v20

    div-double v18, v18, v24

    mul-double v16, v16, v6

    mul-double v10, v10, v12

    sub-double v16, v16, v10

    sub-double v20, v20, v22

    div-double v16, v16, v20

    mul-double v4, v4, v18

    mul-double v8, v8, v16

    add-double/2addr v4, v8

    add-double/2addr v4, v2

    add-double/2addr v4, v14

    neg-double v2, v4

    div-double/2addr v2, v0

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    div-double v4, v18, v0

    div-double v0, v16, v0

    mul-double v18, v18, v18

    mul-double v16, v16, v16

    add-double v18, v18, v16

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v6

    sub-double v18, v18, v2

    .line 5
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    move-object/from16 v6, p1

    .line 6
    invoke-virtual {v6, v4, v5, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v2
.end method

.method private f(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    .line 2
    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->a:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    const v0, -0x140ed8

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    return-void
.end method

.method private h()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public b(Z)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    const/4 v13, 0x3

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v13, :cond_0

    .line 4
    invoke-virtual {v1, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->clear(Z)V

    .line 5
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->isFront()Z

    move-result v3

    if-eq v3, v11, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f(Ljava/util/List;)D

    move-result-wide v3

    .line 10
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-static {v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 11
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g:D

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_3

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;-><init>()V

    :cond_3
    move-object v15, v1

    .line 14
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g:D

    move-object v1, v15

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->addWR(DDDDZ)Z

    goto :goto_0

    .line 15
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v13, :cond_5

    const/4 v1, 0x0

    return-object v1

    .line 16
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 17
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/AutoLearnWheelAndR$WheelSteerFactor;

    move-result-object v1

    return-object v1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_4

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-string v1, "\u901f\u5ea6\u592a\u5feb\u4e86\uff0c\u8bf7\u51cf\u901f"

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->i:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 12
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g:D

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    if-nez v0, :cond_a

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    .line 16
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_6

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    .line 18
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->desc:Ljava/lang/String;

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 19
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xbb8

    cmp-long v1, v5, v7

    if-lez v1, :cond_7

    .line 20
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    :cond_7
    const/16 v1, 0x28

    .line 21
    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->isMatched(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 22
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d:I

    .line 23
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    .line 26
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;-><init>(IDD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 27
    :cond_8
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_9

    .line 28
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    .line 29
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u65b9\u5411\u76d8\u5b66\u4e60\u5b8c\u6210"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 30
    :cond_9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x493e0

    cmp-long p1, v0, v5

    if-lez p1, :cond_f

    .line 31
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c:J

    goto/16 :goto_2

    .line 32
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    const/16 v1, 0x29

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->isMatched(Lcn/mucang/android/jiakaoyi/signal/c/e;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_e

    .line 33
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;-><init>(IDD)V

    .line 34
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$a;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    .line 35
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    add-double/2addr v3, v1

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    .line 37
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_f

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->f:D

    const-wide v2, 0x407b800000000000L    # 440.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_f

    .line 38
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->c(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g:D

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->d:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fb5c28f5c28f5c3L    # 0.085

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_d

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p1, v0, v2

    if-gez p1, :cond_c

    goto :goto_1

    .line 40
    :cond_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g()V

    goto :goto_2

    .line 42
    :cond_d
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v0, "\u5b66\u4e60\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u8f66\u8eab\u6570\u636e\u548c\u65b9\u5411\u76d8\u6570\u636e\u662f\u5426\u6b63\u5e38"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 43
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g()V

    return-void

    .line 44
    :cond_e
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g()V

    :cond_f
    :goto_2
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;->desc:Ljava/lang/String;

    const-string v3, "\u8bf7\u6253"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : \u672a\u5b66\u4e60\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "\u5168\u90e8\u5b66\u4e60\u5b8c\u6210"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h:Z

    return-void
.end method

.method public j()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h:Z

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->h()Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning$WheelAction;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u505c\u6b62\u5b66\u4e60:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->g:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "\u5b66\u4e60\u5931\u8d25\uff0c\u8fd8\u6709\u65b9\u5411\u76d8\u89d2\u5ea6\u6ca1\u6709\u5b66\u4e60\u5b8c"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
