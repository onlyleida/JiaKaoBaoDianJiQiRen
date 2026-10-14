.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

.field final zzb:Ljava/lang/Object;

.field final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

.field final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;-><init>()V

    if-eqz p1, :cond_2

    iget-object p5, p4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;->zzk:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
