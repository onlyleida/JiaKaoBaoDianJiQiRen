.class public Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    }
.end annotation


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    const-string v1, "runtime_front_wheel_r"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    const-string v1, "runtime_back_wheel_r"

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    const-string v1, "rt_runtime_front_wheel_r"

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    const-string v1, "rt_runtime_back_wheel_r"

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->h(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 6
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    return-void
.end method

.method public static a(D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->getMaxR(Z)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    invoke-static {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f(Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object p0

    return-object p0
.end method

.method public static b(D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->getMaxR(Z)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    invoke-static {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f(Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/util/List;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 2
    iget-short v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 3
    iget-short v0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v0, v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static d(Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;Z)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    return-object v0

    .line 3
    :cond_1
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->c(Ljava/util/List;)D

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x40a7700000000000L    # 3000.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    const-wide v3, 0x3fb999999999999aL    # 0.1

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_1
    mul-double v5, v1, v3

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x407f400000000000L    # 500.0

    cmpg-double v11, v7, v9

    if-gez v11, :cond_4

    if-eqz p1, :cond_3

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_2

    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    :goto_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    return-object v0

    .line 7
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 8
    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/4 v7, 0x5

    if-ge v13, v14, :cond_a

    .line 9
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v9, v8

    mul-double v9, v9, v3

    sub-double v18, v9, v1

    .line 10
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4034000000000000L    # 20.0

    cmpl-double v8, v18, v20

    if-lez v8, :cond_5

    move v12, v13

    goto :goto_6

    :cond_5
    add-int/lit8 v8, v13, 0x1

    .line 11
    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_7

    .line 12
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-short v14, v14, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v19, v13

    int-to-double v12, v14

    mul-double v12, v12, v3

    sub-double/2addr v12, v9

    .line 13
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    cmpl-double v14, v12, v20

    if-lez v14, :cond_6

    add-int/lit8 v8, v8, -0x1

    sub-int v12, v8, v19

    if-le v12, v7, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v19

    goto :goto_4

    :cond_7
    move/from16 v19, v13

    const/4 v8, 0x0

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_9

    .line 14
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v12, v19

    invoke-interface {v0, v12, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v16, v9

    const-wide v0, 0x407f400000000000L    # 500.0

    goto :goto_7

    :cond_9
    move/from16 v12, v19

    :goto_6
    add-int/lit8 v13, v12, 0x1

    const-wide v9, 0x407f400000000000L    # 500.0

    goto/16 :goto_3

    :cond_a
    move-wide v0, v9

    const-wide/16 v16, 0x0

    :goto_7
    cmpl-double v2, v16, v0

    if-lez v2, :cond_f

    .line 15
    invoke-static {v11}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_f

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;-><init>()V

    .line 17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v3, 0x0

    invoke-static {v11, v3, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    double-to-int v1, v5

    .line 18
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->wheel:I

    if-eqz p1, :cond_c

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    if-eqz v2, :cond_b

    .line 20
    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_e

    .line 21
    :cond_b
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    goto :goto_8

    .line 22
    :cond_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    if-eqz v2, :cond_d

    .line 23
    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_e

    .line 24
    :cond_d
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    :cond_e
    :goto_8
    return-object v0

    :cond_f
    if-eqz p1, :cond_10

    .line 25
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_9

    :cond_10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    :goto_9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    return-object v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 15

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 6
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    const/16 v4, 0x32

    if-nez v3, :cond_2

    if-le v2, v4, :cond_2

    const/16 v3, 0x258

    if-ge v2, v3, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    :cond_1
    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    .line 8
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 9
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 10
    :cond_2
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    if-le v3, v4, :cond_5

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v0, :cond_5

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_5

    .line 11
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_4

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_c

    .line 18
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_3

    .line 19
    :cond_5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    if-le v0, v4, :cond_b

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_b

    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->b(Ljava/util/List;IILcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_b

    .line 21
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WheelAndRLearning;->j:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    if-nez v4, :cond_6

    .line 23
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;-><init>()V

    :cond_6
    move-object v14, v4

    .line 24
    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    int-to-double v5, v4

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    iget-wide v11, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v13

    move-object v4, v14

    move-wide v7, v2

    invoke-virtual/range {v4 .. v13}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->addWR(DDDDZ)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 25
    invoke-virtual {v0, v14}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 26
    :cond_7
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    goto :goto_1

    :cond_8
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    if-nez v0, :cond_9

    const-wide v4, 0x407fe00000000000L    # 510.0

    goto :goto_2

    .line 28
    :cond_9
    iget v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->wheel:I

    int-to-double v4, v4

    .line 29
    :goto_2
    sget v6, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    int-to-double v6, v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_b

    if-nez v0, :cond_a

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;-><init>()V

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 31
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    .line 32
    :cond_a
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_b

    .line 33
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    .line 34
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->wheel:I

    .line 35
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 36
    :cond_b
    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->f:I

    .line 37
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_c
    :goto_3
    return-void
.end method

.method private static f(Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;D)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;-><init>()V

    const/16 v0, 0x21c

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->wheel:I

    const-wide v0, 0x4041400000000000L    # 34.5

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->R:D

    :cond_0
    return-object p0
.end method
