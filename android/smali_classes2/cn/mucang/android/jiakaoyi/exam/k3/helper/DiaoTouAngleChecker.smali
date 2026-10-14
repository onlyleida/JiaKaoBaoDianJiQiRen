.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final angles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final distance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final getter:Lcn/mucang/android/jiakaoyi/framework/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/a<",
            "Ljava/lang/Float;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private hasClear:Z

.field private final threshold:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->threshold:F

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;->a:Lcn/mucang/android/jiakaoyi/exam/k3/helper/b;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/helper/a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->getter:Lcn/mucang/android/jiakaoyi/framework/h/a;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->hasClear:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private diffAngle()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private diffDistance()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public insert(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->getter:Lcn/mucang/android/jiakaoyi/framework/h/a;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->threshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->hasClear:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->diffDistance()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->diffAngle()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->hasClear:Z

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->angles:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->distance:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->diffAngle()F

    move-result v0

    const/high16 v1, 0x43250000    # 165.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHalf()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DiaoTouAngleChecker;->diffAngle()F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
