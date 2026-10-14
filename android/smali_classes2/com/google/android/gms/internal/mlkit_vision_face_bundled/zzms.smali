.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;->zzl()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzl()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
.end method

.method protected abstract zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
.end method

.method public final bridge synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpt;->zzt()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;->zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
