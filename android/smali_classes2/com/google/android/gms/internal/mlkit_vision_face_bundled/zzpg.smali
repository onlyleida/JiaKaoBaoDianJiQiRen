.class abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpb;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpd;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpg;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
