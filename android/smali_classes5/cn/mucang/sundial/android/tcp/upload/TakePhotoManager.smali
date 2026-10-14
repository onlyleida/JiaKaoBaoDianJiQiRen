.class public Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager$AutoTakePhotoManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePhotoManager"


# instance fields
.field private final DEFAULT_TAKE_PHOTO_PERIOD:J

.field private volatile inStudentInfoActivity:Z

.field private mSchedulePeriod:J

.field private volatile takingPhoto:Z

.field private timer:Lcn/mucang/sundial/android/timer/SundialTimer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->DEFAULT_TAKE_PHOTO_PERIOD:J

    .line 4
    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->mSchedulePeriod:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->takingPhoto:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->inStudentInfoActivity:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->studentTrainingTakePhoto()V

    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager$AutoTakePhotoManagerHolder;->access$100()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized isInStudentInfoActivity()Z
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->inStudentInfoActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isTakingPhoto()Z
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->takingPhoto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInStudentInfoActivity(Z)V
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v1

    iput-boolean p0, v1, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->inStudentInfoActivity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTakingPhoto(Z)V
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v1

    iput-boolean p0, v1, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->takingPhoto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private studentTrainingTakePhoto()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;

    invoke-direct {v0}, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoWithActivityEvent;-><init>()V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;

    invoke-direct {v0}, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;-><init>()V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->a()V

    return-void
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->studentTrainingTakePhoto()V

    goto :goto_0

    :cond_0
    const-string p1, "\u6b63\u5728\u62cd\u7167\u5ef6\u8fdf30\u79d2\u518d\u62cd\u4e00\u6b21"

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcn/mucang/sundial/android/tcp/upload/a;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/android/tcp/upload/a;-><init>(Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;)V

    const-wide/16 v0, 0x7530

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public start(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->stop()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-nez p1, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceConfig()Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getTakePhotoInterval()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/DeviceConfig;->getTakePhotoInterval()I

    move-result p1

    const v0, 0xea60

    mul-int p1, p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->mSchedulePeriod:J

    .line 6
    :cond_1
    new-instance p1, Lcn/mucang/sundial/android/timer/SundialTimer;

    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->mSchedulePeriod:J

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, p0}, Lcn/mucang/sundial/android/timer/SundialTimer;-><init>(JZLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/timer/SundialTimer;->start()V

    const-string p1, "timer start..."

    .line 8
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    const-string v0, "timer stop..."

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
