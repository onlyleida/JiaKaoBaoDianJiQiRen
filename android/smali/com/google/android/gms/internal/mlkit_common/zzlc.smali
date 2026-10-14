.class final Lcom/google/android/gms/internal/mlkit_common/zzlc;
.super Lcom/google/android/gms/internal/mlkit_common/zzlo;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzie;Ljava/lang/String;ZZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zzik;ILcom/google/android/gms/internal/mlkit_common/zzlb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzlo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzd:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzg:I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzlo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzlo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzie;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzc:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zzg()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzd:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zzf()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzik;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzg:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzlo;->zza()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzc:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzd:Z

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzg:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzd:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzg:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xbb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "RemoteModelLoggingOptions{errorCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tfliteSchemaVersion="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogRoughDownloadTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldLogExactDownloadTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", modelType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", downloadStatus="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failureStatusCode="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzg:I

    return v0
.end method

.method public final zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zze:Lcom/google/mlkit/common/sdkinternal/ModelType;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzik;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzd:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzlc;->zzc:Z

    return v0
.end method
