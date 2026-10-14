.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->a:Landroidx/lifecycle/a0;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->c:Ljava/util/Map;

    const-string v1, "fence_predict_time"

    const v2, 0x3ee66666    # 0.45f

    .line 6
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->e:Z

    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->b()V

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    return-object p1
.end method

.method private c(DD)D
    .locals 6

    .line 1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->a(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p3, v0

    if-lez v2, :cond_0

    return-wide p3

    :cond_0
    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double p3, p3, p1

    mul-double v0, p3, p1

    const-wide v2, 0x4017851eb851eb85L    # 5.88

    div-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double v2, v2, p3

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    mul-double p3, p3, v4

    add-double/2addr v0, v2

    add-double/2addr v0, p3

    const-wide p3, 0x4047800000000000L    # 47.0

    .line 4
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    const-wide v0, 0x407f400000000000L    # 500.0

    .line 5
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    const-wide/high16 p3, 0x4074000000000000L    # 320.0

    mul-double p1, p1, p3

    const-wide/high16 p3, 0x402e000000000000L    # 15.0

    add-double/2addr p3, p1

    :cond_1
    return-wide p3
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
    .locals 13

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->f:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-eqz v3, :cond_11

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v2, v4

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v6, v6

    div-double/2addr v6, v4

    .line 8
    invoke-direct {p0, v6, v7, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->c(DD)D

    move-result-wide v2

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-eqz v4, :cond_3

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-double v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v11, 0x4076800000000000L    # 360.0

    div-double/2addr v7, v11

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    add-double/2addr v7, v9

    mul-double v2, v2, v7

    .line 12
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x5a

    if-le v7, v8, :cond_5

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 15
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Trigger:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    const-wide v7, 0x3fd51eb851eb851fL    # 0.33

    mul-double v7, v7, v2

    invoke-static {p1, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    const-wide v7, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v7, v7, v2

    invoke-static {p1, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_4
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Trigger:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    mul-double v5, v5, v2

    invoke-static {p1, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    :goto_0
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Trigger:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    invoke-static {p1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Faraway:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v2

    invoke-static {p1, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;D)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;Ljava/util/List;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    .line 23
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 25
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    const/4 v9, 0x3

    if-eqz v8, :cond_8

    .line 26
    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 27
    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->c:Ljava/util/Map;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;

    if-eqz v10, :cond_8

    .line 28
    iget v11, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-ne v11, v9, :cond_7

    .line 29
    invoke-interface {v10, v8, p1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v8

    goto :goto_2

    .line 30
    :cond_7
    invoke-interface {v10, v8, p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v8

    :goto_2
    if-nez v8, :cond_8

    .line 31
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    .line 32
    :cond_8
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    if-eqz v8, :cond_9

    .line 33
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0

    .line 34
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 35
    iget-object v10, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-static {v10}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_b

    goto :goto_3

    .line 36
    :cond_b
    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->c:Ljava/util/Map;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;

    if-nez v10, :cond_c

    goto :goto_3

    .line 37
    :cond_c
    iget v11, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-ne v11, v9, :cond_d

    .line 38
    invoke-interface {v10, v8, p1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v10

    goto :goto_4

    .line 39
    :cond_d
    invoke-interface {v10, v8, p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v10

    :goto_4
    if-nez v10, :cond_e

    goto :goto_3

    .line 40
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->zhSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u89e6\u53d1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->a:I

    if-ne v1, v9, :cond_f

    const-string v1, "\u9879\u76ee"

    goto :goto_5

    :cond_f
    if-ne v1, v6, :cond_10

    const-string v1, "\u573a\u5730"

    goto :goto_5

    :cond_10
    const-string v1, "\u5b89\u5168"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u56f4\u680f\u5239\u8f66"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u56f4\u680fid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u9884\u5224\u8ddd\u79bb:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",\u9884\u5224\u65f6\u95f4="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",obd\u901f\u5ea6="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",gps\u901f\u5ea6="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",wheel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\u6863\u4f4d="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$d;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v0, v8, v10, v7, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 48
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    return-object v0

    :cond_11
    :goto_6
    return-object v1
.end method

.method public static e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->e:Z

    return v0
.end method

.method public static f()F
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->a:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static i(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    move-result-object v0

    iput-boolean p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->e:Z

    return-void
.end method

.method public static j(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static k(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    move-result-object v0

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->g()V

    return-void
.end method
