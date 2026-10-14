.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;

.field final zzb:I

.field final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

.field final zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;

    const p1, 0xc0b2142

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzd:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzb:I

    const/4 p1, 0x0

    return p1
.end method

.method public final zza()I
    .locals 1

    const v0, 0xc0b2142

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
