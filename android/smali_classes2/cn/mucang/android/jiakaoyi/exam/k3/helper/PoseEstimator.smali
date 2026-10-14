.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;,
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;
    }
.end annotation


# static fields
.field private static final Factor:F = 300000.0f

.field private static final N:I = 0xc8

.field private static final PN:I = 0x4

.field private static final RN:I = 0xa

.field private static final Threshold:F = 400.0f


# instance fields
.field private currentPose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

.field private d1Radius:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private distance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private lastDegree:F

.field private lastRadius:F

.field private lastSpeed:F

.field private lastTime:J

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private poses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;",
            ">;"
        }
    .end annotation
.end field

.field private radius:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->d1Radius:Ljava/util/LinkedList;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->currentPose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    return-void
.end method

.method public static getCircleCenter(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v7, v3, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v9

    .line 2
    iget-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v15, v11, v13

    mul-double v15, v15, v9

    mul-double v17, v3, v3

    mul-double v19, v11, v11

    add-double v17, v17, v19

    mul-double v5, v5, v5

    sub-double v17, v17, v5

    mul-double v13, v13, v13

    sub-double v17, v17, v13

    .line 3
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v3

    mul-double v5, v5, v9

    .line 4
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v11

    mul-double v3, v3, v9

    mul-double v9, v15, v5

    mul-double v11, v3, v7

    sub-double/2addr v9, v11

    const-wide v11, -0x4224832026284245L    # -1.0E-10

    cmpl-double v0, v9, v11

    if-lez v0, :cond_0

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, v9, v11

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 6
    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v11, v11, v11

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v13, v13, v13

    add-double/2addr v11, v13

    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v13, v13, v13

    sub-double/2addr v11, v13

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v1, v1, v1

    sub-double/2addr v11, v1

    mul-double v15, v15, v11

    mul-double v3, v3, v17

    sub-double/2addr v15, v3

    div-double v1, v15, v9

    .line 7
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v5, v5, v17

    mul-double v7, v7, v11

    sub-double/2addr v5, v7

    div-double/2addr v5, v9

    .line 8
    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v0
.end method


# virtual methods
.method public put(FFJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x0

    .line 2
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    if-nez v5, :cond_0

    .line 3
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    invoke-virtual {v5, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastSpeed:F

    add-float/2addr v5, v2

    float-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v10

    const-wide v12, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v8, v12

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastTime:J

    sub-long v12, v3, v12

    long-to-double v12, v12

    mul-double v8, v8, v12

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v8, v8, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v12

    double-to-float v5, v8

    .line 6
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastDegree:F

    add-float/2addr v9, v1

    float-to-double v12, v9

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 8
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 9
    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v14, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    add-double v12, v12, v16

    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 10
    iget-wide v12, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v14, v14, v8

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 11
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 12
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v8, 0xc8

    if-le v5, v8, :cond_1

    .line 14
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 15
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 16
    :goto_1
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v8, v10, :cond_3

    .line 17
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->distance:Ljava/util/LinkedList;

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x43c80000    # 400.0f

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_2

    if-lt v8, v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, -0x1

    :goto_2
    if-ltz v8, :cond_d

    .line 18
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v12, 0x0

    if-le v8, v11, :cond_6

    .line 20
    div-int/lit8 v10, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    move-wide v14, v12

    :goto_3
    if-lez v8, :cond_5

    .line 21
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v7, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v16

    cmpl-double v11, v16, v14

    if-lez v11, :cond_4

    move v10, v8

    move-wide/from16 v14, v16

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 22
    :cond_5
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_4

    .line 23
    :cond_6
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->points:Ljava/util/LinkedList;

    div-int/2addr v8, v11

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    :goto_4
    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->getCircleCenter(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x42480000    # 50.0f

    if-nez v9, :cond_8

    .line 25
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 26
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastRadius:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v11

    if-lez v8, :cond_7

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastRadius:F

    mul-float v8, v8, v10

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_7

    .line 27
    :cond_8
    invoke-virtual {v9, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    double-to-float v6, v14

    const v14, 0x48927c00    # 300000.0f

    cmpl-float v15, v6, v14

    if-lez v15, :cond_9

    const v6, 0x48927c00    # 300000.0f

    :cond_9
    div-float/2addr v14, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v14, v6

    .line 28
    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastRadius:F

    sub-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_a

    .line 29
    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastRadius:F

    add-float/2addr v14, v6

    mul-float v14, v14, v10

    .line 30
    :cond_a
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/high16 v6, 0x41c00000    # 24.0f

    cmpl-float v6, v14, v6

    if-ltz v6, :cond_c

    .line 31
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    cmpg-double v8, v6, v12

    if-gez v8, :cond_b

    .line 32
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 33
    :cond_b
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_6

    .line 34
    :cond_c
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_6
    move v6, v14

    goto :goto_7

    .line 35
    :cond_d
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 36
    :goto_7
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_e

    .line 37
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 38
    :cond_e
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_f

    .line 39
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 40
    :cond_f
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->poses:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_10
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    .line 41
    sget-object v10, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    if-ne v9, v10, :cond_11

    goto :goto_8

    .line 42
    :cond_11
    sget-object v10, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    if-ne v9, v10, :cond_12

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 43
    :cond_12
    sget-object v10, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    if-ne v9, v10, :cond_10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_13
    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v9, 0x3

    if-lt v5, v9, :cond_14

    cmpl-float v5, v6, v7

    if-ltz v5, :cond_14

    .line 44
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->currentPose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    goto :goto_9

    :cond_14
    if-lt v8, v9, :cond_15

    cmpl-float v5, v6, v7

    if-ltz v5, :cond_15

    .line 45
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->currentPose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    goto :goto_9

    .line 46
    :cond_15
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->currentPose:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    .line 47
    :goto_9
    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastSpeed:F

    .line 48
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastDegree:F

    .line 49
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastTime:J

    .line 50
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->radius:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;->lastRadius:F

    return-void
.end method
