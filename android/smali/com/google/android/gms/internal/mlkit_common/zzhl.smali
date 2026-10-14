.class public final Lcom/google/android/gms/internal/mlkit_common/zzhl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zzio;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/mlkit_common/zzhl;)Lcom/google/android/gms/internal/mlkit_common/zzio;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzio;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_common/zzhl;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzio;)Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzio;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzhn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzhn;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzhl;Lcom/google/android/gms/internal/mlkit_common/zzhm;)V

    return-object v0
.end method
