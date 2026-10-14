.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:J

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->b:J

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v2, :cond_1

    .line 3
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 4
    :cond_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v5, v7

    if-gez v2, :cond_2

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return v3

    .line 7
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_3

    return v3

    .line 8
    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const-wide v5, 0x4202a05f20000000L    # 1.0E10

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    .line 9
    :cond_4
    :goto_0
    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v8, v11, :cond_5

    .line 10
    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v13, v11, v12, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 13
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpg-double v15, v13, v5

    if-gez v15, :cond_4

    .line 14
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v9, v11

    move-object v10, v12

    move-wide v5, v13

    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    return v3

    .line 15
    :cond_6
    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 16
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    sub-double/2addr v13, v5

    double-to-float v2, v13

    .line 17
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v5, v2

    .line 18
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    .line 19
    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 20
    :goto_1
    iget v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    int-to-double v8, v8

    cmpl-double v15, v13, v8

    if-lez v15, :cond_11

    .line 21
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/high16 v15, -0x3fd2000000000000L    # -15.0

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    if-ne v8, v9, :cond_b

    if-eqz v2, :cond_9

    .line 22
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v8, v2

    cmpg-double v2, v13, v8

    if-gez v2, :cond_10

    cmpl-double v2, v5, v17

    if-lez v2, :cond_8

    goto :goto_2

    :cond_8
    cmpg-double v2, v5, v10

    if-gez v2, :cond_11

    goto :goto_3

    .line 23
    :cond_9
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v8, v2

    cmpg-double v2, v13, v8

    if-gez v2, :cond_d

    cmpg-double v2, v5, v15

    if-gez v2, :cond_a

    goto :goto_3

    :cond_a
    cmpl-double v2, v5, v10

    if-lez v2, :cond_11

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_e

    .line 24
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v8, v2

    cmpg-double v2, v13, v8

    if-gez v2, :cond_d

    cmpg-double v2, v5, v15

    if-gez v2, :cond_c

    goto :goto_3

    :cond_c
    cmpl-double v2, v5, v10

    if-lez v2, :cond_11

    :cond_d
    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    .line 25
    :cond_e
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v8, v2

    cmpg-double v2, v13, v8

    if-gez v2, :cond_10

    cmpl-double v2, v5, v17

    if-lez v2, :cond_f

    goto :goto_2

    :cond_f
    cmpg-double v2, v5, v10

    if-gez v2, :cond_11

    :cond_10
    :goto_3
    const/4 v2, 0x2

    goto :goto_4

    :cond_11
    const/4 v2, 0x0

    :goto_4
    if-ne v2, v4, :cond_12

    .line 26
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_left_trun_right:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_12
    if-ne v2, v12, :cond_13

    .line 27
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_close_right_trun_left:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_13
    move-object v2, v7

    :goto_5
    if-eqz v2, :cond_16

    .line 28
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->b:J

    sub-long/2addr v4, v8

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    const/16 v6, 0xbb8

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v4, v8

    if-gez v1, :cond_14

    return v3

    .line 29
    :cond_14
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v4, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    invoke-virtual {v1, v4, v7}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;

    if-eqz v1, :cond_15

    .line 30
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v1, v2, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/AbsTtsDataProvider;->startSpeechLow(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_6

    .line 31
    :cond_15
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 32
    :goto_6
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->b:J

    .line 33
    :cond_16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_17
    :goto_7
    return v3
.end method
