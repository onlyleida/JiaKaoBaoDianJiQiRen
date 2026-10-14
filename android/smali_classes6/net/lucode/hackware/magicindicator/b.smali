.class public Lnet/lucode/hackware/magicindicator/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseBooleanArray;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:I

.field private h:Z

.field private i:Lnet/lucode/hackware/magicindicator/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->i:Lnet/lucode/hackware/magicindicator/b$a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/b$a;->onDeselected(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private b(IFZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/b;->h:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_2

    .line 2
    :cond_0
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/b;->i:Lnet/lucode/hackware/magicindicator/b$a;

    if-eqz p4, :cond_1

    .line 3
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/b$a;->onEnter(IIFZ)V

    .line 4
    :cond_1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private c(IFZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/b;->h:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->e:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    add-int/lit8 v2, v0, -0x1

    if-eq p1, v2, :cond_0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    .line 2
    :cond_2
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/b;->i:Lnet/lucode/hackware/magicindicator/b$a;

    if-eqz p4, :cond_3

    .line 3
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/b$a;->onLeave(IIFZ)V

    .line 4
    :cond_3
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->i:Lnet/lucode/hackware/magicindicator/b$a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/b$a;->onSelected(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/b;->g:I

    return-void
.end method

.method public i(IFI)V
    .locals 10

    int-to-float p3, p1

    add-float/2addr p3, p2

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->f:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v3, v0, p3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    iget v4, p0, Lnet/lucode/hackware/magicindicator/b;->g:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, p1, 0x1

    cmpl-float v4, p2, v5

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    add-int/lit8 v0, p1, -0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    const/4 v7, 0x0

    .line 3
    :goto_2
    iget v8, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    if-ge v7, v8, :cond_5

    if-eq v7, p1, :cond_4

    if-ne v7, v0, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    iget-object v8, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 5
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_4

    .line 6
    invoke-direct {p0, v7, v6, v3, v1}, Lnet/lucode/hackware/magicindicator/b;->c(IFZZ)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 7
    invoke-direct {p0, p1, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/b;->c(IFZZ)V

    .line 8
    invoke-direct {p0, v0, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/b;->b(IFZZ)V

    goto :goto_6

    :cond_6
    sub-float/2addr v6, p2

    .line 9
    invoke-direct {p0, v0, v6, v2, v2}, Lnet/lucode/hackware/magicindicator/b;->c(IFZZ)V

    .line 10
    invoke-direct {p0, p1, v6, v2, v2}, Lnet/lucode/hackware/magicindicator/b;->b(IFZZ)V

    goto :goto_6

    :cond_7
    sub-float/2addr v6, p2

    .line 11
    invoke-direct {p0, v0, v6, v1, v2}, Lnet/lucode/hackware/magicindicator/b;->c(IFZZ)V

    .line 12
    invoke-direct {p0, p1, v6, v1, v2}, Lnet/lucode/hackware/magicindicator/b;->b(IFZZ)V

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    .line 13
    :goto_4
    iget p2, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    if-ge p1, p2, :cond_c

    .line 14
    iget p2, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    if-ne p1, p2, :cond_9

    goto :goto_5

    .line 15
    :cond_9
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 16
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->a(I)V

    .line 17
    :cond_a
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v6

    if-eqz p2, :cond_b

    .line 19
    invoke-direct {p0, p1, v6, v2, v1}, Lnet/lucode/hackware/magicindicator/b;->c(IFZZ)V

    :cond_b
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 20
    :cond_c
    iget p1, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    invoke-direct {p0, p1, v6, v2, v1}, Lnet/lucode/hackware/magicindicator/b;->b(IFZZ)V

    .line 21
    iget p1, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->d(I)V

    .line 22
    :goto_6
    iput p3, p0, Lnet/lucode/hackware/magicindicator/b;->f:F

    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    iput v0, p0, Lnet/lucode/hackware/magicindicator/b;->e:I

    .line 2
    iput p1, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    .line 3
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->d(I)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    if-ge p1, v0, :cond_2

    .line 5
    iget v0, p0, Lnet/lucode/hackware/magicindicator/b;->d:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/b;->a(I)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k(Lnet/lucode/hackware/magicindicator/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->i:Lnet/lucode/hackware/magicindicator/b$a;

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/b;->h:Z

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/b;->c:I

    .line 2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
