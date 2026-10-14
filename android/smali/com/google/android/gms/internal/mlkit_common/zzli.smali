.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_common/zzld;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzlo;

.field public final synthetic zzd:Lcom/google/mlkit/common/model/RemoteModel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzlm;Lcom/google/android/gms/internal/mlkit_common/zzld;Lcom/google/android/gms/internal/mlkit_common/zzlo;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzld;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzlo;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzld;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzlo;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzlm;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzld;Lcom/google/android/gms/internal/mlkit_common/zzlo;Lcom/google/mlkit/common/model/RemoteModel;)V

    return-void
.end method
