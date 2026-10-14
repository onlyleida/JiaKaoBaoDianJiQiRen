.class public Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private b:Z

.field private final c:Z

.field private d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private e:I

.field private f:D

.field private g:Z

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->c:Z

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->e:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-wide v1

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    .line 4
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    return-wide v4

    .line 6
    :cond_1
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v6

    const-wide v8, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v10, v6, v8

    if-gez v10, :cond_2

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-wide v1

    .line 9
    :cond_2
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    .line 10
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-wide v1

    .line 11
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v10

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v10

    if-nez v10, :cond_5

    .line 12
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v10

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_7

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 14
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-wide v1

    :cond_7
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    cmpl-double v10, v8, v13

    if-lez v10, :cond_8

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    return-wide v1

    .line 18
    :cond_8
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    .line 19
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->g:Z

    .line 20
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    cmpl-double v10, v8, v15

    if-ltz v10, :cond_9

    cmpl-double v17, v6, v4

    if-lez v17, :cond_9

    cmpg-double v17, v13, v4

    if-gez v17, :cond_9

    const/16 v17, 0x1

    goto :goto_1

    :cond_9
    const/16 v17, 0x0

    :goto_1
    if-ltz v10, :cond_a

    cmpl-double v10, v6, v4

    if-lez v10, :cond_a

    cmpl-double v6, v13, v4

    if-lez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    cmpg-double v7, v8, v15

    if-gez v7, :cond_b

    .line 21
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    goto :goto_3

    :cond_b
    if-eqz v17, :cond_c

    .line 22
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    goto :goto_3

    :cond_c
    if-eqz v6, :cond_e

    .line 23
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v6, v7, :cond_d

    .line 24
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    goto :goto_3

    .line 25
    :cond_d
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    goto :goto_3

    .line 26
    :cond_e
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 27
    :goto_3
    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d$a;->a:[I

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v6, v12, :cond_18

    if-eq v6, v8, :cond_13

    const/4 v1, 0x3

    if-eq v6, v1, :cond_10

    const/4 v1, 0x4

    if-eq v6, v1, :cond_f

    goto/16 :goto_6

    .line 28
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    goto/16 :goto_6

    .line 29
    :cond_10
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->c:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_12

    .line 30
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 31
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-string v8, ",\u7ed3\u675f\u70b9\uff1a"

    const-string v9, "\u79fb\u52a8\u8ddd\u79bb\uff1a"

    cmpg-double v10, v1, v4

    if-gez v10, :cond_11

    .line 32
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; \u5224\u5b9a\u4e3a\u540e\u6e9c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_4

    .line 34
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; \u5224\u5b9a\u4e3a\u524d\u8fdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 35
    :cond_12
    :goto_4
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->c:Z

    if-eqz v1, :cond_1a

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 37
    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->g:Z

    goto :goto_6

    .line 38
    :cond_13
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v2, :cond_14

    .line 39
    iput-boolean v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    .line 40
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_16

    .line 41
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540e\u6e9c\u5f00\u59cb\u70b9\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_5

    .line 43
    :cond_14
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_15

    .line 44
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    .line 45
    :cond_15
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    .line 46
    iput-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 47
    :cond_16
    :goto_5
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->c:Z

    if-nez v1, :cond_17

    .line 48
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    .line 49
    :cond_17
    iput v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->e:I

    goto :goto_6

    .line 50
    :cond_18
    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->e:I

    add-int/2addr v1, v12

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->e:I

    if-lt v1, v8, :cond_19

    .line 51
    iput-boolean v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    .line 52
    :cond_19
    iput-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 53
    :cond_1a
    :goto_6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 54
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    .line 55
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->g:Z

    if-eqz v3, :cond_1b

    .line 56
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->f:D

    :cond_1b
    return-wide v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->e:I

    return-void
.end method
