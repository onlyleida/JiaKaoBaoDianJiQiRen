.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field private b:D

.field private c:J

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private e:B


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xa

    .line 2
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->e:B

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a:D

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d:Ljava/util/LinkedList;

    const-wide/high16 p1, 0x4049000000000000L    # 50.0

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->b:D

    return-void
.end method

.method static synthetic b(B)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    .line 2
    invoke-static {v0, v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    return-void
.end method

.method private static c(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public a(B)V
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->e:B

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->e:B

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/a;-><init>(B)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->c:J

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a:D

    sub-double/2addr v0, v2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v2, 0x4

    if-le p1, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 8
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v2, p1

    mul-double v0, v0, v2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->d:Ljava/util/LinkedList;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->c(Ljava/util/List;)D

    move-result-wide v2

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v4, p1

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 9
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->b:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->b:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-byte p1, p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->b:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 11
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-byte p1, p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->b:D

    double-to-int p1, v0

    int-to-byte p1, p1

    .line 12
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/e;->a(B)V

    return-void
.end method
