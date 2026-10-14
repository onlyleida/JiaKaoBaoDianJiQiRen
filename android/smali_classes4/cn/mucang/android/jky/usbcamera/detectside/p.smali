.class public Lcn/mucang/android/jky/usbcamera/detectside/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field public static final b:D

.field public static final c:D

.field public static final d:D

.field public static final e:D

.field private static f:Ljava/lang/String;

.field private static g:Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->a:D

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->b:D

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sput-wide v2, Lcn/mucang/android/jky/usbcamera/detectside/p;->c:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->d:D

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->e:D

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    .line 8
    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->g:Lorg/opencv/core/Mat;

    return-void
.end method

.method private static a(Lorg/opencv/core/Point;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lorg/opencv/core/Point;->y:D

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u70b9\u4e0d\u80fd\u5728\u8303\u56f4\u5916"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    return p0
.end method

.method public static c()Lorg/opencv/core/Mat;
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->g:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "SideDetectLineMatKey"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    .line 4
    :cond_1
    sget-object v1, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rows"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cols"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "type"

    .line 8
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    .line 9
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [D

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    .line 11
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1, v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 13
    invoke-virtual {v1, v7, v7, v6}, Lorg/opencv/core/Mat;->put(II[D)I

    .line 14
    sput-object v1, Lcn/mucang/android/jky/usbcamera/detectside/p;->g:Lorg/opencv/core/Mat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u76f8\u673a\u6ca1\u6709\u6821\u51c6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrintMat2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static d(Lorg/opencv/core/Mat;)V
    .locals 9

    .line 1
    new-instance v0, Lorg/opencv/core/Point;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 2
    new-instance v3, Lorg/opencv/core/Point;

    const-wide v4, 0x4052b33340000000L    # 74.80000305175781

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 3
    new-instance v6, Lorg/opencv/core/Point;

    const-wide v7, 0x4052a00000000000L    # 74.5

    invoke-direct {v6, v4, v5, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 4
    new-instance v4, Lorg/opencv/core/Point;

    invoke-direct {v4, v1, v2, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 5
    new-instance v1, Lorg/opencv/core/MatOfPoint2f;

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/opencv/core/Point;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    const/4 v0, 0x3

    aput-object v4, v2, v0

    invoke-direct {v1, v2}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    .line 6
    invoke-static {p0, v1}, Lorg/opencv/imgproc/Imgproc;->getPerspectiveTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->g(Lorg/opencv/core/Mat;)V

    .line 7
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method

.method private static e(Lorg/opencv/core/Point;II)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    int-to-double v4, p1

    div-double/2addr v0, v4

    iput-wide v0, p0, Lorg/opencv/core/Point;->x:D

    .line 2
    iget-wide v0, p0, Lorg/opencv/core/Point;->y:D

    mul-double v0, v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/opencv/core/Point;->y:D

    return-void
.end method

.method public static f(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static g(Lorg/opencv/core/Mat;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/p;->g:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 3
    :cond_0
    sput-object p0, Lcn/mucang/android/jky/usbcamera/detectside/p;->g:Lorg/opencv/core/Mat;

    if-eqz p0, :cond_2

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "rows"

    .line 5
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cols"

    .line 6
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 7
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    mul-int v1, v1, v2

    new-array v2, v1, [D

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v3, v3, v2}, Lorg/opencv/core/Mat;->get(II[D)I

    .line 10
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    aget-wide v4, v2, v3

    .line 12
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "data"

    .line 13
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/mucang/android/jky/usbcamera/detectside/p;->f:Ljava/lang/String;

    const-string v0, "SideDetectLineMatKey"

    .line 15
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6570\u636e\u4fdd\u5b58\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrintMat1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static h(Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Point;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->a(Lorg/opencv/core/Point;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jky/usbcamera/detectside/p;->a(Lorg/opencv/core/Point;)V

    .line 3
    invoke-static {p2}, Lcn/mucang/android/jky/usbcamera/detectside/p;->a(Lorg/opencv/core/Point;)V

    .line 4
    invoke-static {p3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->a(Lorg/opencv/core/Point;)V

    .line 5
    invoke-static {p0, p4, p5}, Lcn/mucang/android/jky/usbcamera/detectside/p;->e(Lorg/opencv/core/Point;II)V

    .line 6
    invoke-static {p1, p4, p5}, Lcn/mucang/android/jky/usbcamera/detectside/p;->e(Lorg/opencv/core/Point;II)V

    .line 7
    invoke-static {p2, p4, p5}, Lcn/mucang/android/jky/usbcamera/detectside/p;->e(Lorg/opencv/core/Point;II)V

    .line 8
    invoke-static {p3, p4, p5}, Lcn/mucang/android/jky/usbcamera/detectside/p;->e(Lorg/opencv/core/Point;II)V

    .line 9
    invoke-static {p0, p6, p7}, Lcn/mucang/android/jky/usbcamera/detectside/p;->i(Lorg/opencv/core/Point;II)V

    .line 10
    invoke-static {p1, p6, p7}, Lcn/mucang/android/jky/usbcamera/detectside/p;->i(Lorg/opencv/core/Point;II)V

    .line 11
    invoke-static {p2, p6, p7}, Lcn/mucang/android/jky/usbcamera/detectside/p;->i(Lorg/opencv/core/Point;II)V

    .line 12
    invoke-static {p3, p6, p7}, Lcn/mucang/android/jky/usbcamera/detectside/p;->i(Lorg/opencv/core/Point;II)V

    .line 13
    new-instance p4, Lorg/opencv/core/MatOfPoint2f;

    const/4 p5, 0x4

    new-array p5, p5, [Lorg/opencv/core/Point;

    const/4 p6, 0x0

    aput-object p0, p5, p6

    const/4 p0, 0x1

    aput-object p1, p5, p0

    const/4 p0, 0x2

    aput-object p2, p5, p0

    const/4 p0, 0x3

    aput-object p3, p5, p0

    invoke-direct {p4, p5}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    .line 14
    invoke-static {p4}, Lcn/mucang/android/jky/usbcamera/detectside/p;->d(Lorg/opencv/core/Mat;)V

    return-void
.end method

.method private static i(Lorg/opencv/core/Point;II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    int-to-double v2, p1

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/opencv/core/Point;->x:D

    .line 2
    iget-wide v0, p0, Lorg/opencv/core/Point;->y:D

    int-to-double p1, p2

    mul-double v0, v0, p1

    iput-wide v0, p0, Lorg/opencv/core/Point;->y:D

    return-void
.end method
