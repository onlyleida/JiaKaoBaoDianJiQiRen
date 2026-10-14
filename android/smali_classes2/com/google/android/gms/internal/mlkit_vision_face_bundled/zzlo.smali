.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Ljava/lang/String;)V

    return-void
.end method
