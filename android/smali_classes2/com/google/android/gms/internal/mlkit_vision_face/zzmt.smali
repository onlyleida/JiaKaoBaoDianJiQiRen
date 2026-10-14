.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/mlkit/vision/face/internal/zzf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/Object;JLcom/google/mlkit/vision/face/internal/zzf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzc:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzd:J

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zze:Lcom/google/mlkit/vision/face/internal/zzf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzc:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zzd:J

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;->zze:Lcom/google/mlkit/vision/face/internal/zzf;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/Object;JLcom/google/mlkit/vision/face/internal/zzf;)V

    return-void
.end method
