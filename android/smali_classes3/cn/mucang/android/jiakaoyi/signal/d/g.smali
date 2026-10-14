.class public Lcn/mucang/android/jiakaoyi/signal/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;

.field private b:[J

.field private c:[S

.field private d:J

.field private e:[J

.field private final f:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field private final g:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field private final i:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private final o:Lcn/mucang/android/jiakaoyi/signal/d/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->b:[J

    new-array v0, v0, [S

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->d:J

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->e:[J

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->f:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->g:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->h:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->i:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->j:F

    const v2, -0x383cb080    # -99999.0f

    .line 13
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->k:F

    .line 14
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->l:F

    .line 15
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->n:Z

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "keyFingerprintDefault"

    .line 19
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->n:Z

    if-eqz v1, :cond_2

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FingerPrint:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->m(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    :cond_1
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 23
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->n:Z

    .line 24
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/h;->a()Lcn/mucang/android/jiakaoyi/signal/d/h;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->o:Lcn/mucang/android/jiakaoyi/signal/d/h;

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    const/4 v11, 0x1

    .line 2
    iput-byte v11, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    .line 3
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k0:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    move-result-object v0

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    .line 6
    :cond_0
    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->B:J

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v14

    .line 8
    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FootBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o:Z

    invoke-virtual {v14, v12, v13, v15, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v17

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->m:Z

    invoke-virtual {v14, v12, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v6

    .line 10
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->D:I

    int-to-float v0, v0

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    const v2, 0x40666666    # 3.6f

    mul-float v1, v1, v2

    .line 13
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 14
    :cond_2
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r0:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 15
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 16
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->f()Z

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    if-nez v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/b;->c()F

    move-result v0

    .line 19
    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_5

    mul-float v1, v1, v0

    .line 20
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 21
    :cond_5
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 22
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 23
    iput v3, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    goto :goto_0

    .line 24
    :cond_7
    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 25
    :goto_0
    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    .line 26
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    goto :goto_3

    .line 29
    :cond_9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v6, :cond_a

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_a

    .line 30
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 31
    iput-boolean v7, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    const/4 v8, 0x0

    goto :goto_4

    .line 32
    :cond_a
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 33
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    goto :goto_3

    .line 34
    :cond_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->KongDang:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v3, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->A:Z

    invoke-virtual {v14, v12, v13, v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    .line 35
    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/signal/d/g;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;

    iget-object v4, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    iget-wide v7, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-object v11, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object/from16 v16, v3

    move/from16 v18, v6

    move/from16 v19, v1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v0

    move-wide/from16 v23, v7

    move-object/from16 v25, v11

    invoke-virtual/range {v16 .. v25}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/a;->d(ZZZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;IFJLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    :goto_3
    move v8, v1

    .line 36
    :goto_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d()Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    move-result-object v1

    iget-byte v3, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v1, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;BLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->BackGear:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v14, v12, v13, v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    .line 40
    :cond_d
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_e

    goto :goto_5

    :cond_e
    if-eqz v8, :cond_12

    .line 41
    iget-boolean v3, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p0:Z

    if-nez v3, :cond_12

    if-eqz v6, :cond_12

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v3, :cond_12

    move-object/from16 v11, p0

    move-object v0, v1

    goto :goto_6

    .line 42
    :cond_f
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 43
    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->z:Z

    if-eqz v1, :cond_10

    .line 44
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    .line 45
    :cond_10
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_12

    .line 46
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    :cond_11
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_12
    :goto_5
    move-object/from16 v11, p0

    .line 47
    :goto_6
    iget v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->k:F

    const/4 v3, 0x0

    const v4, -0x383cb080    # -99999.0f

    cmpl-float v5, v1, v4

    if-nez v5, :cond_13

    .line 48
    iput v3, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->j:F

    goto :goto_7

    .line 49
    :cond_13
    iget v5, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    sub-float/2addr v5, v1

    neg-float v1, v5

    .line 50
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x42900000    # 72.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_14

    .line 52
    iget v5, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->j:F

    add-float/2addr v5, v1

    iput v5, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->j:F

    .line 53
    :cond_14
    :goto_7
    iget v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    iput v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->k:F

    .line 54
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v5, :cond_15

    .line 55
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_8

    .line 56
    :cond_15
    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 57
    :goto_8
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->j:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 58
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->k:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 59
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->l:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 60
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->G:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    .line 61
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->I:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    .line 62
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->i:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 63
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->C:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    .line 64
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->h:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    .line 65
    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->j:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    .line 66
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_18

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 68
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    goto :goto_a

    .line 69
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 70
    iget v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->l:F

    cmpl-float v2, v1, v4

    if-nez v2, :cond_17

    .line 71
    iput v3, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    goto :goto_9

    :cond_17
    sub-float v1, v0, v1

    .line 72
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 73
    iget v2, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    add-float/2addr v2, v1

    iput v2, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    .line 74
    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->b(FF)F

    move-result v1

    iput v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    .line 75
    :goto_9
    iget v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->m:F

    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 76
    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->l:F

    goto :goto_a

    .line 77
    :cond_18
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 78
    :goto_a
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->F:I

    int-to-float v0, v0

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->q:F

    .line 79
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->H:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    .line 80
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->E:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    .line 81
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const/4 v7, 0x0

    invoke-virtual {v14, v12, v13, v1, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    invoke-static {v7, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 82
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v2, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 83
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v2, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 84
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v2, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 85
    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    .line 86
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchSeat:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v1, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    invoke-static {v7, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 87
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchOutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v2, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 88
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchInsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v2, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 89
    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    .line 90
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FingerPrint:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->n:Z

    invoke-virtual {v14, v12, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    .line 91
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->KeyStarting:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v12, v13, v0, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    .line 92
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/s0;->a()I

    move-result v4

    .line 93
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->e:[J

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Wiper:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    iget-boolean v3, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e0:Z

    invoke-virtual {v14, v12, v13, v0, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v3

    const/4 v5, 0x0

    move/from16 v16, v8

    iget-wide v7, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    move-object/from16 v0, p0

    move-object/from16 v17, v15

    move v15, v6

    move-wide v6, v7

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->e([JIZIZJ)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    .line 94
    iget v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f0:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->K:F

    .line 95
    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g0:Z

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->o:Z

    .line 96
    iput-wide v12, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    .line 97
    iget-object v8, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->g:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->e:[J

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->SafeBelt:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    iget-boolean v3, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->q:Z

    invoke-virtual {v14, v12, v13, v0, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v3

    const/16 v4, 0x190

    iget-wide v6, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->e([JIZIZJ)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    .line 98
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->i:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0, v15}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    .line 99
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->h:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->HandBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v2, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n:Z

    invoke-virtual {v14, v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    .line 100
    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o:Z

    move-object/from16 v1, v17

    invoke-virtual {v14, v12, v13, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    .line 101
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Horn:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v1, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->p:Z

    invoke-virtual {v14, v12, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    .line 102
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->f:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Door:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v2, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->r:Z

    invoke-virtual {v14, v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    move/from16 v1, v16

    .line 103
    iput-boolean v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    .line 104
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Key:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->f(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1a

    .line 105
    invoke-virtual {v14, v12, v13, v0, v8}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ACC:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    goto :goto_b

    :cond_19
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Lock:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    :goto_b
    iput-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 107
    :cond_1a
    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->s:Z

    invoke-virtual {v14, v12, v13, v15, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v6

    .line 108
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v0, v9, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->t:Z

    invoke-virtual {v14, v12, v13, v7, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v5

    const-wide/16 v3, 0x0

    if-eq v6, v5, :cond_1b

    .line 109
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->d:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_1c

    .line 110
    iget-wide v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->d:J

    goto :goto_c

    .line 111
    :cond_1b
    iput-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->d:J

    .line 112
    :cond_1c
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->i()Z

    move-result v16

    .line 113
    sget-object v17, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a:Lcn/mucang/android/jiakaoyi/signal/utils/g;

    invoke-virtual/range {v17 .. v17}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->a()I

    move-result v2

    .line 114
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->DoubleFlashLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 115
    invoke-virtual {v14, v12, v13, v0, v8}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v18

    .line 116
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->b:[J

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/16 v19, 0x0

    iget-wide v8, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v2

    move/from16 v2, v20

    move-wide/from16 v22, v3

    move/from16 v3, v18

    move/from16 v4, v21

    move/from16 v18, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move-wide/from16 v24, v12

    move-object v12, v7

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->e([JIZIZJ)Z

    move-result v0

    :goto_d
    move v8, v0

    goto :goto_10

    :cond_1d
    move/from16 v21, v2

    move-wide/from16 v22, v3

    move/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v24, v12

    move-object v12, v7

    if-eqz v19, :cond_1e

    if-eqz v18, :cond_1e

    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    .line 117
    :goto_e
    iget-wide v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-direct {v11, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/g;->c(J)Z

    move-result v5

    .line 118
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/d/g;->b:[J

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-eqz v16, :cond_1f

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x1f4

    move v4, v0

    goto :goto_f

    :cond_1f
    const/4 v4, 0x0

    :goto_f
    iget-wide v6, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->e([JIZIZJ)Z

    move-result v0

    goto :goto_d

    .line 119
    :goto_10
    invoke-virtual/range {v17 .. v17}, Lcn/mucang/android/jiakaoyi/signal/utils/g;->b()I

    move-result v9

    .line 120
    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 121
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-eqz v19, :cond_20

    if-nez v8, :cond_20

    const/4 v2, 0x1

    goto :goto_11

    :cond_20
    const/4 v2, 0x0

    :goto_11
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    int-to-long v6, v9

    move-object/from16 v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->f(IZZJJ)Z

    move-result v0

    :goto_12
    move v13, v0

    goto :goto_15

    .line 122
    :cond_21
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-eqz v19, :cond_22

    if-nez v8, :cond_22

    const/4 v2, 0x1

    goto :goto_13

    :cond_22
    const/4 v2, 0x0

    :goto_13
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    if-eqz v16, :cond_23

    int-to-long v6, v9

    goto :goto_14

    :cond_23
    move-wide/from16 v6, v22

    :goto_14
    move-object/from16 v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->f(IZZJJ)Z

    move-result v0

    goto :goto_12

    .line 123
    :goto_15
    invoke-virtual {v14, v12}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->l(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 124
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-eqz v18, :cond_24

    if-nez v8, :cond_24

    const/4 v2, 0x1

    goto :goto_16

    :cond_24
    const/4 v2, 0x0

    :goto_16
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    int-to-long v6, v9

    move-object/from16 v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->f(IZZJJ)Z

    move-result v0

    goto :goto_19

    .line 125
    :cond_25
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-eqz v18, :cond_26

    if-nez v8, :cond_26

    const/4 v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x0

    :goto_17
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    if-eqz v16, :cond_27

    int-to-long v6, v9

    goto :goto_18

    :cond_27
    move-wide/from16 v6, v22

    :goto_18
    move-object/from16 v0, p0

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/d/g;->f(IZZJJ)Z

    move-result v0

    .line 126
    :goto_19
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v13}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v1

    .line 127
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 128
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, v1, v8}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 129
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-object/from16 v3, p1

    iget-boolean v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->u:Z

    move-wide/from16 v5, v24

    invoke-virtual {v14, v5, v6, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 130
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->v:Z

    invoke-virtual {v14, v5, v6, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 131
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->w:Z

    invoke-virtual {v14, v5, v6, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 132
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->x:Z

    invoke-virtual {v14, v5, v6, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 133
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    iget-boolean v4, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->y:Z

    invoke-virtual {v14, v5, v6, v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 134
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 135
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    iget-boolean v2, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->z:Z

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v0

    .line 136
    :cond_28
    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    .line 137
    iget-object v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->M:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->N:F

    .line 138
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->l0:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->P:I

    .line 139
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n0:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Q:I

    .line 140
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o0:I

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->R:I

    .line 141
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->b:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->S:F

    .line 142
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->d:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->U:F

    .line 143
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->c:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->T:F

    .line 144
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->e:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->V:F

    .line 145
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->g:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->X:F

    .line 146
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->f:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->W:F

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    const/4 v0, 0x1

    return v0
.end method

.method private c(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xfa

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->a:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->h:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->j:F

    .line 4
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    .line 5
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->c:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 6
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->d:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 7
    iget-byte v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->i:B

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    .line 8
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->g:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    .line 9
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->f:F

    .line 10
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->f:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    return-object v0
.end method

.method private e([JIZIZJ)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 1
    aput-wide p6, p1, p2

    return v0

    .line 2
    :cond_0
    aget-wide v1, p1, p2

    const/4 p3, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    if-eqz p5, :cond_1

    .line 3
    aput-wide v3, p1, p2

    return p3

    :cond_1
    sub-long/2addr p6, v1

    int-to-long p4, p4

    cmp-long v1, p6, p4

    if-ltz v1, :cond_2

    .line 4
    aput-wide v3, p1, p2

    return p3

    :cond_2
    return v0

    :cond_3
    return p3
.end method

.method private f(IZZJJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->b:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 2
    aput-wide p4, v0, p1

    goto :goto_2

    :cond_0
    sub-long p2, p4, v1

    const-wide/16 p6, 0xfa

    cmp-long v1, p2, p6

    if-lez v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aget-short p3, p2, p1

    if-nez p3, :cond_2

    .line 4
    aput-short v5, p2, p1

    .line 5
    aput-wide p4, v0, p1

    return v5

    .line 6
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aget-short p2, p2, p1

    if-ne p2, v5, :cond_8

    .line 7
    aput-wide p4, v0, p1

    return v5

    :cond_3
    cmp-long p2, v1, v3

    if-lez p2, :cond_7

    if-eqz p3, :cond_4

    .line 8
    aput-wide v3, v0, p1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aput-short v6, p2, p1

    return v6

    :cond_4
    sub-long/2addr p4, v1

    cmp-long p2, p4, p6

    if-ltz p2, :cond_5

    .line 10
    aput-wide v3, v0, p1

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aput-short v6, p2, p1

    return v6

    .line 12
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aget-short p1, p2, p1

    if-ne p1, v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 13
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->c:[S

    aput-short v6, p2, p1

    :cond_8
    :goto_2
    return v6
.end method

.method private g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/g;->d(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->j(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    goto :goto_0

    :cond_0
    const-string p1, "SignalHandler"

    const-string v0, "handleLocation() location is invalid"

    .line 4
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/d;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/d/g;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->u(Lcn/mucang/android/jiakaoyi/signal/c/d$a;)V

    return-void
.end method

.method private i()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSignalDelay()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private j(Landroid/location/Location;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic k()Lkotlin/v;
    .locals 1

    const-string v0, "0x08 \u53d1\u73b0\u4e0e\u672c\u5730\u76d2\u5b50\u7248\u672c\u4e0d\u4e00\u81f4 clearExtendConfig"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic l(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/g;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p1

    return p1
.end method

.method static synthetic n(Ljava/lang/String;B)Lkotlin/v;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fe1\u53f7\u5c42\u8bbe\u7f6e\u8f66\u578b \u5931\u8d251 \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic o()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fe1\u53f7\u5c42\u8bbe\u7f6e\u8f66\u578b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/d/c;

    invoke-direct {v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/c;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->o(BLkotlin/jvm/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fe1\u53f7\u5c42\u8bbe\u7f6e\u8f66\u578b \u5931\u8d252 \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/e;->a:Lcn/mucang/android/jiakaoyi/signal/d/e;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 9

    const-string v0, "\u6536\u5230\u6a21\u5757\u7248\u672c\u4fe1\u606f"

    const-string v1, "DebugSignal"

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "DebugOta"

    const-string v5, "\u6210\u529f"

    const-string v6, "\u5931\u8d25"

    const-string v7, " : "

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 3
    :sswitch_0
    :try_start_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 4
    :sswitch_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 5
    :sswitch_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 6
    :sswitch_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/g$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/d/g;ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 7
    :sswitch_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoPilotResponse:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->q()[B

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    goto/16 :goto_8

    .line 9
    :sswitch_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    goto/16 :goto_8

    .line 10
    :sswitch_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/r;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/r;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 11
    :sswitch_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->O(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V

    goto/16 :goto_8

    .line 13
    :sswitch_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 14
    :sswitch_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 15
    :sswitch_a
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 16
    :sswitch_b
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v0

    .line 17
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result p2

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;->c(II)V

    goto/16 :goto_8

    .line 19
    :sswitch_c
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->f()[B

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/e/e;->c([B)V

    goto/16 :goto_8

    .line 20
    :sswitch_d
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/q;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/q;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 21
    :sswitch_e
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/w;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/w;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 22
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 23
    :sswitch_f
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/v;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/v;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 24
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 25
    :sswitch_10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 26
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 27
    :sswitch_11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/x;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/x;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 28
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 29
    :sswitch_12
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;

    invoke-direct {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 30
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/u;->a()Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->t(Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;)V

    .line 31
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->g()Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->g()Lcn/mucang/android/jiakaoyi/framework/base/model/ModuleVersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 34
    :sswitch_13
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 35
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 36
    :sswitch_14
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->f()[B

    move-result-object p2

    .line 37
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;-><init>([B)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 38
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/e/e;->b([B)V

    goto/16 :goto_8

    .line 39
    :sswitch_15
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 40
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 41
    :sswitch_16
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 42
    :sswitch_17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/a;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/a;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 43
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 44
    :sswitch_18
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 45
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 46
    :sswitch_19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j()V

    .line 47
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 48
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 49
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->h()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, ",state="

    if-eq p2, v3, :cond_2

    .line 50
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x29:gpsType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\u8fd4\u56de\u7684\u5305\u957f\u5ea6="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->b:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",index="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->c:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->d:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p2, :cond_1

    move-object p2, v5

    goto :goto_0

    :cond_1
    move-object p2, v6

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 51
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e8f\u53f7="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->c:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->d:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 52
    :sswitch_1a
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 53
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u56fa\u4ef6\u5347\u7ea7\u8fdb\u5ea6\u4e0a\u62a5"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->L(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    goto/16 :goto_8

    .line 56
    :sswitch_1b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j()V

    .line 57
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 58
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 59
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/c/d;->h()I

    move-result p2

    if-eq p2, v3, :cond_6

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x27:gpsType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\u53d1\u9001rtcm\u8fd4\u56de\u7684\u5305\u957f\u5ea6="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;->b:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p2, :cond_5

    move-object p2, v5

    goto :goto_2

    :cond_5
    move-object p2, v6

    :goto_2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 61
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5305\u957f\u5ea6="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;->b:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v6

    :goto_3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_1c
    const-string p2, "\u6d88\u606f0x25\uff0c\u5347\u7ea7\u540e\u91cd\u542f\u5b8c\u6bd5"

    .line 62
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->P()V

    const-string p2, "\u63a5\u53d7\u5230\u76d2\u5b50\u6d88\u606f 0x25"

    .line 64
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->p()V

    goto/16 :goto_8

    :sswitch_1d
    const-string v0, "\u6536\u5230\u5206\u5305\u5b8c\u6210\u5e94\u7b54"

    .line 66
    invoke-static {v4, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    iget-boolean p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h0;->a:Z

    goto :goto_4

    :cond_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/a;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/a;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    iget-boolean p2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/a;->a:Z

    .line 68
    :goto_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->M(Z)V

    goto/16 :goto_8

    .line 69
    :sswitch_1e
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 70
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    goto/16 :goto_8

    :sswitch_1f
    const-string v0, "RobotCommunicateManager"

    const-string v2, "\u6536\u5230ota\u5e94\u7b54"

    .line 71
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 73
    const-class p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->Q(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)V

    goto/16 :goto_8

    .line 75
    :sswitch_20
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/p;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/p;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 76
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 77
    :sswitch_21
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 78
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 79
    :sswitch_22
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->o:Lcn/mucang/android/jiakaoyi/signal/d/h;

    invoke-direct {v0, p1, p2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Lcn/mucang/android/jiakaoyi/signal/d/h;)V

    .line 80
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->map()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object p2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6d88\u606f0x19\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6d88\u606f0x19\uff0c\u66f4\u65b0\u786c\u4ef6\u4fe1\u606f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->string()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 83
    iget v3, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareVersion:I

    if-eq v3, v8, :cond_9

    .line 84
    iput v8, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareVersion:I

    .line 85
    :cond_9
    invoke-static {p2, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->r(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;Lkotlin/jvm/b/a;)V

    .line 86
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    :sswitch_23
    const-string v0, "\u6d88\u606f0x18"

    .line 87
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 89
    :sswitch_24
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 90
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 91
    :sswitch_25
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b0;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 92
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 93
    :sswitch_26
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    goto :goto_5

    :cond_a
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    invoke-direct {v0, p1, p2, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Z)V

    .line 94
    :goto_5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 95
    :sswitch_27
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 96
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;)V

    goto/16 :goto_8

    .line 97
    :sswitch_28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->o:Lcn/mucang/android/jiakaoyi/signal/d/h;

    invoke-direct {v0, p1, p2, v8, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;ZLcn/mucang/android/jiakaoyi/signal/d/h;)V

    goto :goto_7

    :cond_c
    :goto_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->o:Lcn/mucang/android/jiakaoyi/signal/d/h;

    invoke-direct {v0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Lcn/mucang/android/jiakaoyi/signal/d/h;)V

    .line 98
    :goto_7
    const-class p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V

    .line 100
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    goto/16 :goto_8

    .line 101
    :sswitch_29
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/g;->o:Lcn/mucang/android/jiakaoyi/signal/d/h;

    invoke-direct {v0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Lcn/mucang/android/jiakaoyi/signal/d/h;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveHardwareInfo;->map()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object p2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76d2\u5b50\u4e0a\u4f20\u7684\u786c\u4ef6\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareNumber:Ljava/lang/String;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->serialNumber:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/d/b;->a:Lcn/mucang/android/jiakaoyi/signal/d/b;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->r(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;Lkotlin/jvm/b/a;)V

    .line 105
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->isSafeSpeedCheck:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->w(Z)V

    .line 106
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u672c\u5730\u8bbe\u5907\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->carType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u76d2\u5b50\u7684\u8f66\u578b\u548capp \u4fdd\u5b58\u7684\u8f66\u578b\u4e0d\u4e00\u6837 ,\u53d1\u6d88\u606f\u91cd\u65b0\u9009\u62e9\u8f66\u578b app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\u5e95\u5c42:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->carType:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/d/g;->p()V

    goto/16 :goto_8

    :sswitch_2a
    const-string v0, "\u63a5\u53d7\u5230\u76d2\u5b50\u6d88\u606f 0x03"

    .line 112
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 113
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 114
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->e()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 115
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63a5\u53d7\u5230\u76d2\u5b50\u6d88\u606f 0x03 \u4fdd\u5b58\u8f66\u578b "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 117
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/car/d;->i(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    .line 118
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->d()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 119
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result p2

    iput p2, v3, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->carType:I

    .line 120
    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->r(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;Lkotlin/jvm/b/a;)V

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u8f66\u578b\u540e \u66f4\u65b0hardwareInfo"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 122
    :cond_d
    const-class p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception p2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7c7b\u578b:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dispatchHandler\u5f02\u5e38"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4fe1\u53f7\u89e3\u6790\u51fa\u9519:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_e
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2a
        0x8 -> :sswitch_29
        0x10 -> :sswitch_28
        0x11 -> :sswitch_27
        0x12 -> :sswitch_26
        0x14 -> :sswitch_25
        0x16 -> :sswitch_24
        0x18 -> :sswitch_23
        0x19 -> :sswitch_22
        0x1c -> :sswitch_21
        0x1e -> :sswitch_20
        0x21 -> :sswitch_1f
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1c
        0x27 -> :sswitch_1b
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_19
        0x43 -> :sswitch_18
        0x45 -> :sswitch_18
        0x47 -> :sswitch_18
        0x49 -> :sswitch_18
        0x4d -> :sswitch_17
        0x4f -> :sswitch_16
        0x51 -> :sswitch_15
        0x52 -> :sswitch_14
        0x53 -> :sswitch_13
        0x54 -> :sswitch_12
        0x55 -> :sswitch_11
        0x57 -> :sswitch_10
        0x59 -> :sswitch_f
        0x5b -> :sswitch_e
        0x5d -> :sswitch_d
        0x5f -> :sswitch_18
        0x60 -> :sswitch_c
        0x61 -> :sswitch_18
        0x63 -> :sswitch_18
        0x71 -> :sswitch_b
        0x75 -> :sswitch_a
        0x77 -> :sswitch_9
        0x79 -> :sswitch_8
        0x81 -> :sswitch_1f
        0x82 -> :sswitch_7
        0x84 -> :sswitch_1d
        0x85 -> :sswitch_1a
        0x92 -> :sswitch_6
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_4
        0xf1 -> :sswitch_3
        0xf3 -> :sswitch_2
        0xf4 -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/g;->l(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p1

    return p1
.end method
