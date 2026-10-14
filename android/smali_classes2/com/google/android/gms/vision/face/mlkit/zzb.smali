.class final Lcom/google/android/gms/vision/face/mlkit/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/vision/face/mlkit/zzd;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/vision/face/mlkit/zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/face/mlkit/zzd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmd;Ljava/util/List;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;->zzbP:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    sget-object p4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    sget-object p4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;->zzbN:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;->zzH:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;

    .line 3
    :goto_0
    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;->zzbO:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;)V

    return-void
.end method
