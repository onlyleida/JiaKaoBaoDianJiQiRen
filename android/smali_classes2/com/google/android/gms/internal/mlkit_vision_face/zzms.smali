.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_face/zzms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

.field public final synthetic zzc:Lcom/google/mlkit/vision/face/internal/zzf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Lcom/google/mlkit/vision/face/internal/zzf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zzc:Lcom/google/mlkit/vision/face/internal/zzf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;->zzc:Lcom/google/mlkit/vision/face/internal/zzf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Lcom/google/mlkit/vision/face/internal/zzf;)V

    return-void
.end method
