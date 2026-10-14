.class final Lcom/google/android/gms/vision/face/mlkit/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "optional-module-face"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlm;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzll;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlm;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {v2, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzln;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzln;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlm;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlm;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;->zzbN:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/vision/face/mlkit/zzc;

    invoke-direct {v1, p1, p3, v0}, Lcom/google/android/gms/vision/face/mlkit/zzc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;I)V

    iget-object p1, p0, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    .line 2
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzc(Lcom/google/android/gms/vision/face/mlkit/zzc;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;)V

    return-void
.end method
