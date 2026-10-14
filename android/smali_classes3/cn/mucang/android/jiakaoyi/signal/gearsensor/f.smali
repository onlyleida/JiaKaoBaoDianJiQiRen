.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;,
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;
    }
.end annotation


# instance fields
.field final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public d:Z

.field private e:I

.field private f:F

.field private final g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private final k:D

.field private l:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 7
    iput-wide p6, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->k:D

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    .line 9
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->j:Z

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e()V

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->l:F

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;

    .line 14
    iget p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->l:F

    float-to-double p3, p3

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->a(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;)D

    move-result-wide p5

    add-double/2addr p3, p5

    double-to-float p2, p3

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->l:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(DDDDDDDD)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f(DDDDDDDD)Z

    move-result p0

    return p0
.end method

.method private d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1
    invoke-virtual/range {p2 .. p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    :goto_0
    const/4 v6, 0x0

    .line 2
    invoke-virtual/range {p2 .. p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 3
    iget-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    cmpg-double v11, v7, v9

    if-gez v11, :cond_2

    const/4 v6, 0x1

    if-nez p7, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v11, v7, v9

    if-gez v11, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 4
    :goto_1
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v12, v6, v8

    if-lez v12, :cond_3

    .line 5
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 6
    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    mul-double v8, v8, v8

    mul-double v10, v6, v6

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v15

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 7
    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move/from16 v17, v14

    add-double v14, v8, v10

    neg-double v8, v8

    add-double/2addr v8, v10

    sub-double v18, v14, v10

    mul-double v18, v18, v6

    .line 8
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v1, v18, v3

    sub-double v10, v8, v10

    mul-double v10, v10, v6

    add-double/2addr v10, v3

    .line 9
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v1, v2, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v10, v11, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iget-wide v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    const/4 v12, 0x0

    move-object v6, v3

    move-object v8, v1

    move-object v9, v13

    invoke-direct/range {v6 .. v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p2

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    move/from16 v17, v14

    .line 10
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v4, p2

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v6

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    div-double/2addr v2, v6

    move-object/from16 v14, p5

    .line 11
    iget-wide v6, v14, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    mul-double v6, v6, v6

    mul-double v8, v2, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 12
    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v10, v6, v8

    neg-double v6, v6

    add-double/2addr v6, v8

    sub-double v15, v10, v8

    mul-double v15, v15, v2

    .line 13
    iget-wide v0, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v14, v15, v0

    sub-double v8, v6, v8

    mul-double v8, v8, v2

    add-double/2addr v8, v0

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v10, v11, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iget-wide v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    const/4 v12, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v13

    invoke-direct/range {v6 .. v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a()V

    .line 16
    invoke-virtual/range {p6 .. p6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a()V

    move-object/from16 v0, p3

    .line 17
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v6

    .line 18
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v8

    mul-double v8, v2, v2

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    const-wide v10, 0x2b2bff2ee48e0530L    # 1.0E-100

    add-double/2addr v8, v10

    .line 19
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-object/from16 v10, p4

    .line 20
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    mul-double v2, v2, v11

    div-double/2addr v2, v8

    iget-wide v14, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v2, v14

    mul-double v11, v11, v6

    div-double/2addr v11, v8

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v11, v6

    invoke-virtual {v4, v2, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-virtual/range {p4 .. p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a()V

    if-eqz v17, :cond_4

    :goto_3
    return-void

    :cond_4
    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    move-object v3, v10

    move-object/from16 v4, p5

    goto/16 :goto_0
.end method

.method private e()V
    .locals 22

    move-object/from16 v8, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->i:Ljava/util/List;

    .line 2
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 3
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V

    .line 4
    iget-wide v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->k:D

    iput-wide v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    const-wide v1, 0x3feeb851eb851eb8L    # 0.96

    .line 5
    iput-wide v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->b:D

    .line 6
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;

    invoke-direct {v11, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 7
    iput-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 8
    iput-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->b:D

    .line 9
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$a;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    iput-wide v0, v12, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->a:D

    const-wide v0, 0x3ff07ae147ae147bL    # 1.03

    .line 11
    iput-wide v0, v12, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->b:D

    .line 12
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 14
    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    add-int/lit8 v14, v0, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_2

    .line 16
    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move v15, v14

    iget-wide v13, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v16, v5, v13

    move-object/from16 v18, v4

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v19, v13, v3

    mul-double v16, v16, v19

    const-wide/16 v19, 0x0

    cmpl-double v21, v16, v19

    if-ltz v21, :cond_1

    sub-double v16, v13, v5

    .line 17
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v20, v11

    move-object/from16 v7, v18

    move-object/from16 v18, v10

    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v1, v10

    mul-double v16, v16, v1

    sub-double/2addr v3, v5

    div-double v16, v16, v3

    add-double v1, v16, v10

    invoke-virtual {v9, v13, v14, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v20, v11

    move-object/from16 v7, v18

    move-object/from16 v18, v10

    goto :goto_1

    :cond_2
    move-object v7, v4

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    move v15, v14

    :goto_1
    move v10, v1

    :goto_2
    if-nez v10, :cond_3

    goto :goto_4

    .line 18
    :cond_3
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->i:Ljava/util/List;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object v2, v9

    move-object v3, v7

    move-object v4, v12

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Z)V

    :goto_4
    move v1, v10

    move v0, v15

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_5
    move-object/from16 v18, v10

    move-object/from16 v20, v11

    .line 19
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v0, 0x3ff028f5c28f5c29L    # 1.01

    .line 20
    iput-wide v0, v12, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;->b:D

    .line 21
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->i:Ljava/util/List;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v2, v9

    move-object v4, v12

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$c;Z)V

    return-void
.end method

.method private static f(DDDDDDDD)Z
    .locals 29

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    .line 1
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 2
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    const/16 v20, 0x0

    cmpg-double v21, v16, v18

    if-gez v21, :cond_0

    return v20

    .line 3
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 4
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v21, v16, v18

    if-gez v21, :cond_1

    return v20

    .line 5
    :cond_1
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 6
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v21, v16, v18

    if-gez v21, :cond_2

    return v20

    .line 7
    :cond_2
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 8
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    cmpg-double v21, v16, v18

    if-gez v21, :cond_3

    return v20

    :cond_3
    sub-double v16, v14, v10

    sub-double v18, v12, v0

    sub-double v21, v14, v2

    sub-double v23, v12, v4

    sub-double/2addr v14, v6

    sub-double/2addr v12, v8

    mul-double v25, v18, v16

    mul-double v27, v21, v12

    sub-double v25, v25, v27

    mul-double v23, v23, v16

    mul-double v14, v14, v12

    sub-double v23, v23, v14

    mul-double v25, v25, v23

    const-wide/16 v12, 0x0

    cmpl-double v14, v25, v12

    if-lez v14, :cond_4

    return v20

    :cond_4
    sub-double/2addr v8, v0

    sub-double/2addr v6, v2

    sub-double v2, v10, v2

    sub-double v0, v4, v0

    mul-double v8, v8, v6

    mul-double v2, v2, v0

    sub-double/2addr v8, v2

    mul-double v18, v18, v6

    mul-double v21, v21, v0

    sub-double v18, v18, v21

    mul-double v8, v8, v18

    cmpl-double v0, v8, v12

    if-gtz v0, :cond_5

    const/16 v20, 0x1

    :cond_5
    return v20
.end method

.method private static g(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.1f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(DDDDD)F
    .locals 21

    move-object/from16 v0, p0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    cmpg-double v3, p9, v1

    if-gez v3, :cond_0

    .line 1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    add-int/2addr v1, v10

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    goto :goto_0

    .line 2
    :cond_0
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    .line 3
    :goto_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v1, p1, v12

    sub-double v3, v12, v14

    mul-double v5, v1, v3

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    sub-double v16, v12, p5

    mul-double v1, v1, v16

    const/4 v9, 0x0

    cmpl-double v6, v1, v7

    if-lez v6, :cond_2

    .line 5
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    .line 6
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    .line 7
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    .line 8
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    .line 9
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->j:Z

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    sub-double v1, p5, v12

    mul-double v1, v1, v3

    cmpl-double v3, v1, v7

    if-lez v3, :cond_3

    .line 10
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    .line 11
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    .line 12
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    .line 13
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    .line 14
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->j:Z

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 15
    :goto_3
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    if-nez v2, :cond_5

    sub-double v2, p1, v14

    sub-double v4, v14, v12

    mul-double v2, v2, v4

    cmpl-double v4, v2, v7

    if-lez v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    sub-double v16, p1, p5

    .line 16
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v6, v2, v4

    if-lez v6, :cond_7

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;

    .line 18
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    float-to-double v6, v2

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v19, v6

    move-wide/from16 v6, p5

    const/4 v11, 0x0

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f$b;->b(DDDD)D

    move-result-wide v1

    add-double v6, v19, v1

    double-to-float v1, v6

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_6

    .line 19
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    :cond_6
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_6

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->n()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    .line 21
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->h:Z

    if-nez v2, :cond_b

    const-wide/high16 v3, 0x400c000000000000L    # 3.5

    cmpl-double v5, v14, v12

    if-lez v5, :cond_8

    add-double v5, p1, v3

    cmpl-double v7, v5, v14

    if-gtz v7, :cond_b

    :cond_8
    cmpg-double v5, v14, v12

    if-gez v5, :cond_9

    sub-double v3, p1, v3

    cmpg-double v5, v3, v14

    if-ltz v5, :cond_b

    :cond_9
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->l:F

    mul-float v4, v4, v1

    cmpl-float v1, v3, v4

    if-ltz v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 22
    :goto_8
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    if-nez v3, :cond_10

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    float-to-double v3, v3

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->l:F

    float-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double v5, v5, v7

    cmpl-double v7, v3, v5

    if-gtz v7, :cond_10

    if-eqz v1, :cond_f

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->e:I

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    if-lt v1, v10, :cond_c

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v8, p1, v6

    sub-double v6, p1, v6

    mul-double v8, v8, v6

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, p3, v5

    sub-double v5, p3, v5

    mul-double v11, v11, v5

    add-double/2addr v8, v11

    cmpg-double v5, v8, v3

    if-ltz v5, :cond_10

    :cond_c
    if-eqz v2, :cond_d

    if-lt v1, v10, :cond_d

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v8, p1, v6

    sub-double v6, p1, v6

    mul-double v8, v8, v6

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, p3, v5

    sub-double v5, p3, v5

    mul-double v11, v11, v5

    add-double/2addr v8, v11

    cmpg-double v5, v8, v3

    if-ltz v5, :cond_10

    :cond_d
    if-eqz v2, :cond_e

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    :cond_e
    const/4 v2, 0x5

    if-le v1, v2, :cond_f

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    :cond_10
    :goto_9
    iput-boolean v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    .line 23
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , reach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , nowArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , srcArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->g(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GearSensor"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_11
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    return v1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
