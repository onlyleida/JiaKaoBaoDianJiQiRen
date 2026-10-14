.class Landroidx/constraintlayout/core/motion/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/core/motion/a/h;

.field b:[F

.field c:[D

.field d:[F

.field e:[F

.field f:[F

.field g:Landroidx/constraintlayout/core/motion/a/b;

.field h:[D


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Landroidx/constraintlayout/core/motion/a/h;

    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/a/h;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    .line 3
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/a/h;->e(ILjava/lang/String;)V

    .line 4
    new-array p1, p4, [F

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->b:[F

    .line 5
    new-array p1, p4, [D

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    .line 6
    new-array p1, p4, [F

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->d:[F

    .line 7
    new-array p1, p4, [F

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->e:[F

    .line 8
    new-array p1, p4, [F

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->f:[F

    .line 9
    new-array p1, p4, [F

    return-void
.end method


# virtual methods
.method public a(F)D
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->g:Landroidx/constraintlayout/core/motion/a/b;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    float-to-double v4, p1

    .line 2
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/a/e$b;->h:[D

    invoke-virtual {v0, v4, v5, v6}, Landroidx/constraintlayout/core/motion/a/b;->d(D[D)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->h:[D

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->e:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v3

    .line 4
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->f:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v2

    .line 5
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->b:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v1

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->h:[D

    aget-wide v3, v0, v3

    .line 7
    aget-wide v5, v0, v2

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    float-to-double v7, p1

    invoke-virtual {v0, v7, v8, v5, v6}, Landroidx/constraintlayout/core/motion/a/h;->c(DD)D

    move-result-wide v5

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->h:[D

    aget-wide v0, p1, v1

    mul-double v5, v5, v0

    add-double/2addr v3, v5

    return-wide v3
.end method

.method public b(IIFFFF)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    aput-wide v1, v0, p1

    .line 2
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/a/e$b;->d:[F

    aput p3, p2, p1

    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/a/e$b;->e:[F

    aput p4, p2, p1

    .line 4
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/a/e$b;->f:[F

    aput p5, p2, p1

    .line 5
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/a/e$b;->b:[F

    aput p6, p2, p1

    return-void
.end method

.method public c(F)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    array-length p1, p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v3, 0x0

    aput p1, v1, v3

    const-class p1, D

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->b:[F

    array-length v4, v1

    add-int/2addr v4, v0

    new-array v4, v4, [D

    iput-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->h:[D

    .line 3
    array-length v1, v1

    add-int/2addr v1, v0

    new-array v1, v1, [D

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->d:[F

    aget v4, v4, v3

    invoke-virtual {v1, v6, v7, v4}, Landroidx/constraintlayout/core/motion/a/h;->a(DF)V

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    array-length v4, v1

    sub-int/2addr v4, v2

    .line 7
    aget-wide v5, v1, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->d:[F

    aget v4, v5, v4

    invoke-virtual {v1, v7, v8, v4}, Landroidx/constraintlayout/core/motion/a/h;->a(DF)V

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 10
    aget-object v4, p1, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->e:[F

    aget v5, v5, v1

    float-to-double v5, v5

    aput-wide v5, v4, v3

    .line 11
    aget-object v4, p1, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->f:[F

    aget v5, v5, v1

    float-to-double v5, v5

    aput-wide v5, v4, v2

    .line 12
    aget-object v4, p1, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->b:[F

    aget v5, v5, v1

    float-to-double v5, v5

    aput-wide v5, v4, v0

    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    aget-wide v6, v5, v1

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/a/e$b;->d:[F

    aget v5, v5, v1

    invoke-virtual {v4, v6, v7, v5}, Landroidx/constraintlayout/core/motion/a/h;->a(DF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->a:Landroidx/constraintlayout/core/motion/a/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/a/h;->d()V

    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/a/e$b;->c:[D

    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 16
    invoke-static {v3, v0, p1}, Landroidx/constraintlayout/core/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/core/motion/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->g:Landroidx/constraintlayout/core/motion/a/b;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/a/e$b;->g:Landroidx/constraintlayout/core/motion/a/b;

    :goto_1
    return-void
.end method
