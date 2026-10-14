.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c$b;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->a:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b:Ljava/util/List;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/f;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/f;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/d;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/a;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/b;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/e;-><init>()V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;-><init>()V

    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    .line 8
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v6

    cmp-long v10, v4, v8

    if-gez v10, :cond_2

    .line 9
    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    cmp-long v5, v3, v6

    if-lez v5, :cond_1

    .line 10
    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 2
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
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    .line 3
    invoke-virtual {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    goto :goto_0

    :cond_1
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
