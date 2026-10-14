.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

.field private d:I

.field private e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 3
    instance-of v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v4, :cond_0

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 5
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 6
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 7
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 8
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->d:I

    .line 10
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 11
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->f:Z

    goto :goto_1

    .line 12
    :cond_0
    instance-of v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v4, :cond_2

    .line 13
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 14
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    iget-boolean v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->d:I

    .line 16
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 17
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->f:Z

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return v3

    .line 18
    :cond_3
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    invoke-static {v4, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-direct {p2, v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 19
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    .line 20
    :cond_4
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v2

    .line 21
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz p2, :cond_6

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v4, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->u(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    .line 22
    :cond_6
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->b:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->a:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->d:I

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/c;->f:Z

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/f;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;IZ)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_7
    return v3
.end method
