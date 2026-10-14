.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

.field private c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
    .locals 10
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

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    if-nez p1, :cond_4

    const/16 p1, 0x3e8

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x3e8

    cmp-long p1, v6, v8

    if-lez p1, :cond_3

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    invoke-direct {p1, v4, v5, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;-><init>(JJ)V

    .line 13
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 14
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-object p1

    .line 15
    :cond_3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 16
    :cond_4
    :goto_0
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-eq p1, p2, :cond_6

    if-eqz p1, :cond_6

    .line 17
    :cond_5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 18
    :cond_6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-object v1
.end method
