.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:D

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:[D

.field private e:D

.field private f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:D

.field private h:D

.field private i:D

.field private j:Z

.field private k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private l:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->j:Z

    .line 6
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceToLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->h:D

    .line 7
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceToLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->g:D

    .line 8
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceToLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    .line 9
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v14, v10, v12

    .line 10
    iput-wide v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    .line 11
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->length()D

    move-result-wide v14

    sub-double v16, v14, v10

    mul-double v12, v12, v16

    .line 12
    iput-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    const/4 v3, 0x3

    new-array v3, v3, [D

    aput-wide v4, v3, v6

    aput-wide v12, v3, v7

    const/16 v16, 0x2

    neg-double v12, v12

    aput-wide v12, v3, v16

    .line 13
    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->d:[D

    .line 14
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 15
    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 16
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->h:D

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    sub-double v4, v4, v18

    invoke-static {v3, v12, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 17
    invoke-virtual {v3, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-direct {v13, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 18
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a(D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object v4

    .line 19
    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    const-wide v12, 0x4077200000000000L    # 370.0

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    .line 20
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    mul-double v8, v8, v8

    .line 23
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    add-double v18, v4, v12

    add-double/2addr v4, v12

    mul-double v18, v18, v4

    add-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fa7\u65b9\u5e93\u4f4d\u5bbd\u5ea6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u8f66\u8eab\u5bbd\u5ea6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u6781\u9650\u8ddd\u79bb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",R:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",p6x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u5230\u8f66\u5c3e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->h:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",\u5230\u8f66\u5934:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->g:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    sub-double/2addr v4, v8

    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->i:D

    .line 26
    :cond_0
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->j:Z

    if-eqz v4, :cond_1

    return v7

    .line 27
    :cond_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 29
    iget-wide v8, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 30
    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v10, v12

    double-to-float v2, v10

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v10, v2

    .line 31
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    const-wide v14, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v12, v14

    .line 32
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->b(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->j:Z

    return v7

    :cond_2
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    cmpg-double v4, v5, v1

    if-gtz v4, :cond_3

    .line 34
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    neg-double v14, v14

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    add-double/2addr v14, v3

    cmpl-double v3, v8, v14

    if-lez v3, :cond_3

    .line 35
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->j:Z

    return v7

    .line 36
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, ",degree:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 37
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v21, v1, v19

    cmpg-double v3, v8, v21

    if-gez v3, :cond_1c

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v23, v12, v21

    sub-double v25, v12, v21

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    const-wide/16 v15, 0x0

    cmpl-double v3, v12, v15

    if-lez v3, :cond_c

    cmpl-double v3, v8, v15

    if-lez v3, :cond_5

    add-double/2addr v1, v8

    .line 38
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    sub-double v19, v19, v12

    div-double v1, v1, v19

    .line 39
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v1, v1, v12

    add-double/2addr v1, v5

    const-wide/high16 v12, -0x3fcc000000000000L    # -20.0

    cmpg-double v3, v1, v12

    if-gez v3, :cond_4

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b91:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_4
    return v7

    .line 41
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v31, v8

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v7, v7, v25

    add-double/2addr v12, v7

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v2, v2, v23

    add-double/2addr v7, v2

    invoke-virtual {v1, v12, v13, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 42
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    sub-double/2addr v2, v12

    invoke-virtual {v1, v7, v8, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 43
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v7, 0x0

    cmpg-double v3, v1, v7

    if-gez v3, :cond_6

    move-wide/from16 v27, v19

    .line 44
    :cond_6
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    mul-double v7, v1, v29

    mul-double v7, v7, v27

    mul-double v1, v1, v27

    .line 45
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v1, v12

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    neg-double v12, v12

    sub-double/2addr v1, v12

    div-double/2addr v1, v7

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v3, v7, v19

    if-lez v3, :cond_7

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b92-1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v31

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move-wide/from16 v7, v31

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    cmpg-double v12, v1, v21

    if-gtz v12, :cond_b

    const-wide/16 v12, 0x0

    cmpl-double v15, v1, v12

    if-gez v15, :cond_8

    goto :goto_2

    .line 49
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 50
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    mul-double v12, v12, v1

    mul-double v12, v12, v29

    cmpg-double v1, v12, v5

    if-gtz v1, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_a

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b92-3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_a
    return v3

    .line 52
    :cond_b
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b92-2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move-wide v7, v8

    .line 53
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    mul-double v12, v12, v31

    add-double/2addr v12, v5

    move-wide/from16 v31, v10

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v9, v9, v33

    add-double/2addr v9, v7

    invoke-virtual {v1, v12, v13, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 54
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    add-double/2addr v9, v11

    cmpl-double v11, v5, v9

    if-lez v11, :cond_11

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->i:D

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    add-double/2addr v9, v11

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpg-double v1, v9, v11

    if-gez v1, :cond_11

    .line 55
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 56
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 57
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-object v1, v14

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    sub-double/2addr v2, v13

    sub-double/2addr v2, v7

    add-double v13, v9, v19

    div-double/2addr v2, v13

    const-wide/16 v13, 0x0

    cmpg-double v15, v2, v13

    if-gtz v15, :cond_d

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b93:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v31

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v13, 0x0

    goto :goto_3

    :cond_d
    move-wide/from16 v14, v31

    const/4 v13, 0x1

    :goto_3
    mul-double v2, v2, v11

    add-double/2addr v2, v5

    const-wide/16 v16, 0x0

    cmpg-double v21, v2, v16

    if-gez v21, :cond_e

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b94:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    move v3, v13

    :goto_4
    if-eqz v3, :cond_f

    const/4 v2, 0x1

    return v2

    .line 60
    :cond_f
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v31, v14

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    sub-double/2addr v13, v15

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v16, v3

    iget-wide v2, v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v13, v2

    add-double v11, v11, v19

    div-double/2addr v13, v11

    .line 61
    iget-wide v2, v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v9, v9, v13

    add-double/2addr v2, v9

    add-double/2addr v2, v13

    move-object/from16 v9, v16

    .line 62
    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    sub-double/2addr v9, v11

    cmpg-double v11, v2, v9

    if-gez v11, :cond_10

    const/4 v2, 0x1

    return v2

    .line 63
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b95:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v31

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    move-object v1, v14

    move-wide/from16 v9, v31

    .line 64
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->e:D

    neg-double v14, v14

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    add-double/2addr v14, v2

    cmpl-double v2, v12, v14

    if-lez v2, :cond_14

    .line 65
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 66
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 67
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v14, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v14, v14

    div-double/2addr v14, v2

    .line 68
    iget-wide v2, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v11, v11, v14

    add-double/2addr v2, v11

    add-double/2addr v2, v14

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->l:D

    cmpg-double v13, v2, v11

    if-gtz v13, :cond_12

    const/16 v31, 0x1

    goto :goto_5

    :cond_12
    const/16 v31, 0x0

    :goto_5
    if-nez v31, :cond_13

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b96:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_13
    return v31

    .line 71
    :cond_14
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v13, v13, v25

    add-double/2addr v11, v13

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move-wide/from16 v25, v7

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v7, v7, v23

    add-double/2addr v13, v7

    invoke-virtual {v2, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    sub-double/2addr v11, v13

    invoke-virtual {v2, v7, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 73
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const-wide/16 v7, 0x0

    cmpg-double v11, v2, v7

    if-gez v11, :cond_15

    move-wide/from16 v27, v19

    .line 74
    :cond_15
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->d:[D

    array-length v3, v2

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_1b

    aget-wide v11, v2, v7

    .line 75
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    mul-double v23, v13, v29

    mul-double v23, v23, v27

    mul-double v13, v13, v27

    .line 76
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v15, v2

    move/from16 v32, v3

    iget-wide v2, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v13, v2

    sub-double/2addr v13, v11

    div-double v13, v13, v23

    .line 77
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v8, v2, v19

    if-lez v8, :cond_16

    goto :goto_7

    .line 78
    :cond_16
    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    cmpg-double v8, v2, v21

    if-gtz v8, :cond_1a

    const-wide/16 v11, 0x0

    cmpl-double v8, v2, v11

    if-gez v8, :cond_17

    goto :goto_7

    .line 79
    :cond_17
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 80
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->b:D

    mul-double v16, v13, v2

    const-wide/high16 v23, 0x403e000000000000L    # 30.0

    add-double v23, v5, v23

    cmpl-double v8, v16, v23

    if-lez v8, :cond_18

    goto :goto_7

    :cond_18
    const-wide/high16 v16, -0x3fdc000000000000L    # -10.0

    cmpg-double v8, v9, v16

    if-gez v8, :cond_19

    .line 81
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/d;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v13, v13, v2

    sub-double/2addr v11, v13

    sub-double/2addr v11, v5

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v8, v11, v2

    if-lez v8, :cond_19

    goto :goto_8

    :cond_19
    const/4 v8, 0x1

    return v8

    :cond_1a
    :goto_7
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    :goto_8
    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v2, v15

    move/from16 v3, v32

    goto :goto_6

    .line 82
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5012\u4e0d\u8fdb\u53bb\u4fa7\u65b97:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v25

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method
