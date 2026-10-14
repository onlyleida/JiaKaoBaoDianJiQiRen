.class public Lcn/mucang/android/jky/usbcamera/detectside/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:Ljava/lang/String;

.field public static f:F

.field private static g:D

.field private static h:D


# instance fields
.field private a:Lorg/opencv/core/Mat;

.field public final b:J

.field private final c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->f:F

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 3
    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->g:D

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 4
    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->h:D

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    .line 3
    iput-wide p2, p0, Lcn/mucang/android/jky/usbcamera/detectside/r;->b:J

    .line 4
    iput-boolean p4, p0, Lcn/mucang/android/jky/usbcamera/detectside/r;->c:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/r;->d:I

    return-void
.end method

.method private a(Ljava/util/List;FF)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;FF)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 3
    aget v2, v1, v2

    aget v1, v1, v3

    .line 4
    new-instance v3, Lcn/mucang/android/jky/usbcamera/detectside/q;

    invoke-direct {v3, v1, v2}, Lcn/mucang/android/jky/usbcamera/detectside/q;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 6
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 7
    iget v4, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 8
    :cond_2
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_1

    .line 9
    iget v5, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/usbcamera/detectside/q;

    cmpl-float v7, v4, v1

    if-lez v7, :cond_5

    .line 11
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    div-float/2addr v7, v4

    iput v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->m:F

    :cond_5
    cmpl-float v7, v5, v1

    if-lez v7, :cond_4

    .line 12
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    div-float/2addr v7, v5

    iput v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->l:F

    goto :goto_2

    .line 13
    :cond_6
    sget-object p1, Lcn/mucang/android/jky/usbcamera/detectside/r;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5904\u7406\u524d\u7ebf\u6761\u603b\u6570 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 18
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_4
    if-ltz v6, :cond_8

    .line 20
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 21
    invoke-direct {p0, v5, v7, p2, p3}, Lcn/mucang/android/jky/usbcamera/detectside/r;->b(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;FF)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 22
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 23
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 24
    iget v11, v10, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    add-float/2addr v6, v11

    .line 25
    iget v11, v10, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    add-float/2addr v7, v11

    .line 26
    iget v11, v10, Lcn/mucang/android/jky/usbcamera/detectside/q;->m:F

    add-float/2addr v8, v11

    .line 27
    iget v10, v10, Lcn/mucang/android/jky/usbcamera/detectside/q;->l:F

    add-float/2addr v9, v10

    goto :goto_5

    .line 28
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x4

    if-le v5, v10, :cond_f

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v8, v5

    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v9, v5

    .line 32
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 33
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->m:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->n:F

    .line 34
    iget v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->l:F

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, v6, Lcn/mucang/android/jky/usbcamera/detectside/q;->o:F

    goto :goto_6

    :cond_a
    const v5, 0x3d75c28f    # 0.06f

    .line 35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_7
    if-ltz v6, :cond_d

    .line 36
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 37
    iget v8, v7, Lcn/mucang/android/jky/usbcamera/detectside/q;->o:F

    cmpl-float v8, v8, v5

    if-gtz v8, :cond_b

    iget v7, v7, Lcn/mucang/android/jky/usbcamera/detectside/q;->n:F

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_c

    .line 38
    :cond_b
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 39
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 40
    iget v9, v8, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    add-float/2addr v6, v9

    .line 41
    iget v8, v8, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    add-float/2addr v7, v8

    goto :goto_8

    .line 42
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 43
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    .line 44
    :cond_f
    new-instance v4, Lcn/mucang/android/jky/usbcamera/detectside/q;

    invoke-direct {v4, v7, v6}, Lcn/mucang/android/jky/usbcamera/detectside/q;-><init>(FF)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 45
    :cond_10
    sget-object p2, Lcn/mucang/android/jky/usbcamera/detectside/r;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5904\u7406\u540e\u7ebf\u6761\u603b\u6570 = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private b(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;FF)Z
    .locals 8

    .line 1
    iget v0, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    iget v1, p2, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    invoke-static {v0, v1}, Lcn/mucang/android/jky/usbcamera/detectside/q;->e(FF)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    sget-wide v2, Lcn/mucang/android/jky/usbcamera/detectside/p;->c:D

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_0

    iget v2, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget v3, p2, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    sget-wide v5, Lcn/mucang/android/jky/usbcamera/detectside/p;->a:D

    cmpg-double v7, v2, v5

    if-gez v7, :cond_0

    return v4

    .line 3
    :cond_0
    sget-wide v2, Lcn/mucang/android/jky/usbcamera/detectside/p;->d:D

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_3

    .line 4
    invoke-virtual {p1, p2}, Lcn/mucang/android/jky/usbcamera/detectside/q;->f(Lcn/mucang/android/jky/usbcamera/detectside/q;)Lorg/opencv/core/Point;

    move-result-object p1

    if-nez p1, :cond_1

    return v5

    :cond_1
    const p2, 0x3dcccccd    # 0.1f

    .line 5
    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    neg-float v2, p3

    mul-float v2, v2, p2

    float-to-double v2, v2

    cmpl-double v6, v0, v2

    if-lez v6, :cond_2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float p3, p3, v2

    float-to-double v6, p3

    cmpg-double p3, v0, v6

    if-gez p3, :cond_2

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    neg-float p1, p4

    mul-float p1, p1, p2

    float-to-double p1, p1

    cmpl-double p3, v0, p1

    if-lez p3, :cond_2

    mul-float p4, p4, v2

    float-to-double p1, p4

    cmpg-double p3, v0, p1

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    return v5
.end method

