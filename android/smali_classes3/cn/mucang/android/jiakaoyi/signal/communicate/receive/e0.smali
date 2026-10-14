.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# static fields
.field private static final q0:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

.field public static r0:I = -0x3b9ac9ff

.field private static final s0:F

.field private static t0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private static u0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private static v0:Z

.field private static w0:F


# instance fields
.field public A:Z

.field public B:J

.field public final C:I

.field public D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public J:F

.field public K:I

.field public L:I

.field public M:[F

.field public N:[Z

.field public O:[F

.field public P:[I

.field public Q:[Z

.field public R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

.field public S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

.field public T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

.field public U:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

.field public V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public final a:F

.field public a0:I

.field public b:F

.field public b0:I

.field public c:F

.field public c0:I

.field public d:F

.field public d0:I

.field public e:F

.field public e0:Z

.field public f:F

.field public f0:F

.field public g:F

.field public g0:Z

.field public final h:F

.field public h0:[Z

.field public final i:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public i0:[Z

.field public final j:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public k0:I

.field public l:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public l0:I

.field public final m:Z

.field public m0:I

.field public final n:Z

.field public n0:I

.field public final o:Z

.field public o0:I

.field public final p:Z

.field public p0:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q0:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    const-wide v0, 0x3faf403e80000000L    # 0.06103701889514923

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->s0:F

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v0:Z

    const/4 v0, 0x0

    .line 6
    sput v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w0:F

    return-void
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Lcn/mucang/android/jiakaoyi/signal/d/h;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-direct/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const-wide/16 v3, 0x0

    .line 2
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 3
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    new-array v4, v3, [Z

    .line 4
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->N:[Z

    const/16 v4, 0xa

    new-array v5, v4, [F

    .line 5
    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->O:[F

    new-array v5, v3, [I

    .line 6
    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->P:[I

    const/16 v5, 0xc

    new-array v6, v5, [Z

    .line 7
    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    .line 8
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 9
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 10
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 11
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 12
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const/4 v6, 0x1

    .line 13
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g0:Z

    const/4 v7, 0x5

    new-array v8, v7, [Z

    .line 14
    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h0:[Z

    new-array v8, v3, [Z

    .line 15
    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i0:[Z

    .line 16
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v8

    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a:F

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v9

    const v10, 0xffff

    if-ne v9, v10, :cond_0

    .line 29
    sget v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    int-to-float v11, v11

    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h:F

    goto :goto_0

    :cond_0
    int-to-float v11, v9

    .line 30
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h:F

    :goto_0
    add-int/lit16 v9, v9, -0x4650

    int-to-double v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v15

    double-to-float v9, v11

    .line 31
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v9

    add-int/lit16 v9, v9, -0x4650

    int-to-double v11, v9

    mul-double v11, v11, v13

    div-double/2addr v11, v15

    double-to-float v9, v11

    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c:F

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v9

    add-int/lit16 v9, v9, -0x4650

    int-to-double v11, v9

    mul-double v11, v11, v13

    div-double/2addr v11, v15

    double-to-float v9, v11

    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d:F

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v9

    .line 35
    invoke-static {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->d(BZ)I

    move-result v11

    .line 36
    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    move-result-object v11

    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const/4 v11, 0x0

    .line 37
    invoke-static {v9, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->d(BZ)I

    move-result v9

    .line 38
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v9

    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v12

    .line 40
    invoke-static {v12, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v5

    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->m:Z

    .line 41
    invoke-static {v12, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v15

    iput-boolean v15, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n:Z

    const/4 v15, 0x2

    .line 42
    invoke-static {v12, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v13

    iput-boolean v13, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o:Z

    const/4 v13, 0x3

    .line 43
    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p:Z

    .line 44
    invoke-static {v12, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q:Z

    .line 45
    invoke-static {v12, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r:Z

    const/4 v14, 0x6

    .line 46
    invoke-static {v12, v14}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v10

    iput-boolean v10, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->s:Z

    const/4 v10, 0x7

    .line 47
    invoke-static {v12, v10}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v12

    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t:Z

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v12

    .line 49
    invoke-static {v12, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 50
    invoke-static {v12, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v4

    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u:Z

    .line 51
    invoke-static {v12, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v4

    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v:Z

    .line 52
    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v4

    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w:Z

    .line 53
    invoke-static {v12, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->x:Z

    .line 54
    invoke-static {v12, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->y:Z

    .line 55
    invoke-static {v12, v14}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->z:Z

    .line 56
    invoke-static {v12, v10}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    xor-int/2addr v3, v6

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v3

    .line 58
    invoke-static {v3, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 59
    invoke-static {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 60
    invoke-static {v3, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 61
    invoke-static {v3, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    const/16 v23, 0x4

    const/16 v24, 0x7

    .line 62
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v27, 0x1

    move/from16 v22, v3

    move-wide/from16 v25, v12

    invoke-static/range {v22 .. v27}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v22

    const/16 v23, 0x0

    .line 64
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v27, 0x5

    move-wide/from16 v25, v3

    invoke-static/range {v22 .. v27}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    .line 66
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    goto :goto_1

    .line 67
    :cond_1
    iget v7, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->a:F

    const/16 v10, 0xa

    if-le v3, v10, :cond_2

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    .line 68
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    goto :goto_1

    .line 69
    :cond_2
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    .line 70
    :goto_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q0:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    int-to-float v7, v7

    invoke-virtual {v3, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    const v7, 0xffff

    if-ne v3, v7, :cond_3

    .line 72
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    goto :goto_2

    .line 73
    :cond_3
    iget v7, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->b:F

    const/16 v10, 0xa

    if-le v3, v10, :cond_4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    .line 74
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    goto :goto_2

    .line 75
    :cond_4
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    .line 76
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 77
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->E:I

    goto :goto_3

    .line 78
    :cond_5
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->E:I

    .line 79
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 80
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->F:I

    goto :goto_4

    .line 81
    :cond_6
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->F:I

    .line 82
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    .line 83
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 84
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 85
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 86
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x7

    .line 87
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v26, 0xd

    move-wide/from16 v24, v3

    invoke-static/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v21

    .line 89
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v26, 0x15

    move-wide/from16 v24, v3

    invoke-static/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v21

    .line 91
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v26, 0x1d

    move-wide/from16 v24, v3

    invoke-static/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->G:I

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->H:I

    .line 95
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->c:Z

    if-eqz v3, :cond_8

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v3

    add-int/lit16 v3, v3, -0x2d0

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    goto :goto_5

    .line 97
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->m()S

    move-result v3

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 99
    iget-boolean v4, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->h:Z

    if-eqz v4, :cond_9

    add-int/lit16 v3, v3, -0x2d0

    .line 100
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    goto :goto_5

    :cond_9
    add-int/lit16 v3, v3, -0x4650

    .line 101
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    .line 102
    :goto_5
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->d:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->g:Z

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    const v4, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_14

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_b

    .line 104
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    int-to-float v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->J:F

    goto :goto_7

    :cond_b
    int-to-float v3, v2

    .line 105
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->J:F

    :goto_7
    add-int/lit16 v2, v2, -0x4650

    int-to-double v2, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v9

    double-to-float v2, v2

    .line 106
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    add-int/lit16 v2, v2, -0x4650

    int-to-double v2, v2

    mul-double v2, v2, v7

    div-double/2addr v2, v9

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    add-int/lit16 v2, v2, -0x4650

    int-to-double v2, v2

    mul-double v2, v2, v7

    div-double/2addr v2, v9

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    .line 109
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 110
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 111
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->K:I

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->L:I

    const/4 v2, 0x0

    .line 113
    :goto_8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    array-length v5, v3

    const v6, 0x3c23d70a    # 0.01f

    if-ge v2, v5, :cond_d

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 115
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    .line 116
    :goto_9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->N:[Z

    array-length v7, v5

    if-ge v3, v7, :cond_e

    .line 117
    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v7

    aput-boolean v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    .line 118
    :goto_a
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->O:[F

    array-length v5, v3

    if-ge v2, v5, :cond_f

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    .line 120
    :goto_b
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->P:[I

    array-length v5, v3

    if-ge v2, v5, :cond_10

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 122
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    :goto_c
    const/16 v5, 0x8

    if-ge v3, v5, :cond_11

    .line 123
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v6

    aput-boolean v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 124
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/16 v3, 0xc

    :goto_d
    if-ge v5, v3, :cond_12

    .line 125
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    add-int/lit8 v7, v5, -0x8

    invoke-static {v2, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v7

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 126
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 127
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 129
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 131
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 133
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->W:I

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->X:I

    .line 136
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Y:I

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Z:I

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a0:I

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b0:I

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c0:I

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d0:I

    .line 142
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    .line 144
    invoke-static {v2, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v2

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e0:Z

    .line 145
    :cond_13
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f0:F

    goto/16 :goto_15

    .line 147
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 148
    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->f:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 149
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->c()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d()I

    move-result v7

    sub-int/2addr v3, v7

    const/16 v7, 0x18

    const/4 v10, 0x0

    if-lt v3, v7, :cond_1d

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    int-to-short v3, v3

    .line 161
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v7

    int-to-short v7, v7

    .line 162
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v12

    int-to-short v12, v12

    const v13, 0xffff

    and-int/2addr v3, v13

    add-int/lit16 v3, v3, -0x4650

    int-to-double v14, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v19

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    double-to-float v3, v14

    .line 163
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    and-int/2addr v7, v13

    add-int/lit16 v7, v7, -0x4650

    int-to-double v14, v7

    mul-double v14, v14, v19

    div-double v14, v14, v16

    double-to-float v7, v14

    .line 164
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    and-int v7, v12, v13

    add-int/lit16 v7, v7, -0x4650

    int-to-double v12, v7

    mul-double v12, v12, v19

    div-double v12, v12, v16

    double-to-float v7, v12

    .line 165
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    .line 166
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    float-to-double v12, v3

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v3, v12, v14

    if-lez v3, :cond_1e

    const v3, -0x447ced91    # -0.004f

    mul-float v7, v8, v3

    mul-float v8, v8, v3

    .line 167
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    cmpl-float v12, v3, v10

    if-lez v12, :cond_16

    add-float/2addr v3, v8

    .line 168
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    goto :goto_f

    :cond_16
    add-float/2addr v3, v7

    .line 169
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    .line 170
    :goto_f
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    cmpl-float v12, v3, v10

    if-lez v12, :cond_17

    add-float/2addr v3, v8

    .line 171
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    goto :goto_10

    :cond_17
    add-float/2addr v3, v7

    .line 172
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    .line 173
    :goto_10
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    .line 174
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    mul-float v3, v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    .line 175
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 176
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w0:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_18

    .line 177
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    sput v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w0:F

    .line 178
    :cond_18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 179
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d:F

    float-to-double v12, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c:F

    float-to-double v14, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    float-to-double v7, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    move/from16 p1, v5

    float-to-double v4, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    move-wide/from16 v16, v7

    float-to-double v6, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    float-to-double v10, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    invoke-static/range {v12 .. v23}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->f(DDDDDD)V

    .line 180
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    move-wide/from16 v17, v3

    move/from16 v19, p1

    move-object/from16 v20, v9

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->j(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object/from16 v23, v9

    goto :goto_11

    :cond_19
    move/from16 p1, v5

    .line 181
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d:F

    float-to-double v10, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c:F

    float-to-double v12, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    float-to-double v14, v3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    float-to-double v3, v3

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    float-to-double v5, v5

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    move-object/from16 v23, v9

    float-to-double v8, v7

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v8

    invoke-static/range {v10 .. v21}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->J(DDDDDD)V

    .line 182
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    move-wide/from16 v17, v3

    move/from16 v19, p1

    move-object/from16 v20, v23

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->V(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_11
    const/4 v3, 0x1

    .line 183
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 184
    sget-boolean v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v0:Z

    if-nez v4, :cond_1a

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 185
    sput-boolean v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v0:Z

    .line 186
    :cond_1a
    sget-boolean v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v0:Z

    if-eqz v3, :cond_1c

    .line 187
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v3, :cond_1b

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v3, v4, :cond_1c

    .line 188
    :cond_1b
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_1c

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6863\u4f4d\u4e0d\u4e00\u81f4:\u56fa\u4ef6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",obdGear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",\u4fe1\u4efb\u56fa\u4ef6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->U()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",rpm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 190
    :cond_1c
    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 191
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u0:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_12

    .line 192
    :cond_1d
    iput v10, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    .line 193
    iput v10, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    .line 194
    iput v10, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    .line 195
    :cond_1e
    :goto_12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->U()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    .line 196
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 197
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 198
    :cond_1f
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 199
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    .line 200
    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v2

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e0:Z

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    .line 201
    :goto_13
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v4

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f0:F

    .line 203
    :cond_21
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v4, 0x1

    .line 205
    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v2

    xor-int/2addr v2, v4

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g0:Z

    .line 206
    :cond_22
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v11, 0x0

    .line 208
    :goto_14
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h0:[Z

    array-length v4, v3

    if-ge v11, v4, :cond_23

    .line 209
    invoke-static {v2, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 210
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 212
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 213
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k0:I

    .line 214
    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 215
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 216
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 217
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v1

    .line 219
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :cond_27
    :goto_15
    return-void
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;ZLcn/mucang/android/jiakaoyi/signal/d/h;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 220
    invoke-direct/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const-wide/16 v3, 0x0

    .line 221
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 222
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    new-array v4, v3, [Z

    .line 223
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->N:[Z

    const/16 v4, 0xa

    new-array v5, v4, [F

    .line 224
    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->O:[F

    new-array v5, v3, [I

    .line 225
    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->P:[I

    const/16 v5, 0xc

    new-array v6, v5, [Z

    .line 226
    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    .line 227
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 228
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->CLUTCH_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 229
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 230
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->FLAMEOUT_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 231
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    const/4 v6, 0x1

    .line 232
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g0:Z

    const/4 v7, 0x5

    new-array v8, v7, [Z

    .line 233
    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h0:[Z

    new-array v8, v3, [Z

    .line 234
    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i0:[Z

    .line 235
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const/4 v8, 0x0

    .line 236
    iput v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a:F

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v9

    const v10, 0xffff

    if-ne v9, v10, :cond_0

    .line 247
    sget v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    int-to-float v11, v11

    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h:F

    goto :goto_0

    :cond_0
    int-to-float v11, v9

    .line 248
    iput v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h:F

    :goto_0
    int-to-double v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v15

    double-to-float v9, v11

    .line 249
    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    .line 250
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v9

    int-to-double v11, v9

    mul-double v11, v11, v13

    div-double/2addr v11, v15

    double-to-float v9, v11

    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c:F

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v9

    int-to-double v11, v9

    mul-double v11, v11, v13

    div-double/2addr v11, v15

    double-to-float v9, v11

    iput v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d:F

    .line 252
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v9

    .line 253
    invoke-static {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->d(BZ)I

    move-result v11

    .line 254
    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    move-result-object v11

    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const/4 v11, 0x0

    .line 255
    invoke-static {v9, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->d(BZ)I

    move-result v9

    .line 256
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v9

    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 257
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 258
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    .line 259
    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 260
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v9

    .line 261
    invoke-static {v9, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v12

    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->m:Z

    .line 262
    invoke-static {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v12

    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n:Z

    const/4 v12, 0x2

    .line 263
    invoke-static {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v5

    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o:Z

    const/4 v5, 0x3

    .line 264
    invoke-static {v9, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v15

    iput-boolean v15, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p:Z

    .line 265
    invoke-static {v9, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v15

    iput-boolean v15, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q:Z

    .line 266
    invoke-static {v9, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v15

    iput-boolean v15, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r:Z

    const/4 v15, 0x6

    .line 267
    invoke-static {v9, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v13

    iput-boolean v13, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->s:Z

    const/4 v13, 0x7

    .line 268
    invoke-static {v9, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v9

    iput-boolean v9, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t:Z

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v9

    .line 270
    invoke-static {v9, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 271
    invoke-static {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u:Z

    .line 272
    invoke-static {v9, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v:Z

    .line 273
    invoke-static {v9, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v14

    iput-boolean v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w:Z

    .line 274
    invoke-static {v9, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->x:Z

    .line 275
    invoke-static {v9, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->y:Z

    .line 276
    invoke-static {v9, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->z:Z

    .line 277
    invoke-static {v9, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v3

    xor-int/2addr v3, v6

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    .line 278
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v3

    .line 279
    invoke-static {v3, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 280
    invoke-static {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 281
    invoke-static {v3, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    .line 282
    invoke-static {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    const/16 v18, 0x4

    const/16 v19, 0x7

    .line 283
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v22, 0x1

    move/from16 v17, v3

    move-wide/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v17

    const/16 v18, 0x0

    .line 285
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v22, 0x5

    move-wide/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    const/16 v5, 0xff

    if-ne v3, v5, :cond_2

    .line 287
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    goto :goto_1

    .line 288
    :cond_2
    iget v6, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->a:F

    if-le v3, v4, :cond_3

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 289
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    goto :goto_1

    .line 290
    :cond_3
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    .line 291
    :goto_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q0:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    int-to-float v6, v6

    invoke-virtual {v3, v6, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    .line 292
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    if-ne v3, v10, :cond_4

    .line 293
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    goto :goto_2

    .line 294
    :cond_4
    iget v6, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->b:F

    if-le v3, v4, :cond_5

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 295
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    goto :goto_2

    .line 296
    :cond_5
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    .line 297
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 298
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->E:I

    goto :goto_3

    .line 299
    :cond_6
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->E:I

    .line 300
    :goto_3
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->F:I

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x7

    .line 302
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v9, 0xd

    invoke-static/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 303
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x7

    .line 304
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v22, 0x15

    move-wide/from16 v20, v3

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v17

    .line 306
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    const/16 v22, 0x1d

    move-wide/from16 v20, v3

    invoke-static/range {v17 .. v22}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->a(BIIJI)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 307
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->G:I

    .line 308
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->H:I

    .line 309
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->e:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->c:Z

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->d:Z

    if-eqz v3, :cond_7

    .line 310
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->m()S

    move-result v2

    .line 311
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    add-int/lit16 v2, v2, -0x2d0

    .line 312
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    goto :goto_4

    .line 313
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v3

    .line 314
    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/d/h;->c:Z

    if-eqz v2, :cond_8

    add-int/lit16 v3, v3, -0x2d0

    .line 315
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    goto :goto_4

    .line 316
    :cond_8
    sget v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    .line 317
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v2

    if-ne v2, v10, :cond_9

    .line 318
    sget v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    int-to-float v3, v3

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->J:F

    goto :goto_5

    :cond_9
    int-to-float v3, v2

    .line 319
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->J:F

    :goto_5
    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    double-to-float v2, v2

    .line 320
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    .line 321
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v4

    div-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    .line 322
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->n()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v4

    div-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    .line 323
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->K:I

    .line 324
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->L:I

    const/4 v2, 0x0

    .line 325
    :goto_6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    array-length v4, v3

    const v5, 0x3c23d70a    # 0.01f

    if-ge v2, v4, :cond_a

    .line 326
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 327
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    .line 328
    :goto_7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->N:[Z

    array-length v6, v4

    if-ge v3, v6, :cond_b

    .line 329
    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v6

    aput-boolean v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 330
    :goto_8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->O:[F

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 331
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    .line 332
    :goto_9
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->P:[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 333
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 334
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    :goto_a
    const/16 v4, 0x8

    if-ge v3, v4, :cond_e

    .line 335
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v5

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 336
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/16 v3, 0xc

    :goto_b
    if-ge v4, v3, :cond_f

    .line 337
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    add-int/lit8 v6, v4, -0x8

    invoke-static {v2, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v6

    aput-boolean v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 338
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 339
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 340
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 341
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 343
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 345
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    .line 347
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->W:I

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->X:I

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Y:I

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Z:I

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a0:I

    .line 353
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b0:I

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c0:I

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d0:I

    .line 356
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    .line 358
    invoke-static {v2, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v2

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e0:Z

    .line 359
    :cond_10
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    const/4 v3, 0x0

    .line 361
    :goto_c
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h0:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_11

    .line 362
    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v5

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 363
    :cond_11
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 364
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    .line 365
    :goto_d
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i0:[Z

    array-length v4, v3

    if-ge v11, v4, :cond_12

    .line 366
    invoke-static {v2, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->c(BI)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 367
    :cond_12
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 368
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 369
    :cond_13
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 371
    :cond_14
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->l0:I

    .line 373
    :cond_15
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasByte(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 374
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    add-int/lit8 v2, v2, -0x28

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->m0:I

    .line 375
    :cond_16
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasShort(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 376
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n0:I

    .line 377
    :cond_17
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->hasInt(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o0:I

    :cond_18
    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->O:[F

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardAd:[F

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Q:[Z

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardOutState:[Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->P:[I

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardPwm:[I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->X:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardState:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->N:[Z

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->diState:[Z

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d0:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->gearBoardState:I

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardAd:[F

    .line 9
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->W:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardState:I

    .line 10
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a0:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->microwaveState:I

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->J:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->originGyro2:F

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->pitch2:F

    .line 13
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->K:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->rearMirrorAdjust:I

    .line 14
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->L:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->rearMirrorAdjustDir:I

    .line 15
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->roll2:F

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->R:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    .line 17
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b0:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardState:I

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->T:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->S:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleClutchState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    .line 20
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c0:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleBoardState:I

    .line 21
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->V:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    .line 22
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Y:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic1State:I

    .line 23
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->Z:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic2State:I

    .line 24
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->yaw2:F

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->brakeDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 26
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->carFlameoutSource:Lcn/mucang/android/jiakaoyi/signal/center/model/CarFlameoutSource;

    return-object v0
.end method
