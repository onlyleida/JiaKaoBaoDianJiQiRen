.class public Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a:J

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b:J

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a:J

    return-void
.end method
