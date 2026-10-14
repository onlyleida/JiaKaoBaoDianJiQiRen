.class public Lorg/opencv/dnn/DetectionModel;
.super Lorg/opencv/dnn/Model;
.source "SourceFile"


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/opencv/dnn/Model;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/opencv/dnn/DetectionModel;->DetectionModel_2(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/dnn/Model;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lorg/opencv/dnn/DetectionModel;->DetectionModel_1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/opencv/dnn/Model;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lorg/opencv/dnn/Net;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/DetectionModel;->DetectionModel_0(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/dnn/Model;-><init>(J)V

    return-void
.end method

.method private static native DetectionModel_0(J)J
.end method

.method private static native DetectionModel_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native DetectionModel_2(Ljava/lang/String;)J
.end method

.method public static __fromPtr__(J)Lorg/opencv/dnn/DetectionModel;
    .locals 1

    .line 1
    new-instance v0, Lorg/opencv/dnn/DetectionModel;

    invoke-direct {v0, p0, p1}, Lorg/opencv/dnn/DetectionModel;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native detect_0(JJJJJFF)V
.end method

.method private static native detect_1(JJJJJF)V
.end method

.method private static native detect_2(JJJJJ)V
.end method


# virtual methods
.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/MatOfRect;)V
    .locals 10

    .line 3
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/DetectionModel;->detect_2(JJJJJ)V

    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/MatOfRect;F)V
    .locals 12

    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lorg/opencv/dnn/Net;->nativeObj:J

    move-object v3, p1

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v5, p2

    iget-wide v5, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v7, p3

    iget-wide v7, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v9, p4

    iget-wide v9, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v11, p5

    invoke-static/range {v1 .. v11}, Lorg/opencv/dnn/DetectionModel;->detect_1(JJJJJF)V

    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/MatOfRect;FF)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lorg/opencv/dnn/Net;->nativeObj:J

    move-object v3, p1

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v5, p2

    iget-wide v5, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v7, p3

    iget-wide v7, v7, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v9, p4

    iget-wide v9, v9, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v1 .. v12}, Lorg/opencv/dnn/DetectionModel;->detect_0(JJJJJFF)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/opencv/dnn/Net;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/DetectionModel;->delete(J)V

    return-void
.end method
