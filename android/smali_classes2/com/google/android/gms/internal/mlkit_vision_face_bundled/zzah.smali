.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;


# instance fields
.field private zze:I

.field private zzf:F

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:Z

.field private zzl:F

.field private zzm:F

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzf:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzi:I

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzm:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzw()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzf:F

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzk:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzn:Z

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzo:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzp:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzq:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzj:Z

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzr;)V

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzal;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzor;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzor;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzap;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzor;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u100c\u0001\u0003\u100c\u0002\u0004\u100c\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1001\u0006\u0008\u1001\u0007\t\u1007\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzw;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public final zzl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzam;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method
