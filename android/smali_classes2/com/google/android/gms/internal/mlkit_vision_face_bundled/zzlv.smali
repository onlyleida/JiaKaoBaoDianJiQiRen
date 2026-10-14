.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

.field private final zzc:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzc:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;I)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzc:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzh()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzje;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzje;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkp;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkp;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zzc(IZ)[B
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkp;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzh()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzje;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzhk;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzh()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzje;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzhk;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzci;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzci;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 11
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    return-object p0
.end method
