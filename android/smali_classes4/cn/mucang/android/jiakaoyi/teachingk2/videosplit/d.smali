.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->d:Ljava/lang/Object;

    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    :goto_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
