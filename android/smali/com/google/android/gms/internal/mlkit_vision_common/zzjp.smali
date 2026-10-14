.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzju;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;Lcom/google/android/gms/internal/mlkit_vision_common/zzju;Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzju;Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;Ljava/lang/String;)V

    return-void
.end method
