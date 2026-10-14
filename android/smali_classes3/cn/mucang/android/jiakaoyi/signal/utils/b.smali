.class public Lcn/mucang/android/jiakaoyi/signal/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final b:D

.field private final c:D

.field private final d:D

.field public final e:Z

.field public final f:D


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->d:D

    .line 13
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    .line 14
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    .line 15
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b:D

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c:D

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->d:D

    .line 5
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    .line 6
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double p3, p3, p1

    const-wide p5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p3, p5

    .line 7
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->f:D

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b:D

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c:D

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 14

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v3

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->d:D

    mul-double v0, v0, v3

    .line 2
    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v7

    mul-double v5, v5, v3

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c:D

    mul-double v7, v0, v3

    iget-wide v9, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b:D

    mul-double v11, v5, v9

    add-double/2addr v11, v7

    neg-double v0, v0

    mul-double v0, v0, v9

    mul-double v5, v5, v3

    add-double/2addr v0, v5

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    move-object v7, v2

    move-wide v8, v11

    move-wide v10, v0

    move-wide v12, v3

    invoke-direct/range {v7 .. v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    if-nez p1, :cond_0

    .line 5
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v0, v0

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 6
    :cond_0
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v3

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 7
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v3

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v2
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v2, v5

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->d:D

    mul-double v2, v2, v5

    .line 2
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v7, v9

    mul-double v7, v7, v5

    .line 3
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c:D

    mul-double v9, v2, v4

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b:D

    mul-double v13, v7, v11

    add-double v16, v9, v13

    neg-double v2, v2

    mul-double v2, v2, v11

    mul-double v7, v7, v4

    add-double v18, v2, v7

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double v20, v1, v3

    move-object/from16 v15, p2

    invoke-virtual/range {v15 .. v21}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    if-nez v2, :cond_0

    .line 5
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v2, v2

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 6
    :cond_0
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 7
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v0, v0

    .line 2
    :goto_0
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c:D

    mul-double v6, v2, v4

    iget-wide v10, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b:D

    mul-double v12, v0, v10

    sub-double/2addr v6, v12

    mul-double v2, v2, v10

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    iget-wide v10, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object v2, v9

    move-wide v3, v6

    move-wide v5, v0

    move-wide v7, v10

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->d:D

    div-double/2addr v0, v2

    invoke-virtual {v9, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method
