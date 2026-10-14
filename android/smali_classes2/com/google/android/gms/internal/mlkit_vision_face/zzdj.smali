.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

.field private zzd:Ljava/lang/Integer;

.field private zze:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;)Lcom/google/android/gms/internal/mlkit_vision_face/zzka;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zze:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zze:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;)V

    return-object v0
.end method
