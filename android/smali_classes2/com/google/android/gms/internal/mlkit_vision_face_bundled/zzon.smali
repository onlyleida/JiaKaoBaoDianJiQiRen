.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzd:I

    return-void
.end method

.method protected static zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzos;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqc;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqc;

    move-result-object v0

    return-object v0
.end method

.method static varargs zzB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 10
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zzE(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzj(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method

.method private static zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    .line 5
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)V

    .line 6
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzf(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zza:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzg()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p0

    .line 12
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p2

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p1

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p1
.end method

.method public static zzx(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;ZLjava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    const/4 v4, 0x0

    const v5, 0xc0b2142

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrl;ZZ)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;Ljava/lang/Class;)V

    return-object p2
.end method

.method static zzy(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrf;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static zzz(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzv()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqu;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmt;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpu;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzH()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    return-object v0
.end method

.method public final synthetic zzI()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    return-object v0
.end method

.method public final zzJ(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznt;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V

    return-void
.end method

.method protected abstract zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzd:I

    return v0
.end method

.method final zzr(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzd:I

    return-void
.end method

.method public final synthetic zzt()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    return-object v0
.end method

.method public final zzu()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzd:I

    :cond_0
    return v0
.end method

.method public final zzv()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzE(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;Z)Z

    move-result v0

    return v0
.end method

.method protected final zzw()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    return-object v0
.end method
