.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;Lcom/google/android/gms/internal/mlkit_vision_face/zzdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zzb:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;->zzb:Ljava/lang/Integer;

    return-object v0
.end method
