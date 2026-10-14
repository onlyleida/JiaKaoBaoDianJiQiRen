.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;)Lcom/google/android/gms/internal/mlkit_vision_common/zzju;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;I)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzg;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzk()Ljava/lang/String;

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

.method public final zzb(IZ)[B
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

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

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;->zzm()Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zze(Lcom/google/android/gms/internal/mlkit_vision_common/zzin;)Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;->zza:Lcom/google/firebase/encoders/config/Configurator;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzam;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zza(Ljava/lang/Object;)[B

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

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;)Lcom/google/android/gms/internal/mlkit_vision_common/zzju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;)Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_common/zzil;)Lcom/google/android/gms/internal/mlkit_vision_common/zzju;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    return-object p0
.end method
