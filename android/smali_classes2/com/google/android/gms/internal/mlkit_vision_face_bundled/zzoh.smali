.class public Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzms;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    return-object p0
.end method

.method public final zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    return-object v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzu()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V

    return-object p0
.end method

.method public final zzq()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzv()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)V

    .line 4
    throw v1
.end method

.method public zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzf(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    return-object v0
.end method

.method public bridge synthetic zzs()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzr()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzt()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    return-object v0
.end method

.method protected zzu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    return-void
.end method

.method public final zzv()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzE(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Z)Z

    move-result v0

    return v0
.end method
