.class public Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method private static a(FF)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const-wide v3, 0x4046800000000000L    # 45.0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    sub-int/2addr p0, v2

    :goto_0
    if-ltz p0, :cond_2

    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 7
    iget v7, v7, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_1

    .line 8
    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v2, :cond_3

    return-object v0

    .line 10
    :cond_3
    sget-object p0, Lcn/mucang/android/jky/usbcamera/detectside/c;->a:Lcn/mucang/android/jky/usbcamera/detectside/c;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_8

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 16
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_2
    if-ltz v9, :cond_6

    .line 18
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 19
    iget v11, v8, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    iget v12, v10, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    invoke-static {v11, v12}, Lcn/mucang/android/jky/usbcamera/detectside/q;->e(FF)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v13, v11, v5

    if-ltz v13, :cond_5

    .line 20
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 22
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 23
    sget-object v8, Lcn/mucang/android/jky/usbcamera/detectside/b;->a:Lcn/mucang/android/jky/usbcamera/detectside/b;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 25
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9

    return-object v0

    .line 27
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 30
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_c

    .line 31
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 33
    iget v5, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget v6, v1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_c

    .line 34
    iget p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget v1, v1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_b

    .line 35
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 36
    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 37
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_10

    .line 38
    sget p0, Lcn/mucang/android/jky/usbcamera/detectside/r;->f:F

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_d

    const/high16 p0, 0x41700000    # 15.0f

    .line 39
    invoke-static {p0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result p0

    .line 40
    :cond_d
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 41
    iget v3, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->q:F

    cmpg-float v3, v3, p0

    if-ltz v3, :cond_e

    iget v3, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->p:F

    cmpg-float v3, v3, p0

    if-gez v3, :cond_10

    .line 42
    :cond_e
    new-instance v3, Lcn/mucang/android/jky/usbcamera/detectside/q;

    iget v4, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    iget v2, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_f

    sub-float/2addr v2, p0

    goto :goto_5

    :cond_f
    add-float/2addr v2, p0

    :goto_5
    invoke-direct {v3, v4, v2}, Lcn/mucang/android/jky/usbcamera/detectside/q;-><init>(FF)V

    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_10
    sget-object p0, Lcn/mucang/android/jky/usbcamera/detectside/d;->a:Lcn/mucang/android/jky/usbcamera/detectside/d;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_11
    :goto_6
    return-object v0
.end method

.method static synthetic c(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    iget p1, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    invoke-static {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;->a(FF)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget p1, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    invoke-static {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;->a(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method static synthetic e(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget p1, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    invoke-static {p0, p1}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;->a(FF)I

    move-result p0

    neg-int p0, p0

    return p0
.end method
