.class public Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public final b:D

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 12
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/k;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x4013333333333333L    # 4.8

    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 5
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x4013333333333333L    # 4.8

    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;)V
    .locals 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 19
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x4013333333333333L    # 4.8

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->b:D

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
