.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Lcn/mucang/android/jiakaoyi/signal/pos/c;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->b:Ljava/util/Map;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    const-wide v1, 0x4052c00000000000L    # 75.0

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v6, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v6, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    .line 7
    invoke-static {v4, v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 8
    invoke-static {v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 9
    invoke-static {v0, v5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 10
    invoke-static {v5, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v6, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->b:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez p1, :cond_2

    return v3

    .line 4
    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->o:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 6
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    if-eqz v2, :cond_5

    .line 7
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v2

    .line 8
    invoke-static {v2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    .line 10
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    .line 11
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v4

    .line 12
    invoke-static {v4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 13
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    return v1

    :cond_7
    return v3
.end method
