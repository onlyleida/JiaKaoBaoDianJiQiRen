.class public Lorg/opencv/objdetect/QRCodeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lorg/opencv/objdetect/QRCodeDetector;->QRCodeDetector_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    return-void
.end method

.method private static native QRCodeDetector_0()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/QRCodeDetector;
    .locals 1

    .line 1
    new-instance v0, Lorg/opencv/objdetect/QRCodeDetector;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/QRCodeDetector;-><init>(J)V

    return-object v0
.end method

.method private static native decode_0(JJJJ)Ljava/lang/String;
.end method

.method private static native decode_1(JJJ)Ljava/lang/String;
.end method

.method private static native delete(J)V
.end method

.method private static native detectAndDecode_0(JJJJ)Ljava/lang/String;
.end method

.method private static native detectAndDecode_1(JJJ)Ljava/lang/String;
.end method

.method private static native detectAndDecode_2(JJ)Ljava/lang/String;
.end method

.method private static native detect_0(JJJ)Z
.end method

.method private static native setEpsX_0(JD)V
.end method

.method private static native setEpsY_0(JD)V
.end method


# virtual methods
.method public decode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/QRCodeDetector;->decode_1(JJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/QRCodeDetector;->decode_0(JJJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/QRCodeDetector;->detect_0(JJJ)Z

    move-result p1

    return p1
.end method

.method public detectAndDecode(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 4

    .line 3
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecode_2(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detectAndDecode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecode_1(JJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detectAndDecode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecode_0(JJJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/QRCodeDetector;->delete(J)V

    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    return-wide v0
.end method

.method public setEpsX(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;->setEpsX_0(JD)V

    return-void
.end method

.method public setEpsY(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/opencv/objdetect/QRCodeDetector;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;->setEpsY_0(JD)V

    return-void
.end method
