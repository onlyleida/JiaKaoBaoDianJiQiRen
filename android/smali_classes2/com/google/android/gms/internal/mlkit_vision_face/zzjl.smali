.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

.field private final zze:Ljava/lang/Boolean;

.field private final zzf:Ljava/lang/Float;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzl(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zze:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzm(Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzf:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zze:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zze:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzf:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzf:Ljava/lang/Float;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zze:Ljava/lang/Boolean;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzf:Ljava/lang/Float;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x4
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzji;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Float;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;->zzf:Ljava/lang/Float;

    return-object v0
.end method
