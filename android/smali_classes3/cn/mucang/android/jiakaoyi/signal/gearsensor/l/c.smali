.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;
    }
.end annotation


# instance fields
.field private A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:J

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private volatile J:Z

.field private volatile K:Z

.field private final L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private N:I

.field private O:Z

.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private h:Z

.field public i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:[I

.field private final q:[I

.field private final r:[I

.field private final s:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

.field private t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public u:Z

.field private v:I

.field private w:I

.field private volatile x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private volatile y:Z

.field private final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->a:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->d:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x0

    .line 7
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->l:F

    .line 8
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->m:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->n:F

    const v4, 0x461c4000    # 10000.0f

    .line 9
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    .line 10
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    .line 11
    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->q:[I

    .line 12
    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r:[I

    .line 13
    array-length v4, v4

    new-array v4, v4, [Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    .line 14
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->u:Z

    .line 16
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    .line 17
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    const/4 v5, 0x0

    .line 18
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 19
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    .line 21
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    .line 24
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->D:Z

    .line 25
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    .line 27
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->H:F

    .line 28
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->I:F

    .line 29
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->J:Z

    .line 30
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->K:Z

    .line 31
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->N:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->O:Z

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    return-void
.end method

.method private E(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private F(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Z
    .locals 1

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method private p(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 42

    move-object/from16 v10, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v0, p7

    move/from16 v1, p8

    sub-float v2, v11, v0

    sub-float v3, v12, v1

    .line 1
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v10, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v13

    if-nez v13, :cond_0

    .line 2
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    .line 3
    iput v12, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 5
    :cond_0
    iget v5, v13, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    const v7, 0x3ee66666    # 0.45f

    mul-float v8, v6, v7

    add-float/2addr v8, v5

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    .line 6
    iget-object v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v14

    iget-wide v14, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v6, v14

    invoke-virtual {v13, v7, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v14

    .line 7
    iget v6, v13, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    const v9, 0x3e99999a    # 0.3f

    mul-float v15, v7, v9

    add-float/2addr v15, v6

    mul-float v7, v7, v9

    sub-float v16, v6, v7

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move v9, v2

    move/from16 v17, v14

    move-wide/from16 v1, p1

    move/from16 v14, p3

    invoke-virtual {v6, v1, v2, v7, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v6

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->D()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    iget-object v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v7, v1, :cond_1

    if-eq v7, v4, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v7, v1, :cond_1

    .line 10
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    .line 11
    iput v12, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    return-object v7

    :cond_1
    const/4 v1, 0x0

    if-eqz v6, :cond_5

    cmpg-float v2, v11, v8

    if-gez v2, :cond_2

    cmpl-float v2, v11, v5

    if-gtz v2, :cond_4

    :cond_2
    cmpg-float v2, v11, v5

    if-gtz v2, :cond_3

    cmpl-float v2, v0, v8

    if-gez v2, :cond_4

    :cond_3
    cmpl-float v2, v11, v8

    if-ltz v2, :cond_5

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_5

    .line 12
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o()F

    move-result v18

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j()F

    move-result v19

    cmpg-float v20, v11, v15

    if-gez v20, :cond_6

    cmpl-float v5, v11, v16

    if-gtz v5, :cond_9

    :cond_6
    cmpg-float v5, v11, v16

    if-gtz v5, :cond_7

    cmpl-float v5, v0, v15

    if-gez v5, :cond_9

    :cond_7
    cmpl-float v5, v11, v15

    if-ltz v5, :cond_8

    cmpg-float v5, v0, v16

    if-lez v5, :cond_9

    .line 15
    :cond_8
    iget v5, v13, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    add-float v8, v5, v18

    cmpg-float v8, v11, v8

    if-gez v8, :cond_b

    sub-float v5, v5, v19

    cmpl-float v5, v11, v5

    if-lez v5, :cond_b

    .line 16
    :cond_9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v6, :cond_a

    const/4 v8, 0x1

    const/16 v21, 0x1

    goto :goto_1

    :cond_a
    move/from16 v21, v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_b
    move v8, v2

    move/from16 v21, v6

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v21, :cond_d

    cmpl-float v6, v9, v2

    if-lez v6, :cond_d

    .line 17
    iget-object v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v4, :cond_d

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v6, v4, :cond_d

    sub-float v4, v11, v15

    sub-float/2addr v15, v0

    mul-float v4, v4, v15

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_c

    sub-float v4, v11, v16

    sub-float v6, v16, v0

    mul-float v4, v4, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_c

    sub-float v4, v11, v18

    sub-float v6, v18, v0

    mul-float v4, v4, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_c

    sub-float v4, v11, v19

    sub-float v6, v19, v0

    mul-float v4, v4, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 18
    :cond_c
    iput-boolean v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->h:Z

    :cond_d
    mul-float v4, v9, v9

    mul-float v3, v3, v3

    add-float/2addr v4, v3

    float-to-double v3, v4

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 20
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move v15, v8

    float-to-double v7, v11

    .line 21
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v7, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    float-to-double v1, v6

    const-wide v24, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v24

    cmpl-double v6, v4, v1

    if-lez v6, :cond_e

    const/4 v1, 0x1

    goto :goto_2

    :cond_e
    const/4 v1, 0x0

    .line 22
    :goto_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 23
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_10

    aget-object v24, v4, v6

    if-eqz v24, :cond_f

    move-object/from16 v33, v3

    float-to-double v2, v12

    float-to-double v9, v0

    move/from16 v35, v1

    move-object/from16 v36, v4

    move/from16 v37, v5

    move/from16 v1, p8

    float-to-double v4, v1

    move-wide/from16 v25, v7

    move-wide/from16 v27, v2

    move-wide/from16 v29, v9

    move-wide/from16 v31, v4

    .line 24
    invoke-virtual/range {v24 .. v32}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->a(DDDD)V

    goto :goto_4

    :cond_f
    move/from16 v35, v1

    move-object/from16 v33, v3

    move-object/from16 v36, v4

    move/from16 v37, v5

    move/from16 v1, p8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p0

    move-object/from16 v3, v33

    move/from16 v1, v35

    move-object/from16 v4, v36

    move/from16 v5, v37

    goto :goto_3

    :cond_10
    move/from16 v35, v1

    move-object/from16 v33, v3

    move/from16 v1, p8

    move-object/from16 v10, p0

    .line 25
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v5, v33

    move/from16 v3, v35

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v9, "Sheep"

    if-eqz v6, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-object/from16 v37, v2

    .line 26
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v2, :cond_19

    iget v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    move-object/from16 v38, v5

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v2, v5, :cond_11

    move/from16 v40, v4

    goto/16 :goto_b

    :cond_11
    move-object/from16 v39, v13

    float-to-double v13, v12

    float-to-double v11, v0

    move v2, v4

    float-to-double v4, v1

    .line 27
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move/from16 v40, v2

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object/from16 v41, v9

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    move-wide/from16 v27, v13

    move-wide/from16 v29, v11

    move-wide/from16 v31, v4

    move-wide/from16 v33, v1

    move-wide/from16 v35, v9

    invoke-virtual/range {v24 .. v36}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area(DDDDDD)V

    if-nez v3, :cond_13

    .line 28
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->canCalculate:Z

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v3, 0x1

    .line 29
    :goto_7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v10, p0

    .line 30
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    aget-object v2, v0, v1

    if-nez v2, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_14
    aget-object v0, v0, v1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    :goto_8
    iput v0, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->factor:F

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_15
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v10, p0

    .line 31
    iput v0, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->factor:F

    .line 32
    :goto_9
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v1

    cmpg-float v2, v1, v40

    if-gez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_17

    .line 33
    iget v4, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v4

    move-object v5, v4

    move v4, v1

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :cond_17
    move-object/from16 v5, v38

    move/from16 v4, v40

    :goto_a
    const v9, 0x461c4000    # 10000.0f

    cmpg-float v9, v1, v9

    if-gez v9, :cond_18

    .line 34
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v41

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move/from16 v14, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, v37

    move-object/from16 v13, v39

    goto/16 :goto_5

    :cond_19
    move/from16 v40, v4

    move-object/from16 v38, v5

    :goto_b
    move-object/from16 v39, v13

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move/from16 v14, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, v37

    move-object/from16 v5, v38

    move-object/from16 v13, v39

    move/from16 v4, v40

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v38, v5

    move-object/from16 v39, v13

    if-nez v3, :cond_1b

    .line 36
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_c

    :cond_1b
    move-object/from16 v5, v38

    .line 37
    :goto_c
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v0, :cond_20

    .line 38
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "********************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    .line 40
    :goto_d
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->q:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 41
    iget v2, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v0, v2, :cond_1d

    .line 42
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0xf

    aput v2, v1, v0

    .line 43
    aget v2, v1, v0

    const/16 v3, 0x3c

    if-le v2, v3, :cond_1e

    .line 44
    aput v3, v1, v0

    goto :goto_e

    .line 45
    :cond_1d
    aget v2, v1, v0

    add-int/lit8 v2, v2, -0xf

    aput v2, v1, v0

    .line 46
    aget v2, v1, v0

    if-gez v2, :cond_1e

    const/4 v2, 0x0

    .line 47
    aput v2, v1, v0

    :cond_1e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 48
    :cond_1f
    iget v0, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v0, v1, v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_22

    .line 49
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v4, v0

    const/4 v1, 0x0

    goto :goto_11

    :cond_20
    const/4 v2, 0x0

    .line 50
    :goto_f
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->q:[I

    array-length v1, v0

    if-ge v2, v1, :cond_22

    .line 51
    aget v1, v0, v2

    add-int/lit8 v1, v1, -0xf

    aput v1, v0, v2

    .line 52
    aget v1, v0, v2

    if-gez v1, :cond_21

    const/4 v1, 0x0

    .line 53
    aput v1, v0, v2

    goto :goto_10

    :cond_21
    const/4 v1, 0x0

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_22
    const/4 v1, 0x0

    move-object v4, v5

    :goto_11
    move-object/from16 v0, p0

    const/4 v11, 0x0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p9

    const/4 v12, 0x1

    move/from16 v7, p10

    move v8, v15

    move-object v13, v9

    move/from16 v9, v21

    .line 54
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IIZZ)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v1, v17, v1

    if-ltz v1, :cond_23

    move/from16 v1, p5

    cmpl-float v2, v1, v16

    if-lez v2, :cond_24

    if-gez v20, :cond_24

    goto :goto_12

    :cond_23
    move/from16 v1, p5

    :goto_12
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpg-double v4, v22, v2

    if-lez v4, :cond_26

    :cond_24
    move-object/from16 v2, v39

    .line 55
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    add-float v18, v2, v18

    cmpg-float v3, v1, v18

    if-gez v3, :cond_25

    sub-float v2, v2, v19

    cmpl-float v2, v1, v2

    if-lez v2, :cond_25

    goto :goto_13

    .line 56
    :cond_25
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->N:I

    goto :goto_14

    .line 57
    :cond_26
    :goto_13
    iget v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->N:I

    add-int/2addr v2, v12

    iput v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->N:I

    .line 58
    :goto_14
    iget v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->N:I

    if-le v2, v12, :cond_27

    .line 59
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 60
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230\u7a7a\u6863\u4e86 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_27
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    move/from16 v1, p6

    .line 63
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    return-object v0
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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

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

.method private s(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

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

.method private t(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IIZZ)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 6

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p5, p1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    array-length p6, p5

    if-ge p1, p6, :cond_1

    .line 3
    sget-object p6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p6, p6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, p6, :cond_0

    .line 4
    aget p6, p5, p1

    add-int/2addr p6, p3

    aput p6, p5, p1

    goto :goto_1

    .line 5
    :cond_0
    aput p2, p5, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p1

    :cond_2
    if-nez p9, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, p1, :cond_3

    if-eq p5, p1, :cond_3

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p5, p1, :cond_3

    move-object p4, p5

    :cond_3
    if-lez p7, :cond_23

    if-nez p9, :cond_23

    if-nez p8, :cond_23

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p8, :cond_23

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->h:Z

    if-eqz p1, :cond_23

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->p()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 10
    div-int/2addr p6, p7

    .line 11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    const/4 p7, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, p3, :cond_8

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p4, v2, :cond_4

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, v3, :cond_8

    :cond_4
    const/16 v3, 0x64

    if-gt p6, v3, :cond_5

    if-ne p5, v2, :cond_8

    .line 12
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aput p2, p1, p7

    .line 13
    aget p2, p1, p3

    add-int/2addr p2, p3

    aput p2, p1, p3

    if-ne p4, v2, :cond_7

    if-gt p6, v3, :cond_6

    if-ne p5, v2, :cond_7

    :cond_6
    const/4 v0, 0x2

    .line 14
    :cond_7
    aget p1, p1, p3

    if-lt p1, v0, :cond_23

    .line 15
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_2
    move-object p4, v2

    goto/16 :goto_4

    :cond_8
    if-ne p1, p3, :cond_d

    .line 16
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p4, v2, :cond_9

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, v3, :cond_d

    :cond_9
    const/16 v3, 0x37

    if-lt p6, v3, :cond_a

    if-ne p5, v2, :cond_d

    .line 17
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aput p2, p1, p3

    .line 18
    aget p2, p1, p7

    add-int/2addr p2, p3

    aput p2, p1, p7

    if-ne p4, v2, :cond_c

    if-lt p6, v3, :cond_b

    if-ne p5, v2, :cond_c

    :cond_b
    const/4 v0, 0x2

    .line 19
    :cond_c
    aget p1, p1, p7

    if-lt p1, v0, :cond_23

    .line 20
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_2

    :cond_d
    const/4 v2, 0x5

    if-ne p1, p3, :cond_12

    .line 21
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p4, v3, :cond_e

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, v4, :cond_12

    :cond_e
    const/16 v4, 0x19

    if-lt p6, v4, :cond_f

    if-ne p5, v3, :cond_12

    .line 22
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aput p2, p1, p7

    .line 23
    aget p2, p1, v2

    add-int/2addr p2, p3

    aput p2, p1, v2

    if-ne p4, v3, :cond_11

    if-lt p6, v4, :cond_10

    if-ne p5, v3, :cond_11

    :cond_10
    const/4 v0, 0x2

    .line 24
    :cond_11
    aget p1, p1, v2

    if-lt p1, v0, :cond_23

    .line 25
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object p4, v3

    goto/16 :goto_4

    :cond_12
    const/16 v3, 0x32

    if-ne p1, v1, :cond_17

    .line 26
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p4, v4, :cond_13

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, v5, :cond_17

    :cond_13
    if-gt p6, v3, :cond_14

    if-ne p5, v4, :cond_17

    .line 27
    :cond_14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aput p2, p1, v0

    .line 28
    aget p2, p1, v1

    add-int/2addr p2, p3

    aput p2, p1, v1

    if-ne p4, v4, :cond_16

    if-gt p6, v3, :cond_15

    if-ne p5, v4, :cond_16

    :cond_15
    const/4 v0, 0x2

    .line 29
    :cond_16
    aget p1, p1, v1

    if-lt p1, v0, :cond_23

    .line 30
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object p4, v4

    goto/16 :goto_4

    :cond_17
    if-ne p1, v1, :cond_1c

    .line 31
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p4, v4, :cond_18

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, v4, :cond_1c

    :cond_18
    const/16 v4, 0x28

    if-lt p6, v4, :cond_19

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p5, v5, :cond_1c

    .line 32
    :cond_19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aput p2, p1, v1

    .line 33
    aget p2, p1, v0

    add-int/2addr p2, p3

    aput p2, p1, v0

    .line 34
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p4, p2, :cond_1a

    if-lt p6, v4, :cond_1b

    if-ne p5, p2, :cond_1a

    goto :goto_3

    :cond_1a
    const/4 v1, 0x4

    .line 35
    :cond_1b
    :goto_3
    aget p1, p1, v0

    if-lt p1, v1, :cond_23

    .line 36
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object p4, p2

    goto/16 :goto_4

    :cond_1c
    if-ne p4, p8, :cond_22

    if-ne p1, p3, :cond_20

    const/16 p1, 0x5a

    if-le p6, p1, :cond_1e

    .line 37
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aget p4, p1, p3

    add-int/2addr p4, p3

    aput p4, p1, p3

    .line 38
    aput p2, p1, p7

    .line 39
    aput p2, p1, v2

    .line 40
    aget p1, p1, p3

    if-lt p1, v0, :cond_1d

    .line 41
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 42
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    :cond_1d
    move-object p4, p8

    goto :goto_4

    :cond_1e
    const/16 p1, 0x23

    if-le p6, p1, :cond_1f

    .line 43
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aget p4, p1, p7

    add-int/2addr p4, p3

    aput p4, p1, p7

    .line 44
    aput p2, p1, p3

    .line 45
    aput p2, p1, v2

    .line 46
    aget p1, p1, p7

    if-lt p1, v0, :cond_1d

    .line 47
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 48
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    .line 49
    :cond_1f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aget p4, p1, v2

    add-int/2addr p4, p3

    aput p4, p1, v2

    .line 50
    aput p2, p1, p3

    .line 51
    aput p2, p1, p7

    .line 52
    aget p1, p1, v2

    if-lt p1, v0, :cond_1d

    .line 53
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 54
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    :cond_20
    if-ne p1, v1, :cond_23

    if-le p6, v3, :cond_21

    .line 55
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aget p4, p1, v1

    add-int/2addr p4, p3

    aput p4, p1, v1

    .line 56
    aput p2, p1, v0

    .line 57
    aget p1, p1, v1

    if-lt p1, v0, :cond_1d

    .line 58
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 59
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    .line 60
    :cond_21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    aget p4, p1, v0

    add-int/2addr p4, p3

    aput p4, p1, v0

    .line 61
    aput p2, p1, v1

    .line 62
    aget p1, p1, v0

    if-lt p1, v0, :cond_1d

    .line 63
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 64
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    .line 65
    :cond_22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p:[I

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    :cond_23
    :goto_4
    if-eqz p9, :cond_24

    .line 66
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result p1

    if-nez p1, :cond_24

    .line 67
    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 68
    :cond_24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p2, :cond_25

    move-object p4, p1

    :cond_25
    return-object p4
.end method

.method public static u()Z
    .locals 2

    const-string v0, "sheep_gear_angle"

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

.method private w()Z
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, -0x3c4c0000    # -360.0f

    const/4 v4, 0x0

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v5, -0x3c4c0000    # -360.0f

    const/high16 v6, -0x3c4c0000    # -360.0f

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    const v11, 0x3a83126f    # 0.001f

    .line 3
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 4
    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v11, v12, :cond_2

    move-object v7, v10

    goto :goto_1

    .line 5
    :cond_2
    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v11, v12, :cond_3

    move-object v8, v10

    goto :goto_1

    .line 6
    :cond_3
    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v11, v12, :cond_4

    move-object v9, v10

    .line 7
    :cond_4
    :goto_1
    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    cmpl-float v12, v11, v5

    if-lez v12, :cond_5

    move v5, v11

    .line 8
    :cond_5
    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    cmpg-float v12, v11, v2

    if-gez v12, :cond_6

    move v2, v11

    .line 9
    :cond_6
    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    cmpl-float v12, v11, v6

    if-lez v12, :cond_7

    move v6, v11

    .line 10
    :cond_7
    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    cmpg-float v11, v10, v3

    if-gez v11, :cond_0

    move v3, v10

    goto :goto_0

    :cond_8
    const-string v1, "jkyHasGearSensor"

    if-eqz v7, :cond_1e

    .line 11
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v10, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v10, v10

    invoke-virtual {v3, v5, v6, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "true"

    .line 12
    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v3, 0x0

    .line 14
    :goto_2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 15
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v5, :cond_9

    move/from16 v17, v3

    goto/16 :goto_4

    .line 16
    :cond_9
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v6

    .line 17
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v10, v10

    iget v12, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v12, v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    float-to-double v12, v10

    iget v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    float-to-double v14, v10

    move-object v10, v1

    invoke-virtual/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v10, v10

    iput v10, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 21
    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v10, v10

    iput v10, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 22
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    float-to-double v11, v11

    iget v13, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v13, v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 23
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    float-to-double v13, v11

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    move/from16 v17, v3

    float-to-double v2, v11

    move-object v11, v10

    move-wide v15, v2

    invoke-virtual/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v3, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    float-to-double v11, v3

    iget v3, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v13, v3

    invoke-direct {v2, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 25
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    float-to-double v11, v11

    iget v13, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    float-to-double v13, v13

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-virtual/range {v18 .. v23}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-float v3, v11

    iput v3, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 27
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    double-to-float v3, v11

    iput v3, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 28
    iget-wide v11, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-float v3, v11

    iput v3, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 29
    iget-wide v10, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 30
    iget v2, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 31
    iget v2, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 32
    iget v2, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    iput v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    .line 33
    iput-object v5, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 34
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 35
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 36
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    float-to-double v12, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    float-to-double v14, v3

    invoke-virtual/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    .line 37
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v1

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    :cond_c
    const/high16 v1, 0x41a00000    # 20.0f

    .line 38
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    const/high16 v2, 0x41600000    # 14.0f

    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->o:F

    .line 40
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 41
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_d

    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v7, :cond_e

    goto :goto_5

    .line 42
    :cond_e
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 45
    iget v10, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v10, v10

    cmpl-double v12, v10, v8

    if-lez v12, :cond_10

    .line 46
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    .line 47
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 48
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v14, v12, v8

    if-ltz v14, :cond_f

    .line 49
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 50
    :cond_10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j()F

    move-result v10

    float-to-double v10, v10

    sub-double/2addr v8, v10

    .line 51
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 52
    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpg-double v14, v12, v8

    if-gtz v14, :cond_11

    .line 53
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 54
    :cond_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v6, :cond_1b

    .line 55
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    iget v10, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    aget-object v11, v6, v10

    if-nez v11, :cond_13

    .line 56
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;

    invoke-direct {v11, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$a;)V

    .line 57
    iput v10, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->d:I

    .line 58
    iget v12, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v12, v12

    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v12, v14

    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->e:D

    const-wide v12, 0x416312d000000000L    # 1.0E7

    .line 59
    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->a:D

    const-wide v12, -0x3e68287c00000000L    # -1.0E8

    .line 60
    iput-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->b:D

    const/high16 v12, 0x3f800000    # 1.0f

    .line 61
    iput v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->f:F

    .line 62
    iput-wide v8, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->c:D

    .line 63
    aput-object v11, v6, v10

    :cond_13
    const/4 v6, 0x0

    .line 64
    :goto_8
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ge v6, v10, :cond_17

    .line 65
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 66
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 67
    iget-wide v13, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v15, v13, v8

    iget-wide v3, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v19, v8, v3

    mul-double v15, v15, v19

    const-wide/16 v19, 0x0

    cmpl-double v21, v15, v19

    if-lez v21, :cond_15

    move-object v15, v5

    move/from16 v16, v6

    .line 68
    iget-wide v5, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object v12, v1

    iget-wide v0, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v0

    sub-double v19, v8, v13

    mul-double v5, v5, v19

    sub-double/2addr v3, v13

    div-double/2addr v5, v3

    add-double/2addr v5, v0

    .line 69
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->b:D

    cmpg-double v3, v0, v5

    if-gez v3, :cond_14

    .line 70
    iput-wide v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->b:D

    .line 71
    :cond_14
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->a:D

    cmpl-double v3, v0, v5

    if-lez v3, :cond_16

    .line 72
    iput-wide v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c$b;->a:D

    goto :goto_9

    :cond_15
    move-object v12, v1

    move-object v15, v5

    move/from16 v16, v6

    :cond_16
    :goto_9
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v5, v15

    move/from16 v6, v16

    goto :goto_8

    :cond_17
    move-object v12, v1

    move-object v15, v5

    .line 73
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    double-to-float v0, v8

    .line 74
    iput v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->startRoll:F

    .line 75
    iget v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v0, v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v6, v0, v4

    if-lez v6, :cond_18

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 76
    iput v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    goto :goto_a

    :cond_18
    const v0, 0x461c4000    # 10000.0f

    .line 77
    iput v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    .line 78
    :goto_a
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 79
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v4, v4

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1a

    .line 80
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    float-to-double v6, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_19

    double-to-float v1, v4

    .line 81
    iput v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    goto :goto_b

    .line 82
    :cond_1a
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    float-to-double v6, v1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_19

    double-to-float v1, v4

    .line 83
    iput v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    goto :goto_b

    :cond_1b
    move-object v3, v0

    move-object v12, v1

    :cond_1c
    move-object v0, v3

    move-object v1, v12

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1d
    move-object v3, v0

    const/4 v0, 0x1

    return v0

    :cond_1e
    move-object v3, v0

    const-string v0, "false"

    .line 84
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private x(FFF)V
    .locals 5

    .line 1
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const v0, 0x461c4000    # 10000.0f

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

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
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private y()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sheep_gear_data"

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

    const-string v1, "sheep\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

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

    const-string v1, "sheep_gear_angle"

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

    const-string v1, "sheep\u6863\u4f4d\u5b66\u4e60\u89d2\u5ea6\u4e3a\u7a7a"

    .line 12
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    :cond_2
    const-string v1, "sheep_gear_angle_calibrate_1"

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

    const-string v1, "sheep\u6863\u4f4d\u6821\u51c6\u89d2\u5ea6\u4e3a\u7a7a\uff0c\u7528\u6807\u5b9a\u7684\u503c"

    .line 16
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    move-wide v8, v4

    :cond_3
    const-string v1, "sheep_gear_offset"

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
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    neg-double v3, v4

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->G:F

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F:F

    neg-double v3, v8

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->I:F

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->H:F

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w()Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sheep\u521d\u59cb\u5316\u6321\u4f4d\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method private static z(Ljava/util/List;)Ljava/util/List;
    .locals 21
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

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v7, v9

    if-lez v2, :cond_0

    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    div-double v11, v7, v9

    double-to-int v2, v11

    :goto_1
    if-ge v4, v2, :cond_0

    .line 7
    iget-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v11, v13

    .line 8
    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move/from16 v18, v2

    move/from16 v17, v3

    iget-wide v2, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v9, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    int-to-double v5, v4

    const-wide v15, 0x3fdccccccccccccdL    # 0.45

    mul-double v5, v5, v15

    mul-double v11, v11, v5

    div-double/2addr v11, v7

    add-double/2addr v11, v13

    mul-double v5, v5, v9

    div-double/2addr v5, v7

    add-double/2addr v5, v2

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v11, v12, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-wide v9, v15

    move/from16 v3, v17

    move/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_1

    :cond_0
    move/from16 v17, v3

    move/from16 v2, v17

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public B(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->J:Z

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->K:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    :cond_0
    return-void
.end method

.method public C()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v0

    .line 4
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v2, v0

    const-string v3, "sheep_gear_angle"

    .line 5
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const-string v3, "sheep_gear_angle_calibrate_1"

    .line 6
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y()Z

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public D(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A()V

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
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v0

    .line 4
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->F(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5b66\u4e60\u65f6\uff0c\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5bf9\uff0cdata:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\u7a7a\u6863data:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A()V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A()V

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b66\u4e60\u65f6\uff0c\u6ca1\u6709\u8f68\u8ff9\u6570\u636e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sheep_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y()Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->u:Z

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;)V"
        }
    .end annotation

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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C:Ljava/util/List;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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

    const-string v0, "sheep_gear_data"

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

    const-string v0, "\u672c\u5730sheep\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 3
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sheep_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y()Z

    return-void
.end method

.method public j()Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

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
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "\u5f53\u524d\u8fd8\u5728\u6821\u51c6\uff0c\u4e0d\u80fd\u6863\u4f4d\u5b66\u4e60"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->d:D

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B:Ljava/util/List;

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

    .line 8
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4

    if-ne v2, v3, :cond_4

    const-string p1, "\u7a7a\u6863\u53ea\u9700\u8981\u5b66\u4e60\u4e00\u6b21\uff0c\u5982\u679c\u8981\u91cd\u65b0\u5b66\u4e60\uff0c\u8bf7\u5148\u5220\u9664\u7a7a\u6863"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    :cond_4
    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    const-string p1, "\u540c\u4e00\u4e2a\u6863\u4f4d\u7684\u8f68\u8ff9\u6700\u591a\u53ea\u80fd\u5b66\u4e603\u6761"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    const/4 p1, 0x0

    const-string v0, "sheep_gear_offset"

    .line 15
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f00\u59cb\u5b66\u4e60\u6863\u4f4d\uff0c\u6e05\u7a7a\u6863\u4f4d\u504f\u79fb\u53c2\u6570"

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v3
.end method

.method public l(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 20

    move-object/from16 v11, p0

    .line 1
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    iget-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 3
    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->d:D

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->a:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 4
    iget-boolean v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->J:Z

    const/4 v12, 0x0

    if-eqz v3, :cond_1

    .line 5
    iput-boolean v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->J:Z

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v3, v0

    .line 8
    iget v0, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v0, v1

    .line 9
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v3

    float-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sheep_gear_offset"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u504f\u79fb\u53c2\u6570:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    :cond_0
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 13
    :cond_1
    iget-boolean v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->O:Z

    if-eqz v3, :cond_2

    .line 14
    invoke-direct {v11, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x(FFF)V

    .line 15
    iput-boolean v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->O:Z

    .line 16
    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    .line 17
    iput v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    .line 18
    iput v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->l:F

    .line 19
    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    invoke-virtual/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 21
    :cond_2
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 22
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v14, v0

    float-to-double v0, v1

    float-to-double v3, v2

    move-wide/from16 v16, v0

    move-wide/from16 v18, v3

    invoke-virtual/range {v13 .. v19}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->L:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->I:F

    float-to-double v5, v0

    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->H:F

    float-to-double v7, v0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v3

    .line 26
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v3

    move v6, v0

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v0

    move v6, v1

    .line 27
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v11, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v0

    if-nez v0, :cond_4

    .line 28
    iput v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    .line 29
    iput v6, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    .line 30
    iput v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->l:F

    .line 31
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v14, v5

    float-to-double v0, v6

    float-to-double v2, v2

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v13 .. v19}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 33
    :cond_4
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->M:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v11, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v1

    .line 35
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 36
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v3, v5, v3

    .line 37
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 38
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v1, v0

    mul-float v1, v1, v3

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-lez v1, :cond_5

    cmpl-float v1, v4, v7

    if-lez v1, :cond_5

    .line 39
    iput v13, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    goto :goto_1

    .line 40
    :cond_5
    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v1, v0

    mul-float v3, v3, v1

    cmpl-float v0, v3, v8

    if-lez v0, :cond_6

    cmpl-float v0, v4, v7

    if-lez v0, :cond_6

    const/4 v0, 0x2

    .line 41
    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    goto :goto_1

    .line 42
    :cond_6
    iput v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    goto :goto_1

    .line 43
    :cond_7
    iput v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v:I

    .line 44
    :goto_1
    iget v7, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->j:F

    iget v8, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->k:F

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->p(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 45
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_a

    const/4 v1, 0x0

    .line 46
    :goto_2
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->r:[I

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 47
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v1, :cond_8

    .line 48
    aget v3, v2, v1

    add-int/2addr v3, v13

    aput v3, v2, v1

    goto :goto_3

    .line 49
    :cond_8
    aput v12, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_9
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v1, v2, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    .line 51
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 52
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_b

    .line 53
    iput-boolean v13, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->u:Z

    .line 54
    :cond_b
    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->u:Z

    if-nez v1, :cond_c

    .line 55
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 56
    :cond_c
    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->A:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u5728\u6863\u4f4d\u5b66\u4e60\uff0c\u4e0d\u80fd\u6807\u5b9a"

    return-object v0

    :cond_0
    const-string v0, "sheep_gear_data"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sheep_gear_offset"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sheep_gear_angle"

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const-string v0, "sheep_gear_angle_calibrate_1"

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y()Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

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
    .locals 15

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v()Z

    move-wide/from16 v1, p1

    .line 2
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    move-wide/from16 v1, p3

    .line 3
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    move-wide/from16 v1, p5

    .line 4
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->a:D

    move-wide/from16 v1, p7

    .line 5
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    move-wide/from16 v1, p9

    .line 6
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    move-wide/from16 v1, p11

    .line 7
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->d:D

    .line 8
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y:Z

    const-string v5, "size="

    const-string v6, "Cos"

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const-string v9, "\u6821\u51c6\u65f6\u63d2\u5165:"

    const-string v10, ","

    if-eqz v1, :cond_4

    .line 9
    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v11, v13

    double-to-float v1, v11

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 10
    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    sub-double/2addr v11, v13

    double-to-float v11, v11

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v11

    .line 11
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v13, v1

    invoke-direct {p0, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v13

    float-to-double v2, v11

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v1

    invoke-direct {v12, v13, v14, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 12
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v12, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpl-double v3, v1, v7

    if-lez v3, :cond_1

    .line 16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_3

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->C()V

    .line 21
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "\u6807\u5b9a\u5b8c\u6210"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_3
    return-void

    .line 22
    :cond_4
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->K:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 23
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v3, v11

    double-to-float v1, v3

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 24
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    sub-double/2addr v3, v11

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 25
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v11, v1

    invoke-direct {p0, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v11

    float-to-double v13, v3

    invoke-direct {p0, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v13

    invoke-direct {v4, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 26
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 27
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 29
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpl-double v1, v11, v7

    if-lez v1, :cond_6

    .line 30
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 32
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v1, v3, v5

    if-gtz v1, :cond_7

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x28

    if-le v1, v3, :cond_a

    .line 34
    :cond_7
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->K:Z

    .line 35
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_8

    .line 36
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v1

    .line 37
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v3, v1

    const-string v4, "sheep_gear_angle_calibrate_1"

    .line 38
    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    neg-double v3, v1

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->I:F

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->H:F

    .line 41
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

    .line 42
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_2

    .line 44
    :cond_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece2\u6863\u52303\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 45
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 46
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v1, "\u6821\u51c6\u5931\u8d25\uff0c\u6ca1\u6709\u5c06\u6863\u4f4d\u4ece3\u6863\u52304\u6863\u6765\u56de\u62e8\u52a8\u6570\u6b21"

    .line 47
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 48
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 49
    :goto_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_a
    return-void

    .line 50
    :cond_b
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v1, :cond_13

    .line 51
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->f:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->c:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 52
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->e:D

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->b:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 53
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->d:D

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->a:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    .line 54
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez v6, :cond_c

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    :cond_c
    float-to-double v6, v3

    .line 56
    invoke-direct {p0, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v11, v4

    invoke-direct {p0, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v13

    double-to-float v9, v13

    float-to-double v13, v5

    invoke-direct {p0, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v13

    double-to-float v5, v13

    invoke-virtual {v1, v8, v9, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 57
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v6

    invoke-direct {p0, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E(D)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 58
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "\u6863\u63d2\u5165:"

    if-nez v6, :cond_d

    .line 59
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_3

    .line 61
    :cond_d
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v8, v11

    if-lez v6, :cond_e

    .line 62
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 64
    :cond_e
    :goto_3
    iget v5, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v5, v7, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->E:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1388

    cmp-long v5, v7, v9

    if-lez v5, :cond_12

    .line 65
    :cond_f
    invoke-direct {p0, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v5

    .line 66
    iget v7, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v7, v6, :cond_10

    if-eqz v5, :cond_11

    invoke-virtual {v5, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    :cond_10
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->m:F

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->n:F

    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->q(FFFF)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fd3333333333333L    # 0.3

    cmpg-double v9, v5, v7

    if-gez v9, :cond_11

    .line 67
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    goto :goto_4

    .line 68
    :cond_11
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    .line 69
    :goto_4
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->w:I

    const/16 v5, 0x14

    if-lt v2, v5, :cond_12

    .line 70
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->D(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 71
    :cond_12
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->m:F

    .line 72
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->n:F

    :cond_13
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->x:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->D(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    return-void
.end method

.method public v()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->h:Z

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->D:Z

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->y()Z

    move-result v0

    return v0
.end method
