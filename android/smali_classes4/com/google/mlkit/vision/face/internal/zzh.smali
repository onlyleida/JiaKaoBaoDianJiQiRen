.class public final Lcom/google/mlkit/vision/face/internal/zzh;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "SourceFile"


# static fields
.field static final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face/zznb;

.field private final zzf:Lcom/google/mlkit/vision/face/internal/zzb;

.field private zzg:Z

.field private final zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/mlkit/vision/face/FaceDetectorOptions;Lcom/google/mlkit/vision/face/internal/zzb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "FaceDetectorOptions can not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    iput-object p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zznb;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_face/zznb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zznb;

    return-void
.end method

.method static zzd(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/Face;->zzc(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;JLcom/google/mlkit/vision/common/InputImage;II)V
    .locals 27

    move-object/from16 v9, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v18, v0, p2

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzg;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/face/internal/zzg;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;JLcom/google/android/gms/internal/mlkit_vision_face/zzka;IILcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;-><init>()V

    move-object/from16 v1, p1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    sget-object v2, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzd(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    .line 6
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zze(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 7
    invoke-static {v2}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    move-result-object v13

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzf;

    invoke-direct {v0, v9}, Lcom/google/mlkit/vision/face/internal/zzf;-><init>(Lcom/google/mlkit/vision/face/internal/zzh;)V

    iget-object v11, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;->zzbd:Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;

    const/16 v17, 0x0

    move-object v10, v3

    move-wide/from16 v14, v18

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/Object;JLcom/google/mlkit/vision/face/internal/zzf;[B)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    iget-boolean v0, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    sub-long v23, v25, v18

    iget-object v2, v9, Lcom/google/mlkit/vision/face/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zznb;

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/16 v0, 0x5eef

    const/16 v21, 0x5eef

    goto :goto_0

    :cond_0
    const/16 v0, 0x5ef0

    const/16 v21, 0x5ef0

    .line 11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzka;->zza()I

    move-result v22

    move-object/from16 v20, v2

    .line 12
    invoke-virtual/range {v20 .. v26}, Lcom/google/android/gms/internal/mlkit_vision_face/zznb;->zzc(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    invoke-interface {v0}, Lcom/google/mlkit/vision/face/internal/zzb;->zzb()V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/face/internal/zzh;->zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzc(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzh:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 2
    invoke-virtual {v0, v9}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v8, Lcom/google/mlkit/vision/face/internal/zzh;->zzf:Lcom/google/mlkit/vision/face/internal/zzb;

    .line 3
    invoke-interface {v0, v9}, Lcom/google/mlkit/vision/face/internal/zzb;->zza(Lcom/google/mlkit/vision/common/InputImage;)Landroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "No detector is enabled"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_1
    move-object v9, v2

    move-wide/from16 v18, v10

    goto/16 :goto_5

    :cond_2
    if-nez v0, :cond_3

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 9
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/face/Face;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/face/Face;

    .line 12
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    .line 14
    invoke-virtual {v7}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v14

    .line 15
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 16
    iget v15, v13, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->right:I

    .line 17
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v16, v3

    iget v3, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v12, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 18
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v5

    iget v5, v14, Landroid/graphics/Rect;->top:I

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v5

    mul-int v12, v12, v3

    move-wide/from16 v18, v10

    int-to-double v9, v12

    .line 19
    :try_start_2
    iget v3, v13, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    iget v11, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v11

    mul-int v3, v3, v5

    int-to-double v11, v3

    .line 20
    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    iget v13, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v13

    mul-int v3, v3, v5

    int-to-double v13, v3

    add-double/2addr v11, v13

    sub-double/2addr v11, v9

    div-double/2addr v9, v11

    const-wide v11, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v9, v11

    if-lez v3, :cond_5

    .line 21
    invoke-virtual {v4}, Lcom/google/mlkit/vision/face/Face;->zza()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/mlkit/vision/face/Face;->zzb(Landroid/util/SparseArray;)V

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-wide/from16 v18, v10

    .line 22
    :cond_5
    :goto_4
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-wide/from16 v10, v18

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v18, v10

    if-nez v6, :cond_7

    .line 23
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v9, p1

    move-object/from16 v3, v16

    move-wide/from16 v10, v18

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v18, v10

    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    .line 25
    :goto_5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzka;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    if-nez v0, :cond_9

    const/4 v6, 0x0

    goto :goto_6

    .line 26
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    :goto_6
    if-nez v1, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    .line 27
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    :goto_7
    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;JLcom/google/mlkit/vision/common/InputImage;II)V

    sget-object v0, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-wide/from16 v18, v10

    .line 30
    :goto_8
    :try_start_3
    invoke-virtual {v0}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_b

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzka;->zzk:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    goto :goto_9

    .line 32
    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzka;->zzV:Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    :goto_9
    move-object v2, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v18

    move-object/from16 v5, p1

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/google/mlkit/vision/face/internal/zzh;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;JLcom/google/mlkit/vision/common/InputImage;II)V

    .line 34
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zze(JLcom/google/android/gms/internal/mlkit_vision_face/zzka;IILcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzka;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;->zzf()Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    iget-object p1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzc:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 7
    invoke-static {p1}, Lcom/google/mlkit/vision/face/internal/zzj;->zza(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    .line 9
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzh(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    sget-object p1, Lcom/google/mlkit/vision/face/internal/zzh;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 10
    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    .line 11
    invoke-virtual {p1, p6}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;-><init>()V

    const/4 p4, -0x1

    if-eq p2, p4, :cond_4

    const/16 p4, 0x23

    if-eq p2, p4, :cond_3

    const p4, 0x32315659

    if-eq p2, p4, :cond_2

    const/16 p4, 0x10

    if-eq p2, p4, :cond_1

    const/16 p4, 0x11

    if-eq p2, p4, :cond_0

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    goto :goto_0

    .line 13
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    goto :goto_0

    .line 14
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    goto :goto_0

    .line 15
    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    goto :goto_0

    .line 16
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    goto :goto_0

    .line 17
    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    .line 18
    :goto_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;)Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;-><init>()V

    iget-boolean p3, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    if-eqz p3, :cond_5

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    :goto_1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;ILcom/google/android/gms/internal/mlkit_vision_face/zzjd;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;-><init>()V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/face/internal/zzh;->zzg:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    .line 4
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;)Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;->zze()Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;)Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    move-result-object p1

    return-object p1
.end method
