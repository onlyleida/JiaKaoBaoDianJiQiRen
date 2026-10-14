.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
    .locals 7
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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->c:I

    if-nez v0, :cond_1

    .line 2
    instance-of p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz p2, :cond_0

    const/16 p2, 0x1770

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->c:I

    goto :goto_0

    :cond_0
    const/16 p2, 0xbb8

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->c:I

    :cond_1
    :goto_0
    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eq p3, v2, :cond_3

    .line 6
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    .line 8
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    sub-long/2addr v2, v4

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->c:I

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->b:J

    if-eqz p3, :cond_4

    .line 13
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    :cond_4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    :cond_5
    return-object p2
.end method
