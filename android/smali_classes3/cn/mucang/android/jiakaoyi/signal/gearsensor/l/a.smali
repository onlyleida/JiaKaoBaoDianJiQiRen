.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private volatile E:Z

.field private volatile F:Z

.field private final G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private I:Z

.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private final n:[I

.field private o:I

.field public p:Z

.field private q:I

.field private volatile r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private volatile s:Z

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->a:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x0

    .line 7
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->k:F

    .line 8
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->l:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->m:F

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    const/4 v5, 0x0

    .line 10
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->o:I

    .line 11
    array-length v4, v4

    new-array v4, v4, [I

    .line 12
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->p:Z

    .line 13
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    const/4 v4, 0x0

    .line 14
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 15
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    .line 17
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    .line 18
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    .line 21
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->y:Z

    .line 22
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    .line 24
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->C:F

    .line 25
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->D:F

    .line 26
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E:Z

    .line 27
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F:Z

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->I:Z

    return-void
.end method

.method private static A([FLjava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    aget v1, p0, v2

    float-to-double v3, v1

    const/4 v1, 0x1

    .line 3
    aget v5, p0, v1

    float-to-double v5, v5

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    .line 5
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v14, v12, v5

    if-lez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget-wide v1, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v16, v1, v5

    if-lez v16, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-eq v14, v15, :cond_3

    iget-wide v14, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move v9, v7

    move/from16 v16, v8

    iget-wide v7, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v14, v7

    sub-double v17, v5, v12

    mul-double v14, v14, v17

    sub-double/2addr v1, v12

    div-double/2addr v14, v1

    add-double/2addr v14, v7

    cmpg-double v1, v3, v14

    if-gez v1, :cond_4

    xor-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    move v9, v7

    move/from16 v16, v8

    :cond_4
    :goto_3
    add-int/lit8 v8, v16, 0x1

    move v7, v9

    move/from16 v9, v16

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    return v10
.end method

.method private B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    return-void
.end method

.method private F(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private p(FFFF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    sub-float v1, v7, p3

    sub-float v2, v8, p4

    .line 1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v9

    if-nez v9, :cond_0

    .line 2
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 3
    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    :cond_0
    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v2

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 7
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->o:I

    add-int/2addr v4, v12

    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->o:I

    goto :goto_1

    :cond_2
    cmpl-float v4, v1, v10

    if-lez v4, :cond_3

    .line 8
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->o:I

    .line 9
    :cond_3
    :goto_1
    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-gez v2, :cond_4

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    cmpg-float v2, v1, v10

    if-gtz v2, :cond_5

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    div-float v2, v1, v10

    float-to-int v2, v2

    div-float v1, v10, v1

    move v14, v1

    move v15, v2

    :goto_2
    const/4 v1, 0x2

    const/4 v6, 0x4

    if-nez v15, :cond_f

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 11
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v6, :cond_7

    goto :goto_3

    :cond_7
    new-array v4, v1, [F

    aput v7, v4, v11

    aput v8, v4, v12

    .line 12
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A([FLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 13
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    iget v2, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    aget v4, v1, v2

    add-int/2addr v4, v12

    aput v4, v1, v2

    .line 14
    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 15
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v13

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v13, v1, :cond_8

    return-object v13

    :cond_8
    const/4 v1, 0x0

    .line 17
    :goto_4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    array-length v3, v2

    if-ge v1, v3, :cond_a

    .line 18
    iget v3, v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v1, v3, :cond_9

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v13, v3, :cond_9

    .line 19
    aput v11, v2, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 20
    :cond_a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v2, :cond_b

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v2, :cond_b

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->w()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 22
    :cond_b
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->o:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x3

    :goto_5
    if-le v1, v2, :cond_d

    const/4 v11, 0x1

    :cond_d
    if-eqz v11, :cond_e

    return-object v13

    .line 23
    :cond_e
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 24
    :cond_f
    iget v2, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v4, v7, v2

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    sub-float/2addr v2, v5

    mul-float v4, v4, v2

    const/4 v5, 0x0

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_10

    .line 25
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 26
    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    return-object v3

    :cond_10
    new-array v2, v1, [I

    aput v1, v2, v12

    aput v15, v2, v11

    .line 27
    const-class v1, F

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [[F

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v15, :cond_11

    int-to-float v1, v3

    mul-float v16, v1, v10

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v17, v3

    move/from16 v3, p3

    move-object v10, v4

    move/from16 v4, p4

    move v5, v14

    const/4 v11, 0x4

    move/from16 v6, v16

    .line 28
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t(FFFFFF)[F

    move-result-object v1

    aput-object v1, v10, v17

    add-int/lit8 v3, v17, 0x1

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto :goto_6

    :cond_11
    move-object v10, v4

    const/4 v11, 0x4

    .line 29
    array-length v1, v10

    sub-int/2addr v1, v12

    :goto_7
    if-ltz v1, :cond_1e

    .line 30
    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v11, :cond_12

    goto/16 :goto_c

    .line 31
    :cond_12
    aget-object v2, v10, v1

    .line 32
    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A([FLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    .line 33
    :goto_8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    array-length v3, v2

    if-ge v1, v3, :cond_13

    const/4 v3, 0x0

    .line 34
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 35
    :cond_13
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 36
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v11, :cond_14

    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_15

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    .line 37
    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    goto :goto_9

    .line 38
    :cond_16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    const/4 v4, 0x0

    aget v2, v1, v4

    add-int/2addr v2, v12

    aput v2, v1, v4

    .line 39
    aget v1, v1, v4

    int-to-float v1, v1

    iput v1, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 40
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 41
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 42
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 43
    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    return-object v1

    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 44
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    aput v4, v5, v4

    .line 45
    iput v3, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 46
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v6, :cond_18

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v6, :cond_18

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->w()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 47
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_a
    move-object v13, v2

    goto :goto_d

    .line 48
    :cond_18
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 49
    iget-object v14, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v14, :cond_19

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v11, :cond_19

    iget v14, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v14, v15, :cond_1a

    goto :goto_b

    .line 50
    :cond_1a
    iget-object v14, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v2, v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A([FLjava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 51
    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->n:[I

    iget v15, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    aget v16, v14, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 52
    aget v14, v14, v15

    int-to-float v14, v14

    iput v14, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 53
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->y()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 54
    iget v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    goto :goto_a

    .line 55
    :cond_1b
    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v15, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v6, v15, :cond_19

    move-object v13, v14

    goto :goto_b

    :cond_1c
    :goto_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1d
    :goto_d
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_7

    .line 56
    :cond_1e
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 57
    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    return-object v13
.end method

.method private static q(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;-><init>(Ljava/util/List;)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->e(D)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static t(FFFFFF)[F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p5

    mul-float p2, p2, p4

    add-float/2addr p2, p0

    mul-float p5, p5, p3

    mul-float p5, p5, p4

    add-float/2addr p5, p1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 p1, 0x0

    aput p2, p0, p1

    const/4 p1, 0x1

    aput p5, p0, p1

    return-object p0
.end method

.method private u(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v1, :cond_0

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static v()Z
    .locals 2

    const-string v0, "bream_gear_angle"

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 3
    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 4
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v4, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const-string v3, "jkyHasGearSensor"

    if-eqz v2, :cond_6

    .line 5
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v2, "true"

    .line 6
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 8
    :goto_1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 9
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 10
    :cond_3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v10

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v4, v4

    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v6, v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    float-to-double v6, v4

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    float-to-double v8, v4

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 15
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v4

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 16
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    float-to-double v5, v5

    iget v7, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 17
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    float-to-double v13, v5

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    float-to-double v5, v5

    move-object v11, v4

    move-wide v15, v5

    invoke-virtual/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    float-to-double v6, v6

    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 19
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    float-to-double v7, v7

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    float-to-double v11, v9

    move-object v15, v5

    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 21
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 22
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 23
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 24
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 25
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 26
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    iput v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    .line 27
    iput-object v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 28
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 29
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 30
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    float-to-double v8, v5

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    float-to-double v10, v5

    invoke-virtual/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_2

    .line 31
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u521d\u59cb\u5316"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6863"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v1, "Bream\u521d\u59cb\u5316\u5b8c\u6210"

    .line 32
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_6
    const-string v2, "false"

    .line 33
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private y(FFF)V
    .locals 5

    .line 1
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const v0, 0x461c4000    # 10000.0f

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    .line 5
    iget p3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p3

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private z()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "bream_gear_data"

    const-string v2, ""

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 5
    :cond_0
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "bream\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    .line 8
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6863\u4f4d\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "bream_gear_angle"

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 9
    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v1

    float-to-double v4, v1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6863\u4f4d\u6807\u5b9a\u89d2\u5ea6:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double v8, v4, v6

    .line 11
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v8, v10

    if-gez v1, :cond_2

    const-string v1, "bream\u6863\u4f4d\u5b66\u4e60\u89d2\u5ea6\u4e3a\u7a7a"

    .line 12
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    :cond_2
    const-string v1, "bream_gear_angle_calibrate_1"

    .line 13
    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v1

    float-to-double v8, v1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6863\u4f4d\u6821\u51c6\u89d2\u5ea6:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    sub-double v6, v8, v6

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v10

    if-gez v1, :cond_3

    const-string v1, "bream\u6863\u4f4d\u6821\u51c6\u89d2\u5ea6\u4e3a\u7a7a\uff0c\u7528\u6807\u5b9a\u7684\u503c"

    .line 16
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    move-wide v8, v4

    :cond_3
    const-string v1, "bream_gear_offset"

    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    const-class v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6863\u4f4d\u504f\u79fb\u662f:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "\u6ca1\u6709\u8bbe\u7f6e\u6863\u4f4d\u504f\u79fb"

    .line 22
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    neg-double v3, v4

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B:F

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->A:F

    neg-double v3, v8

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->D:F

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->C:F

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x()Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bream\u521d\u59cb\u5316\u6321\u4f4d\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public C(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E:Z

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    :cond_0
    return-void
.end method

.method public D()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v0

    .line 4
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v2, v0

    const-string v3, "bream_gear_angle"

    .line 5
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const-string v3, "bream_gear_angle_calibrate_1"

    .line 6
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6863\u4f4d\u6807\u5b9a\u5b8c\u6210:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "\u6807\u5b9a\u5b8c\u6210"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece2\u6863\u52303\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece3\u6863\u52304\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public E(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B()V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u505c\u6b62\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->B()V

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b66\u4e60\u65f6\uff0c\u6ca1\u6709\u8f68\u8ff9\u6570\u636e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez v1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b66\u4e60\u65f6\uff0c\u6c42\u8f68\u8ff9\u51f8\u5305\u591a\u8fb9\u5f62\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p1, "\u6863\u4f4d\u5b66\u4e60\u5931\u8d25"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bream_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->p:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 2
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 3
    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v7, v4

    invoke-direct {v2, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v7, v4

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const-string v0, "bream_gear_data"

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bream_gear_offset"

    .line 7
    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bream_gear_angle"

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 8
    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const-string v5, "bream_gear_angle_calibrate_1"

    .line 9
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 10
    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 11
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 12
    invoke-static {v5, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    :cond_3
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 3
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    const-string v0, "bream_gear_data"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    const-class v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u672c\u5730bream\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 4
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->x:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bream_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    return-void
.end method

.method public j()Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    cmpg-double v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "\u5f53\u524d\u8fd8\u5728\u6821\u51c6\uff0c\u4e0d\u80fd\u6863\u4f4d\u5b66\u4e60"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const-string v0, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 7
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-le v2, v0, :cond_4

    const-string p1, "\u540c\u4e00\u4e2a\u6863\u4f4d\u53ea\u80fd\u5b66\u4e60\u4e00\u6b21\uff0c\u8bf7\u5148\u5220\u9664\u518d\u5f00\u59cb\u5b66\u4e60"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput p1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    .line 12
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v1, v3

    double-to-float p1, v1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 13
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 14
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->a:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    float-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v4

    double-to-float p1, v4

    float-to-double v4, v1

    invoke-direct {p0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v2

    invoke-direct {p0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v3, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    const/4 p1, 0x0

    const-string v1, "bream_gear_offset"

    .line 17
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f00\u59cb\u5b66\u4e60\u6863\u4f4d\uff0c\u6e05\u7a7a\u6863\u4f4d\u504f\u79fb\u53c2\u6570"

    .line 18
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method public l(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 2
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 3
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->a:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 4
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 5
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E:Z

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v4, v1

    .line 8
    iget v1, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v1, v2

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v4

    float-to-double v5, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bream_gear_offset"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u7f6e\u504f\u79fb\u53c2\u6570:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 13
    :cond_1
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->I:Z

    if-eqz v4, :cond_2

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->y(FFF)V

    .line 15
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->I:Z

    .line 16
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 17
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    .line 18
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->k:F

    .line 19
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v11, v3

    invoke-virtual/range {v6 .. v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 21
    :cond_2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    .line 22
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v10, v1

    float-to-double v12, v2

    float-to-double v14, v3

    invoke-virtual/range {v9 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->G:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->D:F

    float-to-double v6, v1

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->C:F

    float-to-double v8, v1

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v4

    .line 26
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v4

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    .line 27
    :cond_3
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v0, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v5

    if-nez v5, :cond_4

    .line 28
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 29
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    .line 30
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->k:F

    .line 31
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v11, v3

    invoke-virtual/range {v6 .. v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 33
    :cond_4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->H:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-wide/from16 v7, p1

    move/from16 v9, p3

    invoke-virtual {v5, v7, v8, v6, v9}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v5

    .line 35
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->D()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v7, :cond_5

    if-eq v6, v4, :cond_5

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v7, :cond_5

    .line 36
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 37
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    .line 38
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->k:F

    return-object v6

    .line 39
    :cond_5
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    invoke-direct {v0, v1, v2, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->p(FFFF)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v6

    .line 40
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object/from16 v8, p4

    if-ne v8, v7, :cond_6

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->q()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v6, v7

    :cond_6
    if-eqz v5, :cond_8

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result v5

    if-nez v5, :cond_8

    .line 42
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->i:F

    .line 43
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->j:F

    .line 44
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->k:F

    .line 45
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v6, v4, :cond_7

    return-object v6

    :cond_7
    return-object v1

    .line 46
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v1, :cond_9

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->p:Z

    .line 48
    :cond_9
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->p:Z

    if-nez v1, :cond_a

    .line 49
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    .line 50
    :cond_a
    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v6
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u5728\u6863\u4f4d\u5b66\u4e60\uff0c\u4e0d\u80fd\u6807\u5b9a"

    return-object v0

    :cond_0
    const-string v0, "bream_gear_data"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bream_gear_offset"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bream_gear_angle"

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const-string v0, "bream_gear_angle_calibrate_1"

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u57282\u6863\u548c3\u6863\u4e4b\u95f4\u6765\u56de\u6302\u6863\uff0c\u5b8c\u6210\u6807\u5b9a"

    return-object v0

    :cond_1
    const-string v0, "\u8bf7\u57283\u6863\u548c4\u6863\u4e4b\u95f4\u6765\u56de\u6302\u6863\uff0c\u5b8c\u6210\u6807\u5b9a"

    return-object v0
.end method

.method public o(DDDDDD)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->w()Z

    move-wide/from16 v1, p1

    .line 2
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    move-wide/from16 v1, p3

    .line 3
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    move-wide/from16 v1, p5

    .line 4
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->a:D

    move-wide/from16 v1, p7

    .line 5
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    move-wide/from16 v1, p9

    .line 6
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    move-wide/from16 v1, p11

    .line 7
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->c()F

    move-result v1

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 14
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 15
    :cond_2
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->s:Z

    const/16 v2, 0x28

    const-string v6, "size="

    const-string v7, "Cos"

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-string v10, "\u6821\u51c6\u65f6\u63d2\u5165:"

    const-string v11, ","

    if-eqz v1, :cond_7

    .line 16
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v12, v14

    double-to-float v1, v12

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 17
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v12, v14

    double-to-float v12, v12

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v12

    .line 18
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v14, v1

    invoke-direct {v0, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v14

    float-to-double v4, v12

    invoke-direct {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v4

    invoke-direct {v13, v14, v15, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 19
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpl-double v1, v3, v8

    if-lez v1, :cond_4

    .line 23
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v1, v3, v5

    if-gtz v1, :cond_5

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    .line 27
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->D()V

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "\u6807\u5b9a\u5b8c\u6210"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_6
    return-void

    .line 29
    :cond_7
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F:Z

    if-eqz v1, :cond_e

    .line 30
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v12, v14

    double-to-float v1, v12

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 31
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v12, v14

    double-to-float v12, v12

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v12

    .line 32
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v14, v1

    invoke-direct {v0, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v14

    float-to-double v4, v12

    invoke-direct {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v4

    invoke-direct {v13, v14, v15, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 33
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 34
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpl-double v1, v3, v8

    if-lez v1, :cond_9

    .line 37
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 39
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v1, v3, v5

    if-gtz v1, :cond_a

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_d

    :cond_a
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F:Z

    .line 42
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_b

    .line 43
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v1

    .line 44
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v3, v1

    const-string v4, "bream_gear_angle_calibrate_1"

    .line 45
    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    neg-double v3, v1

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->D:F

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->C:F

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6863\u4f4d\u6821\u51c6\u5b8c\u6210:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "\u6821\u51c6\u5b8c\u6210"

    .line 49
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_3

    .line 51
    :cond_b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece2\u6863\u52303\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 52
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 53
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v1, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece3\u6863\u52304\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 54
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 55
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 56
    :goto_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_d
    return-void

    .line 57
    :cond_e
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v1, :cond_14

    .line 58
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->f:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->c:D

    sub-double/2addr v4, v6

    double-to-float v2, v4

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 59
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->e:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->b:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 60
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->d:D

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->a:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    .line 61
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez v5, :cond_f

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    .line 63
    :cond_f
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v6, v2

    invoke-direct {v0, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v6

    float-to-double v8, v4

    invoke-direct {v0, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->F(D)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 64
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "\u6863\u63d2\u5165:"

    if-nez v6, :cond_10

    .line 65
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_4

    .line 67
    :cond_10
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v8, v12

    if-lez v6, :cond_11

    .line 68
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 70
    :cond_11
    :goto_4
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v9, v5, v7

    if-lez v9, :cond_13

    .line 71
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->l:F

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->m:F

    invoke-static {v2, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q(FFFF)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpg-double v9, v5, v7

    if-gez v9, :cond_12

    .line 72
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    add-int/2addr v5, v3

    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    goto :goto_5

    :cond_12
    const/4 v3, 0x0

    .line 73
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    .line 74
    :goto_5
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->q:I

    const/16 v5, 0x14

    if-lt v3, v5, :cond_13

    .line 75
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 76
    :cond_13
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->l:F

    .line 77
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->m:F

    :cond_14
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->r:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->E(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    return-void
.end method

.method public w()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->y:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->z()Z

    move-result v0

    return v0
.end method
