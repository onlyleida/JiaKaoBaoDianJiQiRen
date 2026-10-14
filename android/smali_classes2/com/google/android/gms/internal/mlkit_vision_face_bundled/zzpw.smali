.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzb()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzc:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqr;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqr;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;->zzH()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpr;->zzs()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqg;->zzF(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqg;->zzE(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzon;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoj;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    .line 5
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzj([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zza:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    ushr-int/lit8 v6, p3, 0x3

    .line 6
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object p3

    .line 8
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 10
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object p3

    .line 11
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result p3

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zzc:Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzn(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    .line 16
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzj([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    iget v6, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zza:I

    and-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v8, v6, 0x3

    if-eq v8, v5, :cond_6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;

    iget-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    .line 18
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 19
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;

    move-result-object v6

    .line 20
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqe;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzol;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzok;

    iget-object v7, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zzc:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v7, v5, :cond_7

    .line 22
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zza([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zzc:Ljava/lang/Object;

    .line 23
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznl;

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    .line 24
    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzj([BILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    iget-object v6, p5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;

    .line 25
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzny;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzps;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    .line 26
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmy;->zzn(I[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmx;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    .line 27
    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqw;->zzh(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    .line 28
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzov;

    move-result-object p1

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzl()Z

    move-result p1

    return p1
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzod;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzrm;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzoc;->zze()Z

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzpw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzqv;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznu;)V

    return-void
.end method
