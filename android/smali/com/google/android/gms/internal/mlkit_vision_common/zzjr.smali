.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
