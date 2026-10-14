.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:F


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private b:F

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    sput v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->b:F

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->c:Ljava/util/LinkedList;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    return-void
.end method

.method private b(Ljava/util/LinkedList;Ljava/util/LinkedList;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0xc8

    int-to-long v1, p1

    .line 2
    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    double-to-float p1, v3

    float-to-double v3, p1

    const-wide v5, 0x40ac200000000000L    # 3600.0

    mul-double v3, v3, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double v3, v3, v7

    long-to-double v1, v1

    div-double/2addr v3, v1

    double-to-float p1, v3

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    mul-double v1, v1, v5

    mul-double v1, v1, v7

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    double-to-float p2, v9

    float-to-double v9, p2

    mul-double v9, v9, v5

    mul-double v9, v9, v7

    div-double/2addr v9, v3

    double-to-float p2, v9

    const v0, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v0

    add-float/2addr v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v1, v1, p2

    const p2, 0x3f19999a    # 0.6f

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    return p1
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)F
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->c:Ljava/util/LinkedList;

    .line 8
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    .line 9
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->c:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 15
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lt p1, v0, :cond_2

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->c:Ljava/util/LinkedList;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->d:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->b(Ljava/util/LinkedList;Ljava/util/LinkedList;)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->b:F

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->e:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->b:F

    .line 19
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->b:F

    return p1
.end method
