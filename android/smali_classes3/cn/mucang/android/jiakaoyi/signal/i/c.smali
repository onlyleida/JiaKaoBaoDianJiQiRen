.class public Lcn/mucang/android/jiakaoyi/signal/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-wide v0, 0x415854c140000000L    # 6378245.0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    const-wide v0, 0x41583fdfc13404eaL    # 6356863.0188

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-wide v0, 0x415854a700000000L    # 6378140.0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    const-wide v0, 0x41583fc4d271de6aL    # 6356755.2882

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    :cond_1
    :goto_0
    const/4 v0, 0x2

    const-wide v1, 0x415854a640000000L    # 6378137.0

    if-ne p1, v0, :cond_2

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    const-wide v3, 0x41583fc4141bda51L    # 6356752.3142

    .line 7
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 8
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    const-wide v0, 0x41583fc4141adea9L    # 6356752.31414

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    .line 10
    :cond_3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->c:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    mul-double v2, v2, v2

    sub-double/2addr v0, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->d:D

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->e:D

    .line 13
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->h:D

    .line 14
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->i:D

    .line 15
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->j:D

    .line 16
    iput-wide p6, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->f:D

    .line 17
    iput-wide p8, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->g:D

    mul-double v0, v0, v0

    .line 18
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->k:D

    mul-double p1, v0, v0

    .line 19
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->l:D

    mul-double p1, p1, v0

    .line 20
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->m:D

    mul-double p1, p1, v0

    .line 21
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->n:D

    .line 22
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->d:D

    mul-double p1, p1, p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->o:D

    mul-double p3, p1, p1

    .line 23
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->p:D

    mul-double p3, p3, p1

    .line 24
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/i/c;->q:D

    return-void
.end method

