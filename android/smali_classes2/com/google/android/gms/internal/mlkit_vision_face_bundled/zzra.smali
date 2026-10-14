.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoz;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzra;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpa;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
