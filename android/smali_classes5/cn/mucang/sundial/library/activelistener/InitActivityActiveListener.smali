.class public final Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;",
        "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/v;",
        "onActivityResumed",
        "(Landroid/app/Activity;)V",
        "onAllActivityDestroyed",
        "",
        "init",
        "Z",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private init:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;->init:Z

    .line 5
    sget-object v0, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    sget-object v1, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcn/mucang/sundial/library/device/SundialDevice;->locationStrategy(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/location/AppLocation;->setLocationStrategy(Lcn/mucang/sundial/android/location/LocationStrategy;)V

    .line 6
    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/SundialDevice;->dataStrategy()Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->start(Landroid/content/Context;Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;)V

    .line 7
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/LoginUtil;->registerLoginLogoutTimeoutCallback()V

    return-void
.end method

.method public onAllActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;->init:Z

    if-eqz p1, :cond_0

    const-string p1, "----------------onAllActivityDestroyed---------------"

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;->init:Z

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->destroy()V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->stop()V

    :cond_0
    return-void
.end method

.method public onFirstActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener$DefaultImpls;->onFirstActivityCreated(Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;Landroid/app/Activity;)V

    return-void
.end method
