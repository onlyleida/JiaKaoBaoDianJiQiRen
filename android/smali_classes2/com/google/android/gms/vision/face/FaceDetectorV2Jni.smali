.class public Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzas;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;)V

    return-void
.end method

.method private native closeDetectorJni(J)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteArrayJni(J[B[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteArrayMultiPlanesJni(J[B[B[BIIIIII[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteBufferJni(JLjava/nio/ByteBuffer;[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native detectFacesImageByteBufferMultiPlanesJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[B)[B
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native initDetectorJni([BLandroid/content/res/AssetManager;)J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Landroid/content/res/AssetManager;)J
    .locals 2

    const-string v0, "FaceDetectorV2Jni"

    const-string v1, "initialize.start()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zzs()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->initDetectorJni([BLandroid/content/res/AssetManager;)J

    move-result-wide p1

    const-string v1, "initialize.end()"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method public final zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FaceDetectorV2Jni"

    const-string v1, "detectFacesImageByteArray.start()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zzs()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteArrayJni(J[B[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detectFacesImageByteArray failed to parse result: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string p1, "detectFacesImageByteArray.end()"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 16

    const-string v1, "FaceDetectorV2Jni"

    const-string v0, "detectFacesImageByteArrayMultiPlanes.start()"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zzs()[B

    move-result-object v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 3
    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteArrayMultiPlanesJni(J[B[B[BIIIIII[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v3, :cond_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "detectFacesImageByteArrayMultiPlanes failed to parse result: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "%s detectFacesImageByteArrayMultiPlanes.end()"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final zzd(JLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FaceDetectorV2Jni"

    const-string v1, "detectFacesImageByteBuffer.start()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zzs()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteBufferJni(JLjava/nio/ByteBuffer;[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "detectFacesImageByteBuffer failed to parse result: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string p1, "%s detectFacesImageByteBuffer.end()"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final zze(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 16

    const-string v1, "FaceDetectorV2Jni"

    const-string v0, "detectFacesImageByteBufferMultiPlanes.start()"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zzs()[B

    move-result-object v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 3
    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->detectFacesImageByteBufferMultiPlanesJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v3, :cond_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "detectFacesImageByteBufferMultiPlanes failed to parse result: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "detectFacesImageByteBuffer.end()"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final zzf(J)V
    .locals 2

    const-string v0, "FaceDetectorV2Jni"

    const-string v1, "closeDetector.start()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->closeDetectorJni(J)V

    const-string p1, "closeDetector.end()"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
