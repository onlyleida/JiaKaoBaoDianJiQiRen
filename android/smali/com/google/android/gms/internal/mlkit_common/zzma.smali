.class public final Lcom/google/android/gms/internal/mlkit_common/zzma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_common/zzma;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_common/zzma;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzma;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzma;->zza:Lcom/google/android/gms/internal/mlkit_common/zzma;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzma;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzma;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzma;->zza:Lcom/google/android/gms/internal/mlkit_common/zzma;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzma;->zza:Lcom/google/android/gms/internal/mlkit_common/zzma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static zzb()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzlz;->zza()V

    return-void
.end method
