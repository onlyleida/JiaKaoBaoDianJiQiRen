.class public Lcom/google/mlkit/vision/face/FaceLandmark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/face/FaceLandmark$LandmarkType;
    }
.end annotation


# static fields
.field public static final LEFT_CHEEK:I = 0x1

.field public static final LEFT_EAR:I = 0x3

.field public static final LEFT_EYE:I = 0x4

.field public static final MOUTH_BOTTOM:I = 0x0

.field public static final MOUTH_LEFT:I = 0x5

.field public static final MOUTH_RIGHT:I = 0xb

.field public static final NOSE_BASE:I = 0x6

.field public static final RIGHT_CHEEK:I = 0x7

.field public static final RIGHT_EAR:I = 0x9

.field public static final RIGHT_EYE:I = 0xa


# instance fields
.field private final zza:I

.field private final zzb:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(ILandroid/graphics/PointF;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/mlkit/vision/face/FaceLandmark$LandmarkType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zza:I

    iput-object p2, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zzb:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getLandmarkType()I
    .locals 1
    .annotation build Lcom/google/mlkit/vision/face/FaceLandmark$LandmarkType;
    .end annotation

    iget v0, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zza:I

    return v0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zzb:Landroid/graphics/PointF;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FaceLandmark"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    move-result-object v0

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zza:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    iget-object v1, p0, Lcom/google/mlkit/vision/face/FaceLandmark;->zzb:Landroid/graphics/PointF;

    const-string v2, "position"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzv;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
