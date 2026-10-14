.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqx;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zza()I

    move-result p1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzb()I

    move-result p1

    return p1
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    return-object p1
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final zzg(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzf()V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V

    return-void
.end method

.method final synthetic zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V

    return-void
.end method
