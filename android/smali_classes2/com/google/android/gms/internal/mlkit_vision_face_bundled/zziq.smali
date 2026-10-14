.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

.field private final zze:Ljava/lang/Boolean;

.field private final zzf:Ljava/lang/Float;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzl(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zze:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzf:Ljava/lang/Float;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zze:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zze:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzf:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzf:Ljava/lang/Float;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zze:Ljava/lang/Boolean;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzf:Ljava/lang/Float;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x4
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Float;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;->zzf:Ljava/lang/Float;

    return-object v0
.end method
