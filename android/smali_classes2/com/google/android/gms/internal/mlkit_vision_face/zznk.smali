.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zznk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznj;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zznj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzni;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznj;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznj;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzmp;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmp;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzmq;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
