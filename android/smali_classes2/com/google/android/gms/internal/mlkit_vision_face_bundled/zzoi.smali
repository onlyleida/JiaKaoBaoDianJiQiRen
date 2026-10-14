.class public Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoi;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpt;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzh()V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoi;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoi;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    move-result-object v0

    return-object v0
.end method

.method protected final zzu()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    return-void
.end method
