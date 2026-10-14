.class public final Lcn/mucang/android/facelib/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/facelib/t$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J*\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\"\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0016J\u0008\u0010!\u001a\u00020\u001dH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/facelib/GoogleFaceDetector;",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;",
        "detector",
        "Lcom/google/mlkit/vision/face/FaceDetector;",
        "(Lcom/google/mlkit/vision/face/FaceDetector;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "faceRect",
        "Lorg/opencv/core/Rect;",
        "frame",
        "Lorg/opencv/core/Mat;",
        "isDestroy",
        "",
        "rgb",
        "containFace",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
        "code",
        "",
        "data",
        "",
        "preViewW",
        "preViewH",
        "containFaceI420",
        "i420Data",
        "containFaceNv21",
        "nv21Yuv",
        "getContainRatio",
        "",
        "init",
        "",
        "intercept",
        "rect",
        "isActive",
        "release",
        "EmptyScheduler",
        "facelib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/vision/face/FaceDetector;

.field private b:Lorg/opencv/core/Mat;

.field private c:Lorg/opencv/core/Mat;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lorg/opencv/core/Rect;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/face/FaceDetector;)V
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/facelib/t;->a:Lcom/google/mlkit/vision/face/FaceDetector;

    return-void
.end method

.method private final declared-synchronized e(I[BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v5, v1, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    const/4 v6, 0x2

    if-nez v5, :cond_0

    .line 2
    new-instance v5, Lorg/opencv/core/Mat;

    mul-int/lit8 v7, v4, 0x3

    div-int/2addr v7, v6

    sget v8, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v5, v7, v3, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object v5, v1, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    .line 3
    :cond_0
    iget-object v5, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    if-nez v5, :cond_1

    .line 4
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v5, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    .line 5
    :cond_1
    iget-object v5, v1, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    const/4 v7, 0x0

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v7, v7, v2}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 6
    :goto_0
    iget-object v5, v1, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    iget-object v8, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    invoke-static {v5, v8, v0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    const/16 v5, 0x64

    if-ne v0, v5, :cond_4

    .line 7
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    iget-object v2, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/facelib/t;->d:Landroid/graphics/Bitmap;

    .line 9
    :cond_3
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    iget-object v2, v1, Lcn/mucang/android/facelib/t;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v0, v7}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x11

    .line 11
    invoke-static {v2, v3, v4, v7, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0

    :goto_1
    const-string v2, "if (code == Imgproc.COLO\u2026GE_FORMAT_NV21)\n        }"

    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, v1, Lcn/mucang/android/facelib/t;->a:Lcom/google/mlkit/vision/face/FaceDetector;

    const/4 v5, 0x0

    if-nez v2, :cond_5

    :goto_2
    move-object v0, v5

    goto :goto_3

    :cond_5
    invoke-interface {v2, v0}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v2, Lcn/mucang/android/facelib/k;->a:Lcn/mucang/android/facelib/k;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v2, Lcn/mucang/android/facelib/j;->a:Lcn/mucang/android/facelib/j;

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_3
    const-string v2, "detector?.process(image)\u2026lureListener {\n\n        }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 16
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x1388

    cmp-long v2, v10, v12

    if-lez v2, :cond_8

    const-string v2, "google\u4eba\u8138\u68c0\u6d4b\u8d85\u65f6"

    .line 18
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const-wide/16 v10, 0x10

    .line 19
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    .line 20
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_a

    goto/16 :goto_12

    .line 22
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    move-object v2, v5

    goto :goto_6

    .line 24
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_6

    .line 26
    :cond_c
    move-object v8, v2

    check-cast v8, Lcom/google/mlkit/vision/face/Face;

    .line 27
    invoke-virtual {v8}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v9, v9, v8

    .line 28
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 29
    move-object v10, v8

    check-cast v10, Lcom/google/mlkit/vision/face/Face;

    .line 30
    invoke-virtual {v10}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int v11, v11, v10

    if-ge v9, v11, :cond_e

    move-object v2, v8

    move v9, v11

    .line 31
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_d

    .line 32
    :goto_6
    check-cast v2, Lcom/google/mlkit/vision/face/Face;

    if-nez v2, :cond_f

    goto/16 :goto_12

    .line 33
    :cond_f
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->e:Lorg/opencv/core/Rect;

    if-nez v0, :cond_10

    .line 34
    new-instance v0, Lorg/opencv/core/Rect;

    invoke-direct {v0}, Lorg/opencv/core/Rect;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/facelib/t;->e:Lorg/opencv/core/Rect;

    .line 35
    :cond_10
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 36
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ltz v8, :cond_1e

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ltz v8, :cond_1e

    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-gt v8, v3, :cond_1e

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v4, :cond_1e

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v8, v0

    if-ge v8, v6, :cond_1e

    .line 38
    sget-object v9, Lcn/mucang/jiakaoyi/uilib/login/face/q;->k:Lcn/mucang/jiakaoyi/uilib/login/face/q$a;

    const/4 v0, 0x4

    .line 39
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v10, v5

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v10, v0

    :goto_7
    const/16 v0, 0xa

    .line 40
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_12

    move-object v11, v5

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v11, v0

    :goto_8
    const/4 v0, 0x6

    .line 41
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_13

    move-object v12, v5

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v12, v0

    :goto_9
    const/4 v0, 0x5

    .line 42
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v13, v5

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v13, v0

    :goto_a
    const/16 v0, 0xb

    .line 43
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v14, v5

    goto :goto_b

    :cond_15
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v14, v0

    .line 44
    :goto_b
    invoke-virtual {v2, v7}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v15, v5

    goto :goto_c

    :cond_16
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object v15, v0

    :goto_c
    const/4 v0, 0x3

    .line 45
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_17

    move-object/from16 v16, v5

    goto :goto_d

    :cond_17
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_d
    const/16 v0, 0x9

    .line 46
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_18

    move-object/from16 v17, v5

    goto :goto_e

    :cond_18
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_e
    const/4 v0, 0x1

    .line 47
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_19

    move-object/from16 v18, v5

    goto :goto_f

    :cond_19
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_f
    const/4 v0, 0x7

    .line 48
    invoke-virtual {v2, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object/from16 v19, v5

    goto :goto_10

    :cond_1a
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceLandmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v0

    move-object/from16 v19, v0

    .line 49
    :goto_10
    invoke-virtual/range {v9 .. v19}, Lcn/mucang/jiakaoyi/uilib/login/face/q$a;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcn/mucang/jiakaoyi/uilib/login/face/q;

    move-result-object v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v26, :cond_1b

    .line 50
    monitor-exit p0

    return-object v5

    .line 51
    :cond_1b
    :try_start_1
    iget-object v0, v1, Lcn/mucang/android/facelib/t;->e:Lorg/opencv/core/Rect;

    if-nez v0, :cond_1c

    goto :goto_11

    .line 52
    :cond_1c
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v0, Lorg/opencv/core/Rect;->x:I

    .line 53
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v0, Lorg/opencv/core/Rect;->width:I

    .line 54
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v0, Lorg/opencv/core/Rect;->y:I

    .line 55
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v0, Lorg/opencv/core/Rect;->height:I

    .line 56
    sget-object v6, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    invoke-virtual {v6, v0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1d

    .line 57
    monitor-exit p0

    return-object v5

    .line 58
    :cond_1d
    :goto_11
    :try_start_2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/m;

    .line 59
    iget-object v3, v1, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    .line 60
    iget-object v4, v1, Lcn/mucang/android/facelib/t;->e:Lorg/opencv/core/Rect;

    .line 61
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleX()F

    move-result v23

    .line 62
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result v24

    .line 63
    invoke-virtual {v2}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleZ()F

    move-result v25

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 64
    invoke-direct/range {v20 .. v26}, Lcn/mucang/jiakaoyi/uilib/login/face/m;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;FFFLcn/mucang/jiakaoyi/uilib/login/face/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    :cond_1e
    monitor-exit p0

    return-object v5

    .line 66
    :cond_1f
    :goto_12
    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final f(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method private static final g(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/facelib/t;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/facelib/t;->f(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public b([BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;
    .locals 1

    const-string v0, "nv21Yuv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x5c

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/facelib/t;->e(I[BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/opencv/core/Rect;II)Z
    .locals 0

    const-string p2, "rect"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d([BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;
    .locals 1

    const-string v0, "i420Data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/facelib/t;->e(I[BII)Lcn/mucang/jiakaoyi/uilib/login/face/m;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/facelib/t;->b:Lorg/opencv/core/Mat;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 4
    :goto_1
    iput-object v0, p0, Lcn/mucang/android/facelib/t;->c:Lorg/opencv/core/Mat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
