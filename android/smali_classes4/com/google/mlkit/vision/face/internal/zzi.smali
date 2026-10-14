.class public final synthetic Lcom/google/mlkit/vision/face/internal/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_face/zzka;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zza:Z

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face/zznc;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zza:Z

    iget-object v1, p0, Lcom/google/mlkit/vision/face/internal/zzi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;-><init>()V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkr;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;

    move-result-object v0

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzkt;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    move-result-object v0

    return-object v0
.end method
