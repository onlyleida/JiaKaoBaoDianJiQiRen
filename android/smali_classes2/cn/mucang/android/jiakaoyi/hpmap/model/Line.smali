.class public Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public lineWidth:D

.field maxX:D

.field maxY:D

.field minX:D

.field minY:D

.field public start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minX:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minY:D

    const-wide v0, -0x10000000000001L

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxX:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxY:D

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V
    .locals 4

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minX:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minY:D

    const-wide v0, -0x10000000000001L

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxX:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxY:D

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->calBounds()V

    return-void
.end method

.method private calMaxMin(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minX:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minX:D

    .line 3
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minY:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p1, v0, v4

    if-lez p1, :cond_1

    .line 4
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->minY:D

    .line 5
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxX:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    .line 6
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxX:D

    .line 7
    :cond_2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxY:D

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    .line 8
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->maxY:D

    :cond_3
    return-void
.end method


# virtual methods
.method public calBounds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->calMaxMin(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->calMaxMin(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public isCross(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method

.method public length()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    return-wide v0
.end method

.method public middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vector()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method
