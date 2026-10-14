.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

.field private zzd:Ljava/lang/Integer;

.field private zze:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zze:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;

    return-object p0
.end method

.method public final zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzko;Lcom/google/android/gms/internal/mlkit_vision_face/zzkp;)V

    return-object v0
.end method
