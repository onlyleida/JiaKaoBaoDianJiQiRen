.class public Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/b;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const/4 v0, 0x1

    if-nez p4, :cond_5

    .line 2
    instance-of p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 3
    check-cast p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 5
    :cond_0
    instance-of p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz p4, :cond_1

    .line 6
    check-cast p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_1
    instance-of p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz p4, :cond_2

    .line 9
    check-cast p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    iget-object p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object p4, p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    :cond_2
    move-object p4, v1

    :goto_0
    if-eqz v1, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    invoke-static {p5, v1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p6

    .line 13
    invoke-virtual {p6, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    .line 14
    new-instance p6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p6, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {p6, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p6

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p6, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-direct {p4, p5, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 17
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p5, p5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 19
    :cond_5
    :goto_2
    iget-boolean p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    if-eqz p4, :cond_6

    return-void

    .line 20
    :cond_6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p4

    iget-object p5, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p5, p5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p5, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr p5, v1

    const-wide/high16 v1, -0x3fc2000000000000L    # -30.0

    cmpl-double v3, p5, v1

    if-lez v3, :cond_7

    .line 23
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->d:Z

    return-void

    .line 24
    :cond_7
    iget-wide p4, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    .line 25
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->a:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    sub-double/2addr v1, v3

    double-to-float p2, v1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    float-to-double v1, p2

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 27
    iget p2, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-double p2, p2

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p2, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double p2, p2, v5

    .line 28
    iget-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, p6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double p2, p2, v3

    add-double/2addr v5, p2

    .line 29
    iget-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->a:D

    const-wide/16 v3, 0x0

    cmpl-double p6, p4, p2

    if-lez p6, :cond_9

    .line 30
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/c/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p6, p2, v3

    if-lez p6, :cond_8

    const-wide p2, -0x3f70c00000000000L    # -1000.0

    .line 31
    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    goto :goto_3

    :cond_8
    const-wide p2, 0x408f400000000000L    # 1000.0

    .line 32
    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    goto :goto_3

    .line 33
    :cond_9
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpg-double p6, p2, v5

    if-gez p6, :cond_a

    .line 34
    iput-wide v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->c:D

    .line 35
    :cond_a
    :goto_3
    iput-wide p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->b:D

    .line 36
    iget-wide p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->a:D

    cmpg-double p6, p4, p2

    if-gtz p6, :cond_b

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide/high16 p4, 0x4014000000000000L    # 5.0

    cmpg-double p6, p2, p4

    if-gez p6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/h/a;->e:Z

    return-void
.end method
