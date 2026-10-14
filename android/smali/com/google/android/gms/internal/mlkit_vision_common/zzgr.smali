.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/Long;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

.field private zzd:Ljava/lang/Integer;

.field private zze:Ljava/lang/Integer;

.field private zzf:Ljava/lang/Integer;

.field private zzg:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzf:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzg:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zza:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zza:Ljava/lang/Long;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    return-object p0
.end method

.method public final zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzf:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzg:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;Lcom/google/android/gms/internal/mlkit_vision_common/zzgt;)V

    return-object v0
.end method
