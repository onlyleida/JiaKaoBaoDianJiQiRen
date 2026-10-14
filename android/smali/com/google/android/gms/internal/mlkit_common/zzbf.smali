.class public final Lcom/google/android/gms/internal/mlkit_common/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzbi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzbi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbf;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzbj;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbe;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbe;-><init>(ILcom/google/android/gms/internal/mlkit_common/zzbi;)V

    return-object v0
.end method