.method public static a(D)Lcn/mucang/android/jiakaoyi/signal/i/c;
    .locals 11

    .line 1
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/i/c;

    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v10

    move-wide v2, p0

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/signal/i/c;-><init>(IDDDD)V

    return-object v10
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 11

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double v0, v0, v2

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v4, v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/i/c;->c(DD)[D

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    const/4 v4, 0x0

    aget-wide v7, v0, v4

    iget-wide v9, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    mul-double v9, v9, v2

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    return-object v1
.end method

.method public c(DD)[D
    .locals 50

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 1
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->o:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double v6, v4, v2

    add-double/2addr v2, v4

    div-double/2addr v6, v2

    .line 2
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->g:D

    sub-double v2, p3, v2

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->j:D

    div-double/2addr v2, v8

    .line 3
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->o:D

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double/2addr v10, v12

    sub-double v10, v4, v10

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->p:D

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v16

    const-wide/high16 v18, 0x4050000000000000L    # 64.0

    div-double v14, v14, v18

    sub-double/2addr v10, v14

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->q:D

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    mul-double v14, v14, v18

    const-wide/high16 v20, 0x4070000000000000L    # 256.0

    div-double v14, v14, v20

    sub-double/2addr v10, v14

    mul-double v8, v8, v10

    div-double/2addr v2, v8

    mul-double v8, v6, v6

    mul-double v10, v8, v6

    mul-double v14, v10, v6

    mul-double v6, v6, v16

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v6, v6, v22

    const-wide/high16 v24, 0x403b000000000000L    # 27.0

    mul-double v24, v24, v10

    const-wide/high16 v26, 0x4040000000000000L    # 32.0

    div-double v24, v24, v26

    sub-double v6, v6, v24

    mul-double v24, v2, v22

    .line 4
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v6, v6, v24

    add-double/2addr v6, v2

    const-wide/high16 v24, 0x4035000000000000L    # 21.0

    mul-double v8, v8, v24

    const-wide/high16 v24, 0x4030000000000000L    # 16.0

    div-double v8, v8, v24

    const-wide v24, 0x404b800000000000L    # 55.0

    mul-double v24, v24, v14

    div-double v24, v24, v26

    sub-double v8, v8, v24

    mul-double v24, v2, v12

    .line 5
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v8, v8, v24

    add-double/2addr v6, v8

    const-wide v8, 0x4062e00000000000L    # 151.0

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x4058000000000000L    # 96.0

    div-double/2addr v10, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v24, v2, v8

    .line 6
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v10, v10, v24

    add-double/2addr v6, v10

    const-wide v10, 0x4001240000000000L    # 2.142578125

    mul-double v14, v14, v10

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v14, v14, v2

    add-double/2addr v6, v14

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 9
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->d:D

    mul-double v10, v10, v2

    mul-double v10, v10, v10

    sub-double v2, v4, v10

    mul-double v10, v2, v2

    mul-double v10, v10, v2

    .line 10
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->o:D

    sub-double v12, v4, v12

    mul-double v8, v8, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    .line 11
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v10, v2

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v12, v2, v2

    .line 13
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->f:D

    sub-double v4, p1, v4

    move-wide/from16 v30, v6

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->j:D

    mul-double v6, v6, v10

    div-double/2addr v4, v6

    .line 14
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->k:D

    mul-double v32, v6, v14

    mul-double v32, v32, v14

    mul-double v34, v4, v4

    mul-double v36, v34, v4

    mul-double v38, v34, v34

    mul-double v40, v38, v4

    mul-double v42, v38, v34

    mul-double v44, v12, v12

    mul-double v46, v32, v32

    mul-double v10, v10, v2

    div-double/2addr v10, v8

    div-double v34, v34, v22

    mul-double v2, v12, v16

    add-double v2, v2, v18

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double v8, v8, v32

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    mul-double v48, v12, v8

    mul-double v48, v48, v32

    sub-double v2, v2, v48

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v26, v26, v46

    sub-double v2, v2, v26

    mul-double v8, v8, v6

    sub-double/2addr v2, v8

    mul-double v2, v2, v38

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    div-double/2addr v2, v8

    sub-double v34, v34, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    mul-double v2, v2, v12

    const-wide v26, 0x404e800000000000L    # 61.0

    add-double v2, v2, v26

    const-wide v26, 0x4046800000000000L    # 45.0

    mul-double v26, v26, v44

    add-double v2, v2, v26

    mul-double v20, v20, v6

    sub-double v2, v2, v20

    mul-double v46, v46, v16

    sub-double v2, v2, v46

    mul-double v2, v2, v42

    const-wide v16, 0x4086800000000000L    # 720.0

    div-double v2, v2, v16

    add-double v34, v34, v2

    mul-double v10, v10, v34

    sub-double v2, v30, v10

    .line 15
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->h:D

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v10, v10, v16

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v10, v10, v20

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v14, v26, v14

    mul-double v28, v12, v22

    add-double v28, v28, v26

    add-double v28, v28, v32

    mul-double v28, v28, v36

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    div-double v28, v28, v24

    sub-double v4, v4, v28

    mul-double v32, v32, v22

    sub-double v18, v18, v32

    const-wide/high16 v22, 0x403c000000000000L    # 28.0

    mul-double v12, v12, v22

    add-double v18, v18, v12

    sub-double v18, v18, v46

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    mul-double v6, v6, v12

    add-double v18, v18, v6

    mul-double v44, v44, v8

    add-double v18, v18, v44

    mul-double v18, v18, v40

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double v18, v18, v6

    add-double v4, v4, v18

    mul-double v14, v14, v4

    add-double/2addr v10, v14

    mul-double v2, v2, v20

    div-double v2, v2, v16

    mul-double v10, v10, v20

    div-double v10, v10, v16

    const/4 v4, 0x0

    aput-wide v10, v1, v4

    .line 16
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->i:D

    add-double/2addr v2, v4

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    return-object v1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 13

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/c;->e(DD)[D

    move-result-object v0

    .line 2
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v5, v1, v3

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    mul-double v9, v1, v3

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    mul-double v11, v0, v3

    move-object v1, v8

    move-wide v2, v5

    move-wide v4, v9

    move-wide v6, v11

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v8
.end method

.method public e(DD)[D
    .locals 38

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [D

    .line 1
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->i:D

    sub-double v2, p3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    .line 2
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->h:D

    sub-double v8, p1, v8

    mul-double v8, v8, v4

    div-double/2addr v8, v6

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 5
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->d:D

    mul-double v10, v10, v4

    .line 6
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    mul-double v10, v10, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v10, v14, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v12, v10

    .line 7
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->a:D

    mul-double v10, v10, v10

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->b:D

    div-double/2addr v10, v14

    .line 8
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->k:D

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v14, v14, v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v14

    move-wide/from16 p3, v12

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->l:D

    const-wide v18, 0x4046800000000000L    # 45.0

    mul-double v18, v18, v12

    const-wide/high16 v20, 0x4050000000000000L    # 64.0

    div-double v18, v18, v20

    add-double v14, v14, v18

    move-wide/from16 v18, v8

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->m:D

    const-wide v20, 0x4065e00000000000L    # 175.0

    mul-double v20, v20, v8

    const-wide/high16 v22, 0x4070000000000000L    # 256.0

    div-double v20, v20, v22

    sub-double v14, v14, v20

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->n:D

    const-wide v22, 0x40c5888000000000L    # 11025.0

    mul-double v22, v22, v10

    const-wide/high16 v24, 0x40d0000000000000L    # 16384.0

    div-double v22, v22, v24

    add-double v14, v14, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v24, v14, v22

    const-wide/high16 v22, 0x3fde000000000000L    # 0.46875

    mul-double v12, v12, v22

    const-wide v22, 0x3fdd2aaaaaaaaaabL    # 0.4557291666666667

    mul-double v22, v22, v8

    sub-double v12, v12, v22

    const-wide v22, 0x3fdcb60000000000L    # 0.4486083984375

    mul-double v22, v22, v10

    add-double v12, v12, v22

    const-wide v22, 0x3fd7555555555555L    # 0.3645833333333333

    mul-double v8, v8, v22

    const-wide/16 v22, 0x0

    sub-double v22, v22, v8

    const-wide v8, 0x3fd6f80000000000L    # 0.35888671875

    mul-double v8, v8, v10

    add-double v22, v22, v8

    const-wide v8, 0x3fd3b00000000000L    # 0.3076171875

    mul-double v10, v10, v8

    mul-double v8, v6, v6

    mul-double v26, v8, v6

    mul-double v28, v8, v26

    mul-double v8, v8, v28

    mul-double v14, v14, v2

    mul-double v24, v24, v6

    mul-double v12, v12, v26

    add-double v24, v24, v12

    mul-double v22, v22, v28

    add-double v24, v24, v22

    mul-double v10, v10, v8

    add-double v24, v24, v10

    mul-double v24, v24, v4

    add-double v14, v14, v24

    mul-double v10, v20, v14

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 10
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->e:D

    mul-double v8, v8, v6

    mul-double v12, v18, v18

    mul-double v14, v12, v18

    mul-double v20, v12, v12

    mul-double v22, v20, v18

    mul-double v24, v12, v20

    mul-double v2, v2, v2

    mul-double v30, v2, v2

    mul-double v8, v8, v8

    mul-double v32, v8, v8

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v12, v12, v34

    mul-double v12, v12, p3

    mul-double v12, v12, v4

    mul-double v12, v12, v6

    add-double/2addr v10, v12

    mul-double v20, v20, p3

    mul-double v20, v20, v4

    mul-double v20, v20, v26

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    div-double v20, v20, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    sub-double v34, v12, v2

    const-wide/high16 v36, 0x4022000000000000L    # 9.0

    mul-double v36, v36, v8

    add-double v34, v34, v36

    mul-double v32, v32, v16

    add-double v34, v34, v32

    mul-double v20, v20, v34

    add-double v10, v10, v20

    mul-double v24, v24, p3

    mul-double v24, v24, v4

    mul-double v24, v24, v28

    const-wide/high16 v4, 0x404d000000000000L    # 58.0

    mul-double v16, v2, v4

    const-wide v20, 0x404e800000000000L    # 61.0

    sub-double v20, v20, v16

    add-double v20, v20, v30

    mul-double v24, v24, v20

    const-wide v16, 0x4086800000000000L    # 720.0

    div-double v24, v24, v16

    add-double v10, v10, v24

    mul-double v16, v18, p3

    mul-double v16, v16, v6

    mul-double v14, v14, p3

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double/2addr v14, v6

    mul-double v14, v14, v26

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    add-double/2addr v6, v8

    mul-double v14, v14, v6

    add-double v16, v16, v14

    mul-double v22, v22, p3

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double v22, v22, v6

    mul-double v22, v22, v28

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    mul-double v6, v6, v2

    sub-double/2addr v12, v6

    add-double v12, v12, v30

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    mul-double v6, v6, v8

    add-double/2addr v12, v6

    mul-double v8, v8, v4

    mul-double v8, v8, v2

    sub-double/2addr v12, v8

    mul-double v22, v22, v12

    add-double v16, v16, v22

    .line 11
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->f:D

    add-double v16, v16, v2

    const/4 v2, 0x0

    aput-wide v16, v1, v2

    .line 12
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/i/c;->g:D

    add-double/2addr v10, v2

    const/4 v2, 0x1

    aput-wide v10, v1, v2

    return-object v1
.end method
