.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

.field private static volatile zzb:Z = false

.field private static volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;


# instance fields
.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzd:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;->zzd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    const v3, 0xc0b2142

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznx;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
