.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zznc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V

    return-void
.end method
