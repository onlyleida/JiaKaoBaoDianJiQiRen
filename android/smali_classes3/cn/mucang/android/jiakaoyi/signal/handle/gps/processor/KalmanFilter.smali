.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;
    }
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private final q:I

.field private r:Landroid/location/Location;

.field private s:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->o:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->p:D

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->s:I

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->q:I

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->c()V

    return-void
.end method

.method private a(Landroid/location/Location;)Landroid/location/Location;
    .locals 3

    .line 1
    new-instance v0, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/location/Location;->setAccuracy(F)V

    return-object v0
.end method

.method private c()V
    .locals 2

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->m:D

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->n:D

    const-wide v0, 0x3f42ac2ab4f6bc38L    # 5.698402909980532E-4

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->g:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->h:D

    return-void
.end method

.method private d(DDDD)Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;
    .locals 2

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->a:D

    .line 2
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->b:D

    .line 3
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->m:D

    mul-double p1, p1, p1

    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->g:D

    mul-double p3, p3, p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->p:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->i:D

    mul-double p3, p1, p1

    mul-double p1, p1, p1

    .line 4
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->m:D

    mul-double v0, v0, v0

    add-double/2addr p1, v0

    div-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->o:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->k:D

    .line 5
    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->b:D

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->a:D

    sub-double/2addr p3, v0

    mul-double p3, p3, p1

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->e:D

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double p1, p3, p1

    .line 6
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->i:D

    mul-double p1, p1, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->g:D

    .line 7
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->c:D

    .line 8
    iput-wide p7, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->d:D

    .line 9
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->n:D

    mul-double p1, p1, p1

    iget-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->h:D

    mul-double p5, p5, p5

    add-double/2addr p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->p:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->j:D

    mul-double p5, p1, p1

    mul-double p1, p1, p1

    .line 10
    iget-wide p7, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->n:D

    mul-double p7, p7, p7

    add-double/2addr p1, p7

    div-double/2addr p5, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->o:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->l:D

    .line 11
    iget-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->d:D

    iget-wide p7, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->c:D

    sub-double/2addr p5, p7

    mul-double p5, p5, p1

    add-double/2addr p5, p7

    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->f:D

    sub-double/2addr p3, p1

    .line 12
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->j:D

    mul-double p3, p3, p1

    mul-double p3, p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->h:D

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->f:D

    iget-wide p4, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->e:D

    invoke-direct {p1, p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;-><init>(DD)V

    return-object p1
.end method

.method private e(Landroid/location/Location;Landroid/location/Location;I)Landroid/location/Location;
    .locals 11

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->m:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->n:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->c()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge p3, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    if-le p3, v1, :cond_4

    const/4 p3, 0x5

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_5

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->d(DDDD)Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;

    move-result-object v0

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p2

    .line 5
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;->b:D

    invoke-virtual {p2, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 6
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter$LatLng;->a:D

    invoke-virtual {p2, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, p2

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public b(Landroid/location/Location;)Landroid/location/Location;
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->s:I

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->r:Landroid/location/Location;

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->q:I

    invoke-direct {p0, v1, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->e(Landroid/location/Location;Landroid/location/Location;I)Landroid/location/Location;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->r:Landroid/location/Location;

    return-object p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/processor/KalmanFilter;->r:Landroid/location/Location;

    return-object p1
.end method
