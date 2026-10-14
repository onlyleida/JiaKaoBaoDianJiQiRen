.class public final Lcom/google/mlkit/vision/face/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzj;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;-><init>()V

    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzd()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzji;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 6
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzb()I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    goto :goto_1

    .line 9
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    .line 10
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 11
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zze()I

    move-result v1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    goto :goto_2

    .line 13
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    goto :goto_2

    .line 14
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    .line 15
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 16
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzc()I

    move-result v1

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    goto :goto_3

    .line 18
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    goto :goto_3

    .line 19
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    .line 20
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 21
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zzg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzc(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 22
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;->zza()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zze(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;->zzk()Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    move-result-object p0

    return-object p0
.end method

.method public static zzb()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/face/internal/zzj;->zzd()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "play-services-mlkit-face-detection"

    return-object v0

    :cond_0
    const-string v0, "face-detection"

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;ZLcom/google/android/gms/internal/mlkit_vision_face/zzka;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzi;

    invoke-direct {v0, p1, p2}, Lcom/google/mlkit/vision/face/internal/zzi;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_face/zzka;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;)V

    return-void
.end method

.method static zzd()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzj;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/mlkit/vision/face/internal/zza;->zzc(Landroid/content/Context;)Z

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v1
.end method
