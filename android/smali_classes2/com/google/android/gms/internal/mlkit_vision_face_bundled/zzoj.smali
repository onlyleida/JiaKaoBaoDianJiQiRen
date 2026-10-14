.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpt;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    return-void
.end method


# virtual methods
.method final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzb:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    move-result-object v1

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    if-eq v4, v5, :cond_1

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    throw v2

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
