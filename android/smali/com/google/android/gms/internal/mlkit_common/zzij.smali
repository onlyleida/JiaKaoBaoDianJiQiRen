.class public final Lcom/google/android/gms/internal/mlkit_common/zzij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zziv;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lcom/google/android/gms/internal/mlkit_common/zzie;

.field private zzd:Ljava/lang/Long;

.field private zze:Lcom/google/android/gms/internal/mlkit_common/zzik;

.field private zzf:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzij;)Lcom/google/android/gms/internal/mlkit_common/zzie;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzie;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/mlkit_common/zzij;)Lcom/google/android/gms/internal/mlkit_common/zzik;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zze:Lcom/google/android/gms/internal/mlkit_common/zzik;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/mlkit_common/zzij;)Lcom/google/android/gms/internal/mlkit_common/zziv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza:Lcom/google/android/gms/internal/mlkit_common/zziv;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/mlkit_common/zzij;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzf:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/mlkit_common/zzij;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzd:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/mlkit_common/zzij;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzb:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzf:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_common/zzik;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zze:Lcom/google/android/gms/internal/mlkit_common/zzik;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_common/zzie;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzie;

    return-object p0
.end method

.method public final zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzd:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_common/zziv;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zza:Lcom/google/android/gms/internal/mlkit_common/zziv;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_common/zzij;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzij;->zzb:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_common/zzim;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzim;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzij;Lcom/google/android/gms/internal/mlkit_common/zzil;)V

    return-object v0
.end method
