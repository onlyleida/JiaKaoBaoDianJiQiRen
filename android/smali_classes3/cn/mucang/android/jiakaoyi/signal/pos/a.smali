.class public Lcn/mucang/android/jiakaoyi/signal/pos/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v5, -0x10000000000001L

    const-wide v7, -0x10000000000001L

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    .line 5
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    .line 6
    iput-wide p7, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-double/2addr p1, p5

    const-wide/high16 p5, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, p5

    add-double/2addr p3, p7

    mul-double p3, p3, p5

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V
    .locals 9

    .line 1
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    const-wide v0, -0x10000000000001L

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    return-void
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    return-wide v0
.end method

.method public e()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    return-wide v0
.end method

.method public f()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    sub-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 2
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p1, v0, v5

    if-lez p1, :cond_1

    return v4

    .line 3
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    return v4

    .line 4
    :cond_2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    cmpg-double p1, v0, v5

    if-gez p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 2
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    cmpl-double v5, v0, v2

    if-lez v5, :cond_1

    return v4

    .line 3
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    cmpg-double v5, v0, v2

    if-gez v5, :cond_2

    return v4

    .line 4
    :cond_2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 6

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    .line 3
    :cond_0
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    .line 5
    :cond_1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    .line 7
    :cond_2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_3

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 10
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object p0
.end method

.method public j(DD)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    .line 3
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    .line 5
    :cond_1
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    cmpl-double v0, p3, p1

    if-lez v0, :cond_2

    .line 6
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    .line 7
    :cond_2
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    cmpg-double v0, p3, p1

    if-gez v0, :cond_3

    .line 8
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    add-double/2addr p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p2, p2, v0

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 10
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    add-double/2addr p2, v2

    mul-double p2, p2, v0

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-void
.end method

.method public k(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    .line 4
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public l()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    sub-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m(FFFF)Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 10

    .line 1
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    float-to-double v2, p1

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    float-to-double p1, p2

    sub-double/2addr v3, p1

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    float-to-double v5, p3

    add-double/2addr v5, p1

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    float-to-double p3, p4

    add-double v7, p1, p3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bound{minX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", minY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
