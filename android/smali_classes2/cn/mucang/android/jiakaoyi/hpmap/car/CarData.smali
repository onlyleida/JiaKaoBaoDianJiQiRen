.class public Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$Orientation;,
        Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;
    }
.end annotation


# static fields
.field public static final CarPointCount:I = 0x18


# instance fields
.field public antennaAngle:D

.field public backFrontDistance:D

.field public carPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;",
            ">;"
        }
    .end annotation
.end field

.field public leftMirrorInIndex:I

.field public leftMirrorOutIndex:I

.field public leftMirrorPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;",
            ">;"
        }
    .end annotation
.end field

.field public mainPosHeight:D

.field public rightMirrorInIndex:I

.field public rightMirrorOutIndex:I

.field public rightMirrorPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;",
            ">;"
        }
    .end annotation
.end field

.field private final srcPitches:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public wheelLeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelLeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelRightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelRightBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelRightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public final wheelTouchWidth:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorOutIndex:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorInIndex:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorOutIndex:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorInIndex:I

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    :goto_0
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->srcPitches:Ljava/util/LinkedList;

    return-void
.end method

.method private static calL(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)D
    .locals 14

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v1, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v4

    .line 2
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v6, v8

    mul-double v6, v6, v4

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v8, v10

    mul-double v8, v8, v4

    .line 4
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v10, v12

    mul-double v10, v10, v4

    sub-double/2addr v1, v8

    sub-double/2addr v6, v10

    mul-double v1, v1, v1

    mul-double v6, v6, v6

    add-double/2addr v1, v6

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateCenter(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v0, p2

    neg-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, v1

    move-object v1, v6

    move-wide v2, v10

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, -0x10000000000001L

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v19, v1

    move-wide v12, v3

    move-wide/from16 v22, v12

    move-wide/from16 v24, v22

    move-wide/from16 v3, v19

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v7, v22, v14

    if-lez v7, :cond_2

    move-object/from16 v7, p5

    .line 9
    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v22, v14

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    .line 10
    :goto_2
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v16, v24, v14

    if-lez v16, :cond_3

    move-wide/from16 v24, v14

    .line 11
    :cond_3
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    cmpl-double v16, v12, v14

    if-lez v16, :cond_4

    move-wide v12, v14

    .line 12
    :cond_4
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpg-double v16, v19, v14

    move-object/from16 v7, p4

    if-gez v16, :cond_5

    .line 13
    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v19, v14

    .line 14
    :cond_5
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpg-double v16, v3, v14

    if-gez v16, :cond_6

    move-wide v3, v14

    .line 15
    :cond_6
    iget-wide v14, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    cmpg-double v5, v1, v14

    if-gez v5, :cond_1

    move-wide v1, v14

    goto :goto_1

    :cond_7
    move-object/from16 v7, p4

    add-double/2addr v12, v1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v26, v12, v0

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v12, v5

    move-wide/from16 v13, v22

    move-wide v15, v3

    move-wide/from16 v17, v26

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v12, v2

    move-wide/from16 v13, v19

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 18
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v12, v4

    move-wide/from16 v15, v24

    invoke-direct/range {v12 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 19
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v21, v12

    invoke-direct/range {v21 .. v27}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    neg-double v8, v8

    move-object v0, v5

    move-object v1, v6

    move-object v13, v2

    move-wide v2, v10

    move-object v15, v4

    move-object v14, v5

    move-wide v4, v8

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v0, v13

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v0, v15

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v0, v12

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p0, p5

    move-object/from16 p1, v6

    move-wide/from16 p2, v10

    move-wide/from16 p4, v8

    .line 25
    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v0, v14, v13, v15, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0
.end method

.method private static mean(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public update(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDLcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;D)Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    double-to-float v1, v1

    .line 1
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    float-to-double v1, v1

    .line 2
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    cmpl-double v8, v4, v9

    if-lez v8, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p4

    .line 4
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 7
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;-><init>()V

    .line 8
    iput-wide v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    .line 9
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/car/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/car/a;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 15
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v5, :cond_1

    .line 16
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-virtual {v5, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    goto :goto_1

    .line 17
    :cond_2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    .line 19
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorPoints:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/car/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/car/a;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 23
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v5, :cond_3

    .line 24
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-virtual {v5, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    .line 27
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorPoints:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    sget-object v4, Lcn/mucang/android/jiakaoyi/hpmap/car/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/car/a;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 31
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v5, :cond_5

    .line 32
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-virtual {v5, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 35
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 36
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 37
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 38
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 39
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 40
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v4, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 41
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->calL(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)D

    move-result-wide v4

    iput-wide v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    .line 42
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->backFrontDistance:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v6, v6, v17

    add-double v18, v4, v6

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->backFrontDistance:D

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v6, v6, v20

    add-double v20, v4, v6

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object/from16 v17, v9

    move-wide/from16 v22, v4

    invoke-direct/range {v17 .. v23}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    if-eqz p8, :cond_8

    .line 43
    invoke-virtual/range {p8 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 44
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 45
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    double-to-float v5, v1

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpl-double v10, v4, v6

    if-lez v10, :cond_7

    .line 46
    invoke-virtual/range {p8 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->c()V

    goto :goto_4

    .line 47
    :cond_7
    invoke-virtual/range {p8 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->d()V

    :cond_8
    :goto_4
    if-eqz p8, :cond_a

    .line 48
    invoke-virtual/range {p8 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 49
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 50
    invoke-virtual {v3, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide/16 v11, 0x0

    cmpl-double v17, v4, v11

    if-lez v17, :cond_9

    sub-double v11, v1, v6

    const-wide/16 v5, 0x0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    move-object v4, v10

    move-wide/from16 p3, v11

    move-object v11, v8

    move-wide/from16 v7, v17

    .line 51
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    const-wide/16 v19, 0x0

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 52
    invoke-virtual/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    move-object v9, v4

    move-wide/from16 v4, p3

    goto :goto_5

    :cond_9
    move-object v11, v8

    add-double v23, v1, v6

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v4, v10

    .line 53
    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 54
    invoke-virtual/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    move-object v9, v4

    move-wide/from16 v4, v23

    :goto_5
    double-to-float v4, v4

    .line 55
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    float-to-double v4, v4

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    goto :goto_6

    :cond_a
    move-wide v4, v11

    move-object v11, v8

    .line 57
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-wide v6, v4

    move-wide v4, v1

    .line 58
    :goto_6
    iput-object v3, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 59
    iput-object v9, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 60
    iput-wide v4, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_b

    .line 67
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_b
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_c

    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_c
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_d

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_d
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_e

    .line 73
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_e
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 78
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_f
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 80
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-object v12, v10

    move-object v5, v11

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move-object/from16 p3, v5

    move-wide/from16 v17, v6

    .line 83
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->mainPosHeight:D

    const-wide/high16 v19, 0x403e000000000000L    # 30.0

    sub-double v5, v5, v19

    mul-double v5, v5, v13

    mul-double v13, v5, v8

    mul-double v5, v5, v10

    move-wide/from16 v19, v8

    .line 84
    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    .line 85
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 86
    invoke-virtual {v9, v13, v14, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 p4, v5

    .line 87
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->mainPosHeight:D

    mul-double v5, v5, v15

    sub-double v5, v7, v5

    iput-wide v5, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-wide/from16 v5, p4

    goto :goto_7

    :cond_11
    if-eqz p8, :cond_13

    .line 88
    invoke-virtual/range {p8 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->a()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_13

    .line 89
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->srcPitches:Ljava/util/LinkedList;

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 90
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->srcPitches:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_12

    .line 91
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->srcPitches:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 92
    :cond_12
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->srcPitches:Ljava/util/LinkedList;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->mean(Ljava/util/List;)D

    move-result-wide v5

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 95
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->mainPosHeight:D

    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    sub-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v13, v13, v5

    mul-double v7, v7, v13

    mul-double v13, v13, v1

    .line 96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 97
    invoke-virtual {v2, v7, v8, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_8

    :cond_13
    const-wide v1, -0x3f60c00000000000L    # -2000.0

    cmpl-double v3, p9, v1

    if-lez v3, :cond_16

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v3, p9, v1

    if-gez v3, :cond_16

    .line 98
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    const-wide v1, 0x4041800000000000L    # 35.0

    goto :goto_a

    :cond_15
    :goto_9
    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    :goto_a
    div-double v1, p9, v1

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 100
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v4, p3

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 101
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 104
    iget-object v8, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v8

    move-object/from16 p2, v3

    move-wide/from16 p3, v6

    move-wide/from16 p5, v1

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 105
    iget-object v8, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v8

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 106
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 107
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p1, v3

    invoke-virtual/range {p1 .. p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_b

    :cond_16
    move-object/from16 v4, p3

    .line 108
    :goto_b
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    invoke-static {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 109
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    invoke-static {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 110
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    invoke-static {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 111
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    invoke-static {v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 112
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 113
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->tailPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 114
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-wide/from16 p5, v17

    move-object/from16 p7, v5

    move-object/from16 p8, v1

    invoke-static/range {p3 .. p8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->calculateCenter(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 115
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 116
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    .line 123
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 124
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 125
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 126
    :cond_17
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 127
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 128
    :cond_18
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    const-wide v7, -0x10000000000001L

    const/4 v3, -0x1

    if-eqz v1, :cond_1c

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorInIndex:I

    if-eq v1, v3, :cond_19

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorOutIndex:I

    if-ne v1, v3, :cond_1c

    .line 129
    :cond_19
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    move-wide v13, v7

    const/4 v9, 0x0

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 130
    :goto_c
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_1c

    .line 131
    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    neg-double v5, v10

    move-object/from16 p3, v2

    move-object/from16 p4, v12

    move-wide/from16 p5, v19

    move-wide/from16 p7, v5

    invoke-virtual/range {p3 .. p8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 132
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v2, v5, v13

    if-lez v2, :cond_1a

    .line 133
    iput v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorInIndex:I

    move-wide v13, v5

    :cond_1a
    cmpg-double v2, v5, v15

    if-gez v2, :cond_1b

    .line 134
    iput v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorOutIndex:I

    move-wide v15, v5

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 135
    :cond_1c
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    if-eqz v1, :cond_20

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorInIndex:I

    if-eq v1, v3, :cond_1d

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorOutIndex:I

    if-ne v1, v3, :cond_20

    .line 136
    :cond_1d
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v2, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 137
    :goto_d
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 138
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    neg-double v13, v10

    move-object/from16 p3, v3

    move-object/from16 p4, v12

    move-wide/from16 p5, v19

    move-wide/from16 p7, v13

    invoke-virtual/range {p3 .. p8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 139
    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v3, v13, v7

    if-lez v3, :cond_1e

    .line 140
    iput v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorOutIndex:I

    move-wide v7, v13

    :cond_1e
    cmpg-double v3, v13, v5

    if-gez v3, :cond_1f

    .line 141
    iput v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorInIndex:I

    move-wide v5, v13

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 142
    :cond_20
    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorInIndex:I

    if-ltz v1, :cond_21

    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorInIndex:I

    if-ltz v2, :cond_21

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    if-eqz v2, :cond_21

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 143
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 144
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorOutIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 145
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorInIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 146
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorOutIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_e

    :cond_21
    const/4 v1, 0x0

    .line 147
    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 148
    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 149
    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 150
    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 151
    :goto_e
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelTouchWidth:D

    iput-wide v1, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelTouchWidth:D

    return-object v4
.end method
