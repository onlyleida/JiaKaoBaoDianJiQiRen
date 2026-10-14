.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzl:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzi:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlp;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlp;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzh:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzj:I

    return-void
.end method

.method private static declared-synchronized zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;
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

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbi;-><init>()V

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

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbi;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbi;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbi;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final synthetic zza()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzb()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 12
    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    const/16 p2, 0xa

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzj:I

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzkn;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;

    .line 17
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlr;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/vision/face/mlkit/zzc;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzk:Ljava/util/Map;

    .line 2
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzk:Ljava/util/Map;

    .line 4
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzk:Ljava/util/Map;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;

    iget-object v1, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;

    iget p1, p1, Lcom/google/android/gms/vision/face/mlkit/zzc;->zzc:I

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;-><init>()V

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziz;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziz;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zzb()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 10
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzil;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    .line 12
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zzd()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 13
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    goto :goto_2

    .line 14
    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzin;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    .line 15
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zzc()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 16
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    goto :goto_3

    .line 17
    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzim;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    .line 18
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zze()I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 19
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    goto :goto_4

    .line 20
    :cond_5
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzio;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    .line 21
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zza()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zze(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzmh;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzc(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzik;->zzk()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;

    move-result-object v0

    .line 23
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zziq;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;

    .line 24
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzja;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzih;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzij;

    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzij;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;

    .line 26
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjc;I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    .line 29
    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;->zzi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v7, p1

    .line 30
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzls;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzlv;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzjb;Ljava/lang/String;[B)V

    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
