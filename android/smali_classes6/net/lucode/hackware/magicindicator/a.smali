.class public Lnet/lucode/hackware/magicindicator/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public static a(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/e/c/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/e/c/d/a;",
            ">;I)",
            "Lnet/lucode/hackware/magicindicator/e/c/d/a;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    invoke-direct {v0}, Lnet/lucode/hackware/magicindicator/e/c/d/a;-><init>()V

    if-gez p1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    .line 7
    :goto_0
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    .line 8
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b:I

    .line 9
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    .line 10
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->d:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->d:I

    .line 11
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    .line 12
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->f:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->f:I

    .line 13
    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v2

    mul-int p1, p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    .line 14
    iget p0, p0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->h:I

    iput p0, v0, Lnet/lucode/hackware/magicindicator/e/c/d/a;->h:I

    return-object v0
.end method
