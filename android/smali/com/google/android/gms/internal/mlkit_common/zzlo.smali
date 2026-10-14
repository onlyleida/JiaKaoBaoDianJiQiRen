.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzlo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_common/zzln;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzla;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzla;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzla;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzln;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzln;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzln;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzln;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzie;->zza:Lcom/google/android/gms/internal/mlkit_common/zzie;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzie;)Lcom/google/android/gms/internal/mlkit_common/zzln;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzik;->zza:Lcom/google/android/gms/internal/mlkit_common/zzik;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zza(Lcom/google/android/gms/internal/mlkit_common/zzik;)Lcom/google/android/gms/internal/mlkit_common/zzln;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzln;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzln;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/mlkit/common/sdkinternal/ModelType;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/mlkit_common/zzie;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zzik;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method

.method public abstract zzg()Z
.end method
