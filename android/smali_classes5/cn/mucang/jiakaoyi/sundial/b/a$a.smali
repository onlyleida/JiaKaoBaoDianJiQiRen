.class public final Lcn/mucang/jiakaoyi/sundial/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/sundial/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J&\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J.\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/utils/MatUtils$Companion;",
        "",
        "()V",
        "mat2Bitmap",
        "Landroid/graphics/Bitmap;",
        "rgb",
        "Lorg/opencv/core/Mat;",
        "mat2File",
        "",
        "file",
        "Ljava/io/File;",
        "yuv2Bitmap",
        "data",
        "",
        "width",
        "",
        "height",
        "i420",
        "",
        "yuv2File",
        "sundial_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BIIZ)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/opencv/core/Mat;

    mul-int/lit8 v1, p3, 0x3

    div-int/lit8 v1, v1, 0x2

    sget v2, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v0, v1, p2, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    .line 3
    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    if-eqz p4, :cond_0

    const/16 p4, 0x64

    .line 4
    invoke-static {v0, p1, p4}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    goto :goto_0

    :cond_0
    const/16 p4, 0x5c

    .line 5
    invoke-static {v0, p1, p4}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 6
    :goto_0
    sget-object p4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 9
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    const-string p1, "bitmap"

    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final b(Ljava/io/File;[BIIZ)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcn/mucang/jiakaoyi/sundial/b/a$a;->a([BIIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x50

    invoke-virtual {p2, p1, p4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    .line 5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
