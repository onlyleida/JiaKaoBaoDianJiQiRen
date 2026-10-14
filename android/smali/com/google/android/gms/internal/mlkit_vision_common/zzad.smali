.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzag;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzag;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzag;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_common/zzad;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzah;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzag;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(ILcom/google/android/gms/internal/mlkit_vision_common/zzag;)V

    return-object v0
.end method
