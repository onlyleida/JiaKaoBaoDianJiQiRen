.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zznl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_vision_face/zznl;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zznl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
