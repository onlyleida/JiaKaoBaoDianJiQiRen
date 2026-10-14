.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;

.field private final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field private final zzg:Lcom/google/android/gms/tasks/Task;

.field private final zzh:Lcom/google/android/gms/tasks/Task;

.field private final zzi:Ljava/lang/String;

.field private final zzj:I

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;->zza()Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzi:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmv;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzj:I

    return-void
.end method

.method static zza(Ljava/util/List;D)J
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static declared-synchronized zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/c;->a(Landroid/content/res/Configuration;)Landroidx/core/os/d;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face/zzbk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbk;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/d;->d()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v1, v3}, Landroidx/core/os/d;->c(I)Ljava/util/Locale;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->languageTagFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face/zzbk;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbk;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzj()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;JJ)Z
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    return p5

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk:Ljava/util/Map;

    .line 2
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    return p5

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final synthetic zzb()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p2

    move-wide v2, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk:Ljava/util/Map;

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;->zza()Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzb()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zzbn;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 12
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    const/16 p2, 0xa

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzj:I

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;->zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zze:Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;

    .line 17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;->zza(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Lcom/google/mlkit/vision/face/internal/zzf;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbs;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzca;->zzq()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzbs;->zzc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;-><init>()V

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v8, v5

    div-long/2addr v6, v8

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zza(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 8
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza(Ljava/util/List;D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    const-wide v5, 0x4052c00000000000L    # 75.0

    .line 9
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza(Ljava/util/List;D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zzf(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    .line 10
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza(Ljava/util/List;D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zzd(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    .line 11
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza(Ljava/util/List;D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    const-wide/16 v5, 0x0

    .line 12
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zza(Ljava/util/List;D)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;->zzg()Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    move-result-object v4

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/mlkit/vision/face/internal/zzf;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_face/zzjd;)Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    move-result-object v2

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/Object;JLcom/google/mlkit/vision/face/internal/zzf;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face/zzas;->zzr()Lcom/google/android/gms/internal/mlkit_vision_face/zzas;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzl:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzbs;

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzca;->zzo(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v5, 0x1e

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk(Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;JJ)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzk:Ljava/util/Map;

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p5, p4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Lcom/google/mlkit/vision/face/internal/zzf;[B)V

    .line 9
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzmu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;Lcom/google/android/gms/internal/mlkit_vision_face/zznc;Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;Ljava/lang/String;[B)V

    .line 2
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
