.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;
    }
.end annotation


# instance fields
.field private a:[Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private c:[[D

.field private d:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/a;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->a:[Z

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->j()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->k()V

    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v2, v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v0, v2

    .line 2
    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v8, v6, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    add-double/2addr v6, p0

    mul-double v6, v6, v2

    mul-double p2, p2, p2

    mul-double p0, v4, v4

    mul-double v2, v8, v8

    add-double/2addr p0, v2

    div-double/2addr p2, p0

    const-wide/high16 p0, 0x3fd0000000000000L    # 0.25

    sub-double/2addr p2, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, p2, p0

    if-gez v2, :cond_0

    .line 3
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    invoke-direct {p0, p1, p2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object p0

    .line 4
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    mul-double v8, v8, p0

    sub-double/2addr v0, v8

    mul-double v4, v4, p0

    add-double/2addr v6, v4

    invoke-direct {p2, v0, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object p2
.end method

.method private h(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->c:[[D

    aget-object v4, v4, p1

    aget-wide v5, v4, v1

    invoke-direct {v2, v3, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;ID)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/b;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/b;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 6
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private i(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "DI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p5, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->c:[[D

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->c:[[D

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->d:[Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->d:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->h(I)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v0, v2

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v2, v0, p0

    sub-double/2addr v0, p0

    mul-double v2, v2, v0

    add-double/2addr v4, v2

    mul-double p2, p2, p2

    cmpg-double p0, v4, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private o(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-lez p2, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2, v3, p3, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v7

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v7

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v7, v1

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    invoke-static {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmpl-double v8, v1, v6

    if-nez v8, :cond_0

    .line 4
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v8, v8, v10

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    cmpl-double v10, v8, v6

    if-ltz v10, :cond_0

    return v5

    .line 5
    :cond_0
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v11, v8, v6

    if-nez v11, :cond_1

    .line 6
    iget-wide v12, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v14, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v12, v12, v14

    iget-wide v14, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    move/from16 p2, v11

    iget-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v14, v14, v10

    add-double/2addr v12, v14

    cmpl-double v3, v12, v6

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_1
    move/from16 p2, v11

    :cond_2
    const/4 v3, 0x1

    mul-double v8, v8, v1

    cmpl-double v1, v8, v6

    if-ltz v1, :cond_4

    .line 7
    invoke-static {v4, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpl-double v2, v0, v6

    if-lez v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    return v5

    :cond_4
    if-lez p2, :cond_5

    const/4 v5, 0x1

    :cond_5
    return v5
.end method

.method public e(D)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p1

    .line 2
    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->f(D)[Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    const/4 v5, -0x1

    .line 4
    :goto_0
    aget-object v7, v1, v3

    move-object v4, p0

    move v6, v3

    move-wide v8, p1

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->g(IILjava/util/List;D)I

    move-result v4

    if-ne v4, v2, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->a:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    move v5, v3

    move v3, v4

    goto :goto_0
.end method

.method public f(D)[Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    .line 5
    :goto_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->c:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    cmpg-double v4, v5, p1

    if-gez v4, :cond_1

    .line 7
    aget-object v4, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    aget-object v4, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public g(IILjava/util/List;D)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;D)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->o(Ljava/util/List;II)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->a:[Z

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, p4, p5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p4

    .line 7
    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->i(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
