.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;


# instance fields
.field private a:J

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_4

    .line 4
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    .line 7
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eq p3, v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_3

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const/16 p1, 0x7d0

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    goto :goto_0

    .line 12
    :cond_4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;->a:J

    :cond_5
    :goto_0
    return-object v1
.end method
