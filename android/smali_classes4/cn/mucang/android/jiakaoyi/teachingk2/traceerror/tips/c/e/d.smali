.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 15
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

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->a:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$a;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

    .line 5
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    .line 6
    :cond_2
    instance-of v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$a;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;

    .line 9
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V

    return-void

    .line 10
    :cond_4
    iget v1, v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v1

    .line 11
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const-wide/high16 v8, 0x4079000000000000L    # 400.0

    goto :goto_1

    :cond_6
    :goto_0
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 12
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    const-string v4, ",\u624b\u5239\u70b9\u4f4d\u7f6e:"

    const/4 v6, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_9

    .line 13
    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v11, v1, v8

    if-gtz v11, :cond_7

    .line 14
    iput-byte v10, v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 15
    invoke-interface {p0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    goto :goto_2

    .line 16
    :cond_7
    iget-wide v1, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v11, v1, v8

    if-lez v11, :cond_8

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_open_light_late:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 18
    iput-byte v6, v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 19
    invoke-interface {p0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    goto :goto_2

    .line 20
    :cond_8
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_open_light_early:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 21
    iput-byte v6, v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 22
    invoke-interface {p0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 23
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u706f\u5149:\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    iput-boolean v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->a:Z

    goto :goto_3

    .line 25
    :cond_9
    iget-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v13

    cmpl-double v2, v11, v8

    if-lez v2, :cond_a

    .line 26
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_no_open_light:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightName:Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    .line 27
    iput-byte v6, v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 28
    invoke-interface {p0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 29
    iput-boolean v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;->a:Z

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u6253\u706f\u5149:\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_a
    :goto_3
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
