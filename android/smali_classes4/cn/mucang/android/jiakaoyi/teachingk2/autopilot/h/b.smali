.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:D = 6378137.0

.field static b:D = 6356752.314

.field static c:D = 0.9996


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(D)D
    .locals 22

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    sub-double v4, v0, v2

    add-double v6, v0, v2

    div-double/2addr v4, v6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    mul-double v0, v0, v6

    const-wide/high16 v6, -0x3ff8000000000000L    # -3.0

    mul-double v10, v4, v6

    div-double/2addr v10, v2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 3
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    div-double v14, v14, v16

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    .line 4
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v6

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    div-double v18, v18, v6

    add-double v10, v10, v18

    .line 5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v20, 0x402e000000000000L    # 15.0

    mul-double v18, v18, v20

    div-double v18, v18, v16

    .line 6
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide/high16 v20, -0x3fd2000000000000L    # -15.0

    mul-double v16, v16, v20

    div-double v16, v16, v6

    add-double v18, v18, v16

    .line 7
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v12, -0x3fbe800000000000L    # -35.0

    mul-double v6, v6, v12

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    div-double/2addr v6, v12

    .line 8
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x405a400000000000L    # 105.0

    mul-double v12, v12, v14

    const-wide/high16 v14, 0x4070000000000000L    # 256.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 9
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v12, 0x4073b00000000000L    # 315.0

    mul-double v4, v4, v12

    const-wide/high16 v12, 0x4080000000000000L    # 512.0

    div-double/2addr v4, v12

    mul-double v2, v2, p0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    add-double v2, p0, v10

    mul-double v8, v8, p0

    .line 11
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v18, v18, v8

    add-double v2, v2, v18

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, p0

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double v6, v6, p0

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static b(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static c(D)D
    .locals 24

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    sub-double v4, v0, v2

    add-double v6, v0, v2

    div-double/2addr v4, v6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4050000000000000L    # 64.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    mul-double v0, v0, v6

    div-double v0, p0, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v10, v4, v6

    div-double/2addr v10, v2

    .line 3
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, -0x3fc5000000000000L    # -27.0

    mul-double v12, v12, v14

    const-wide/high16 v14, 0x4040000000000000L    # 32.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 4
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide v18, 0x4070d00000000000L    # 269.0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4080000000000000L    # 512.0

    div-double v16, v16, v18

    add-double v10, v10, v16

    .line 5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    const-wide/high16 v20, 0x4035000000000000L    # 21.0

    mul-double v16, v16, v20

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    div-double v16, v16, v20

    .line 6
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide v22, -0x3fb4800000000000L    # -55.0

    mul-double v20, v20, v22

    div-double v20, v20, v14

    add-double v16, v16, v20

    .line 7
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v14, 0x4062e00000000000L    # 151.0

    mul-double v6, v6, v14

    const-wide/high16 v14, 0x4058000000000000L    # 96.0

    div-double/2addr v6, v14

    .line 8
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, -0x3f85f00000000000L    # -417.0

    mul-double v12, v12, v14

    const-wide/high16 v14, 0x4060000000000000L    # 128.0

    div-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 9
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v12, 0x4091240000000000L    # 1097.0

    mul-double v4, v4, v12

    div-double v4, v4, v18

    mul-double v2, v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v10, v10, v2

    add-double/2addr v10, v0

    mul-double v8, v8, v0

    .line 11
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v16, v16, v2

    add-double v10, v10, v16

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    add-double/2addr v10, v6

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v10, v4

    return-wide v10
.end method

.method public static d(DDI[D)I
    .locals 7

    .line 1
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->g(I)D

    move-result-wide v4

    move-wide v0, p0

    move-wide v2, p2

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->e(DDD[D)V

    const/4 p0, 0x0

    .line 2
    aget-wide p1, p5, p0

    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->c:D

    mul-double p1, p1, v0

    const-wide v2, 0x411e848000000000L    # 500000.0

    add-double/2addr p1, v2

    aput-wide p1, p5, p0

    const/4 p0, 0x1

    .line 3
    aget-wide p1, p5, p0

    mul-double p1, p1, v0

    aput-wide p1, p5, p0

    .line 4
    aget-wide p1, p5, p0

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    .line 5
    aget-wide p1, p5, p0

    const-wide v0, 0x416312d000000000L    # 1.0E7

    add-double/2addr p1, v0

    aput-wide p1, p5, p0

    :cond_0
    return p4
.end method

.method public static e(DDD[D)V
    .locals 28

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    sget-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v0, v0, v4

    .line 3
    sget-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sget-wide v6, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v0, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v6, v6, v10

    div-double/2addr v4, v6

    .line 4
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v10, v6, v6

    sub-double v12, p2, p4

    sub-double/2addr v8, v10

    add-double/2addr v8, v0

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    sub-double v16, v14, v10

    const-wide/high16 v18, 0x4022000000000000L    # 9.0

    mul-double v18, v18, v0

    add-double v16, v16, v18

    mul-double v18, v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v18, v18, v2

    add-double v16, v16, v18

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    mul-double v18, v18, v10

    sub-double v18, v14, v18

    mul-double v20, v10, v10

    add-double v18, v18, v20

    const-wide/high16 v22, 0x402c000000000000L    # 14.0

    mul-double v22, v22, v0

    add-double v18, v18, v22

    const-wide/high16 v22, 0x404d000000000000L    # 58.0

    mul-double v22, v22, v10

    mul-double v24, v22, v0

    sub-double v18, v18, v24

    const-wide v24, 0x404e800000000000L    # 61.0

    sub-double v22, v24, v22

    add-double v22, v22, v20

    const-wide v26, 0x4070e00000000000L    # 270.0

    mul-double v26, v26, v0

    add-double v22, v22, v26

    const-wide v26, 0x4074a00000000000L    # 330.0

    mul-double v26, v26, v10

    mul-double v26, v26, v0

    sub-double v22, v22, v26

    const-wide v0, 0x407df00000000000L    # 479.0

    mul-double v0, v0, v10

    sub-double v24, v24, v0

    const-wide v0, 0x4066600000000000L    # 179.0

    mul-double v0, v0, v20

    add-double v24, v24, v0

    mul-double v0, v20, v10

    sub-double v24, v24, v0

    const-wide v26, 0x40a84e0000000000L    # 3111.0

    mul-double v10, v10, v26

    const-wide v26, 0x4095a40000000000L    # 1385.0

    sub-double v26, v26, v10

    const-wide v10, 0x4080f80000000000L    # 543.0

    mul-double v20, v20, v10

    add-double v26, v26, v20

    sub-double v26, v26, v0

    .line 5
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    mul-double v0, v0, v12

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    div-double v20, v4, v10

    .line 6
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v20, v20, v10

    mul-double v20, v20, v8

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v20, v20, v2

    add-double v0, v0, v20

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    div-double v2, v4, v2

    .line 7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    mul-double v2, v2, v18

    .line 8
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x40b3b00000000000L    # 5040.0

    div-double v2, v4, v2

    .line 9
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    mul-double v2, v2, v24

    .line 10
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    const/4 v2, 0x0

    aput-wide v0, p6, v2

    .line 11
    invoke-static/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v8, v6, v2

    mul-double v8, v8, v4

    .line 12
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v8, v8, v10

    .line 13
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v8, v8, v2

    add-double/2addr v0, v8

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double v2, v6, v2

    mul-double v2, v2, v4

    .line 14
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    mul-double v2, v2, v16

    .line 15
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x4086800000000000L    # 720.0

    div-double v2, v6, v2

    mul-double v2, v2, v4

    .line 16
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    mul-double v2, v2, v22

    .line 17
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v2, v2, v8

    add-double/2addr v0, v2

    const-wide v2, 0x40e3b00000000000L    # 40320.0

    div-double/2addr v6, v2

    mul-double v6, v6, v4

    .line 18
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v6, v6, v2

    mul-double v6, v6, v26

    .line 19
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v6, v6, v2

    add-double/2addr v0, v6

    const/4 v2, 0x1

    aput-wide v0, p6, v2

    return-void
.end method

.method public static f(DDD[D)V
    .locals 48

    move-wide/from16 v0, p0

    .line 1
    invoke-static/range {p2 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->c(D)D

    move-result-wide v2

    .line 2
    sget-wide v4, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sget-wide v8, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v4, v8

    sget-wide v8, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v4, v8

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 4
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v4, v4, v10

    .line 5
    sget-wide v10, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->a:D

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sget-wide v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v4, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    div-double/2addr v10, v12

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v16, v12, v12

    mul-double v18, v16, v16

    mul-double v20, v10, v8

    div-double v20, v14, v20

    mul-double v22, v10, v10

    mul-double v24, v22, v6

    div-double v24, v12, v24

    mul-double v22, v22, v10

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v26, v22, v6

    mul-double v26, v26, v8

    div-double v26, v14, v26

    mul-double v22, v22, v10

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    mul-double v30, v22, v28

    div-double v30, v12, v30

    mul-double v22, v22, v10

    const-wide/high16 v32, 0x405e000000000000L    # 120.0

    mul-double v32, v32, v22

    mul-double v32, v32, v8

    div-double v32, v14, v32

    mul-double v22, v22, v10

    const-wide v34, 0x4086800000000000L    # 720.0

    mul-double v36, v22, v34

    div-double v36, v12, v36

    mul-double v22, v22, v10

    const-wide v38, 0x40b3b00000000000L    # 5040.0

    mul-double v38, v38, v22

    mul-double v38, v38, v8

    div-double v14, v14, v38

    mul-double v22, v22, v10

    const-wide v8, 0x40e3b00000000000L    # 40320.0

    mul-double v22, v22, v8

    div-double v12, v12, v22

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    sub-double v10, v8, v4

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v16

    sub-double v8, v8, v22

    sub-double/2addr v8, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v22, v16, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    add-double v22, v22, v6

    const-wide/high16 v40, 0x4018000000000000L    # 6.0

    mul-double v42, v4, v40

    add-double v22, v22, v42

    mul-double v44, v16, v40

    mul-double v44, v44, v4

    sub-double v22, v22, v44

    mul-double v40, v4, v4

    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    mul-double v44, v40, v38

    sub-double v22, v22, v44

    const-wide/high16 v44, 0x4022000000000000L    # 9.0

    mul-double v44, v44, v16

    mul-double v44, v44, v40

    sub-double v22, v22, v44

    const-wide/high16 v40, 0x403c000000000000L    # 28.0

    mul-double v40, v40, v16

    add-double v40, v40, v6

    mul-double v28, v28, v18

    add-double v40, v40, v28

    add-double v40, v40, v42

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double v42, v16, v6

    mul-double v42, v42, v4

    add-double v40, v40, v42

    const-wide v42, 0x4056800000000000L    # 90.0

    mul-double v42, v42, v16

    const-wide v44, -0x3fb1800000000000L    # -61.0

    sub-double v42, v44, v42

    const-wide v46, 0x4046800000000000L    # 45.0

    mul-double v46, v46, v18

    sub-double v42, v42, v46

    const-wide v46, 0x405ac00000000000L    # 107.0

    mul-double v46, v46, v4

    sub-double v42, v42, v46

    const-wide v46, 0x4064400000000000L    # 162.0

    mul-double v46, v46, v16

    mul-double v46, v46, v4

    add-double v42, v42, v46

    const-wide v4, 0x4084b00000000000L    # 662.0

    mul-double v4, v4, v16

    sub-double v44, v44, v4

    const-wide v4, 0x4094a00000000000L    # 1320.0

    mul-double v4, v4, v18

    sub-double v44, v44, v4

    mul-double v4, v18, v16

    mul-double v34, v34, v4

    sub-double v44, v44, v34

    const-wide v34, 0x40ac620000000000L    # 3633.0

    mul-double v16, v16, v34

    const-wide v34, 0x4095a40000000000L    # 1385.0

    add-double v16, v16, v34

    const-wide v34, 0x40affe0000000000L    # 4095.0

    mul-double v18, v18, v34

    add-double v16, v16, v18

    const-wide v18, 0x40989c0000000000L    # 1575.0

    mul-double v4, v4, v18

    add-double v16, v16, v4

    mul-double v24, v24, v10

    mul-double v4, v0, v0

    mul-double v24, v24, v4

    add-double v2, v2, v24

    mul-double v30, v30, v22

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 7
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v30, v30, v4

    add-double v2, v2, v30

    mul-double v36, v36, v42

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v36, v36, v4

    add-double v2, v2, v36

    mul-double v12, v12, v16

    .line 8
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v12, v12, v4

    add-double/2addr v2, v12

    const/4 v4, 0x0

    aput-wide v2, p6, v4

    mul-double v20, v20, v0

    add-double v2, p4, v20

    mul-double v26, v26, v8

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 9
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v26, v26, v4

    add-double v2, v2, v26

    mul-double v32, v32, v40

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v32, v32, v4

    add-double v2, v2, v32

    mul-double v14, v14, v44

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    .line 10
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v14, v14, v0

    add-double/2addr v2, v14

    const/4 v0, 0x1

    aput-wide v2, p6, v0

    return-void
.end method

.method public static g(I)D
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v0, v0, v2

    const-wide v2, -0x3f99200000000000L    # -183.0

    add-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static h(DDIZ[D)V
    .locals 9

    const-wide v0, 0x411e848000000000L    # 500000.0

    sub-double/2addr p0, v0

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->c:D

    div-double v2, p0, v0

    if-eqz p5, :cond_0

    const-wide p0, 0x416312d000000000L    # 1.0E7

    sub-double/2addr p2, p0

    :cond_0
    div-double v4, p2, v0

    .line 2
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->g(I)D

    move-result-wide v6

    move-object v8, p6

    .line 3
    invoke-static/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->f(DDD[D)V

    return-void
.end method

.method public static i(DD)[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1
    fill-array-data v0, :array_0

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_1

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpg-double v3, v1, p0

    if-lez v3, :cond_1

    const-wide v3, -0x3fa9800000000000L    # -90.0

    cmpg-double v5, p2, v3

    if-ltz v5, :cond_0

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpg-double v5, v3, p2

    if-ltz v5, :cond_0

    add-double/2addr v1, p0

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    div-double/2addr v1, v3

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v5, v1, 0x1

    .line 3
    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b(D)D

    move-result-wide v1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->b(D)D

    move-result-wide v3

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/b;->d(DDI[D)I

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The latitude you entered is out of range.  Please enter a number in the range [-90, 90]."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The longitude you entered is out of range.  Please enter a number in the range [-180, 180)."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