.method static synthetic c(Lcn/mucang/android/jky/usbcamera/detectside/q;Lcn/mucang/android/jky/usbcamera/detectside/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 2
    iget p1, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->d:I

    if-lez v1, :cond_0

    .line 2
    invoke-static {v2}, Lcn/mucang/android/jky/usbcamera/detectside/t;->j(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/p;->c()Lorg/opencv/core/Mat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v3, Lorg/opencv/core/Size;

    const/16 v4, 0x4a

    int-to-double v5, v4

    invoke-direct {v3, v5, v6, v5, v6}, Lorg/opencv/core/Size;-><init>(DD)V

    .line 5
    new-instance v5, Lorg/opencv/core/Mat;

    sget v6, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v5, v4, v4, v6}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 6
    iget-object v4, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-static {v4, v5, v1, v3, v2}, Lorg/opencv/imgproc/Imgproc;->warpPerspective(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v5, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    .line 8
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9
    new-instance v1, Lorg/opencv/core/Mat;

    iget-object v6, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->rows()I

    move-result v6

    iget-object v7, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v7}, Lorg/opencv/core/Mat;->cols()I

    move-result v7

    sget v8, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 10
    new-instance v6, Lorg/opencv/core/Size;

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-direct {v6, v9, v10, v9, v10}, Lorg/opencv/core/Size;-><init>(DD)V

    const-wide/16 v9, 0x0

    invoke-static {v5, v1, v6, v9, v10}, Lorg/opencv/imgproc/Imgproc;->GaussianBlur(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;D)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v9, 0xf

    .line 12
    new-instance v10, Lorg/opencv/core/Mat;

    iget-object v11, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v11}, Lorg/opencv/core/Mat;->rows()I

    move-result v11

    iget-object v12, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v12}, Lorg/opencv/core/Mat;->cols()I

    move-result v12

    invoke-direct {v10, v11, v12, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 13
    new-instance v11, Lorg/opencv/core/Mat;

    iget-object v12, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v12}, Lorg/opencv/core/Mat;->rows()I

    move-result v12

    iget-object v13, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v13}, Lorg/opencv/core/Mat;->cols()I

    move-result v13

    invoke-direct {v11, v12, v13, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v8, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v12

    const/16 v13, 0xc8

    if-ge v12, v13, :cond_2

    const/4 v9, 0x3

    .line 15
    :cond_2
    new-instance v12, Lorg/opencv/core/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v15, v3

    int-to-double v2, v9

    :try_start_1
    invoke-direct {v12, v2, v3, v2, v3}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v8, v12}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement(ILorg/opencv/core/Size;)Lorg/opencv/core/Mat;

    move-result-object v4

    new-instance v9, Lorg/opencv/core/Point;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct {v9, v13, v14, v13, v14}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v12, 0x3

    invoke-static {v1, v10, v4, v9, v12}, Lorg/opencv/imgproc/Imgproc;->erode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;I)V

    .line 16
    new-instance v4, Lorg/opencv/core/Size;

    invoke-direct {v4, v2, v3, v2, v3}, Lorg/opencv/core/Size;-><init>(DD)V

    .line 17
    invoke-static {v8, v4}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement(ILorg/opencv/core/Size;)Lorg/opencv/core/Mat;

    move-result-object v2

    new-instance v3, Lorg/opencv/core/Point;

    invoke-direct {v3, v13, v14, v13, v14}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v4, 0x3

    .line 18
    invoke-static {v10, v11, v2, v3, v4}, Lorg/opencv/imgproc/Imgproc;->dilate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-wide v15, v3

    :catchall_1
    move-object v11, v1

    .line 19
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81a8\u80c0\u8150\u8680\u7684\u65f6\u95f4\u662f : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Lorg/opencv/core/Mat;

    iget-object v4, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v4

    iget-object v6, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->cols()I

    move-result v6

    sget v7, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v2, v4, v6, v7}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 21
    sget-wide v20, Lcn/mucang/android/jky/usbcamera/detectside/r;->g:D

    sget-wide v22, Lcn/mucang/android/jky/usbcamera/detectside/r;->h:D

    const/16 v24, 0x3

    const/16 v25, 0x1

    move-object/from16 v18, v11

    move-object/from16 v19, v2

    invoke-static/range {v18 .. v25}, Lorg/opencv/imgproc/Imgproc;->Canny(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDIZ)V

    .line 22
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    const/16 v6, 0x8ac

    int-to-double v6, v6

    const-wide v12, 0x4052b33333333333L    # 74.8

    div-double/2addr v6, v12

    double-to-int v6, v6

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v24, v6

    .line 23
    invoke-static/range {v18 .. v24}, Lorg/opencv/imgproc/Imgproc;->HoughLines(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)V

    .line 24
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v6

    const/16 v7, 0xa

    const-wide/high16 v25, 0x4024000000000000L    # 10.0

    if-lez v6, :cond_3

    if-lt v6, v7, :cond_4

    .line 25
    :cond_3
    sget-wide v12, Lcn/mucang/android/jky/usbcamera/detectside/r;->g:D

    add-double v12, v12, v25

    sput-wide v12, Lcn/mucang/android/jky/usbcamera/detectside/r;->g:D

    .line 26
    sget-wide v18, Lcn/mucang/android/jky/usbcamera/detectside/r;->h:D

    add-double v18, v18, v25

    sput-wide v18, Lcn/mucang/android/jky/usbcamera/detectside/r;->h:D

    const-wide v18, 0x4061800000000000L    # 140.0

    cmpl-double v6, v12, v18

    if-lez v6, :cond_4

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    .line 27
    sput-wide v12, Lcn/mucang/android/jky/usbcamera/detectside/r;->g:D

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    .line 28
    sput-wide v12, Lcn/mucang/android/jky/usbcamera/detectside/r;->h:D

    .line 29
    :cond_4
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->width()I

    move-result v6

    .line 30
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->height()I

    move-result v9

    .line 31
    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V

    .line 32
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 33
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    const/4 v10, 0x0

    if-gtz v2, :cond_7

    .line 34
    iget-object v2, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->width()I

    move-result v2

    if-lez v2, :cond_6

    .line 35
    iget-boolean v2, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->c:Z

    if-eqz v2, :cond_5

    .line 36
    iget-object v2, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->width()I

    move-result v2

    iget-object v3, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->height()I

    move-result v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 37
    iget-object v3, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-static {v3, v2}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    move-object v2, v10

    .line 38
    :goto_2
    iget-wide v6, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->b:J

    invoke-static {v2, v10, v6, v7}, Lcn/mucang/android/jky/usbcamera/detectside/o;->e(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    .line 39
    :cond_6
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 40
    iget-object v2, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 41
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 42
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->release()V

    .line 43
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    return-void

    .line 44
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 45
    :goto_3
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->rows()I

    move-result v13

    const/4 v14, 0x2

    if-ge v12, v13, :cond_8

    new-array v13, v14, [F

    .line 46
    invoke-virtual {v4, v12, v8, v13}, Lorg/opencv/core/Mat;->get(II[F)I

    .line 47
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    int-to-float v6, v6

    int-to-float v9, v9

    .line 48
    invoke-direct {v0, v2, v6, v9}, Lcn/mucang/android/jky/usbcamera/detectside/r;->a(Ljava/util/List;FF)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 50
    sget-object v6, Lcn/mucang/android/jky/usbcamera/detectside/a;->a:Lcn/mucang/android/jky/usbcamera/detectside/a;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-static {v2}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 52
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v14, :cond_9

    .line 53
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jky/usbcamera/detectside/q;

    const/4 v12, 0x1

    .line 54
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 55
    iget v12, v9, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    iget v8, v14, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    sub-float/2addr v12, v8

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v12, 0x41f00000    # 30.0f

    .line 56
    invoke-static {v12}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v12

    const/high16 v20, 0x41200000    # 10.0f

    .line 57
    invoke-static/range {v20 .. v20}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v20

    .line 58
    iget v9, v9, Lcn/mucang/android/jky/usbcamera/detectside/q;->i:F

    iget v14, v14, Lcn/mucang/android/jky/usbcamera/detectside/q;->i:F

    sub-float/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v14

    if-gtz v9, :cond_9

    cmpl-float v9, v8, v20

    if-ltz v9, :cond_9

    cmpg-float v9, v8, v12

    if-gez v9, :cond_9

    .line 59
    sput v8, Lcn/mucang/android/jky/usbcamera/detectside/r;->f:F

    .line 60
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8fb9\u7ebf\u68c0\u6d4b\u65f6\u95f4:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v13, v20, v18

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " , \u7ebf\u6761\u6570:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_a

    const/4 v9, 0x0

    goto :goto_4

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    .line 61
    iget-boolean v2, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->c:Z

    if-eqz v2, :cond_c

    const/4 v8, 0x0

    .line 62
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_b

    .line 63
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jky/usbcamera/detectside/q;

    .line 64
    iget-object v9, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->a:Lorg/opencv/core/Point;

    iget-object v10, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->b:Lorg/opencv/core/Point;

    new-instance v13, Lorg/opencv/core/Scalar;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide v22, 0x406fe00000000000L    # 255.0

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    const/16 v22, 0x1

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    invoke-static/range {v18 .. v24}, Lorg/opencv/imgproc/Imgproc;->line(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;III)V

    .line 65
    iget-object v9, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->f:Lorg/opencv/core/Point;

    new-instance v10, Lorg/opencv/core/Scalar;

    const-wide/16 v18, 0x0

    const-wide v20, 0x406fe00000000000L    # 255.0

    const-wide v22, 0x406fe00000000000L    # 255.0

    move-object/from16 v17, v10

    invoke-direct/range {v17 .. v23}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    const/4 v12, 0x1

    invoke-static {v11, v9, v7, v10, v12}, Lorg/opencv/imgproc/Imgproc;->circle(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;ILorg/opencv/core/Scalar;I)V

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v9, Lorg/opencv/core/Point;

    iget-object v2, v2, Lcn/mucang/android/jky/usbcamera/detectside/q;->f:Lorg/opencv/core/Point;

    iget-wide v13, v2, Lorg/opencv/core/Point;->x:D

    move v10, v8

    iget-wide v7, v2, Lorg/opencv/core/Point;->y:D

    add-double v7, v7, v25

    invoke-direct {v9, v13, v14, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    const/16 v21, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    new-instance v24, Lorg/opencv/core/Scalar;

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide v32, 0x406fe00000000000L    # 255.0

    move-object/from16 v27, v24

    invoke-direct/range {v27 .. v33}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    move-object/from16 v18, v11

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v24}, Lorg/opencv/imgproc/Imgproc;->putText(Lorg/opencv/core/Mat;Ljava/lang/String;Lorg/opencv/core/Point;IDLorg/opencv/core/Scalar;)V

    add-int/lit8 v8, v10, 0x1

    const/16 v7, 0xa

    goto/16 :goto_5

    .line 67
    :cond_b
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->width()I

    move-result v2

    invoke-virtual {v11}, Lorg/opencv/core/Mat;->height()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 68
    invoke-static {v11, v10}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 69
    :cond_c
    iget-wide v7, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->b:J

    invoke-static {v10, v6, v7, v8}, Lcn/mucang/android/jky/usbcamera/detectside/o;->e(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    goto :goto_6

    .line 70
    :cond_d
    iget-boolean v6, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->c:Z

    if-eqz v6, :cond_e

    .line 71
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->width()I

    move-result v6

    invoke-virtual {v11}, Lorg/opencv/core/Mat;->height()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 72
    invoke-static {v11, v10}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 73
    :cond_e
    iget-wide v6, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->b:J

    invoke-static {v10, v2, v6, v7}, Lcn/mucang/android/jky/usbcamera/detectside/o;->e(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    .line 74
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "line detect time : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v15

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v11}, Lorg/opencv/core/Mat;->release()V

    .line 76
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 77
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 78
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 79
    iget-object v1, v0, Lcn/mucang/android/jky/usbcamera/detectside/r;->a:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method
