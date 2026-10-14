.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->g(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 2
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$a;)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;

    :cond_0
    move-object/from16 v0, p7

    .line 4
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz v1, :cond_1

    .line 5
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b$b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    .line 6
    :cond_1
    iget-byte v0, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    const-string v5, ",\u624b\u5239\u70b9\u4f4d\u7f6e:"

    const-string v6, "\u624b\u5239:\u5f53\u524d\u4f4d\u7f6e:"

    if-nez v0, :cond_6

    .line 7
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_5

    .line 8
    iget-wide v9, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-object/from16 v0, p5

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v3, v9, v3

    iget-wide v7, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v16, v9, v7

    mul-double v3, v3, v16

    const-wide/16 v16, 0x0

    cmpg-double v0, v3, v16

    if-lez v0, :cond_3

    sub-double/2addr v9, v7

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 10
    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    cmpg-double v0, v3, v7

    if-gez v0, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x2

    :goto_2
    iput-byte v9, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    move-object/from16 v0, p0

    .line 11
    invoke-interface {v0, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u624b\u5239:\u524d\u540e\u8ddd\u79bb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",\u5de6\u53f3\u8ddd\u79bb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v9, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v0, v8

    .line 13
    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v7

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    cmpl-double v9, v3, v7

    if-lez v9, :cond_7

    const/4 v3, 0x2

    .line 14
    iput-byte v3, v15, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 15
    invoke-interface {v0, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move-object v0, v8

    .line 17
    :cond_7
    :goto_3
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->a:Z

    if-eqz v3, :cond_8

    return-void

    .line 18
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v3, :cond_b

    .line 19
    iget-wide v3, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v7, v3, v1

    if-gez v7, :cond_9

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    .line 20
    :cond_9
    iget-wide v1, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v7, v1, v3

    if-lez v7, :cond_a

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_handbrake_late:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :cond_a
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_handbrake_early:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :goto_5
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->a:Z

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_6

    .line 25
    :cond_b
    iget-wide v1, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpl-double v7, v1, v3

    if-lez v7, :cond_c

    .line 26
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_no_handbrake:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;->a:Z

    :cond_c
    :goto_6
    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method
