.class public final Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;",
        "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/v;",
        "makeSelfLauncher",
        "(Landroid/content/Context;)V",
        "Landroid/app/Activity;",
        "activity",
        "onFirstActivityCreated",
        "(Landroid/app/Activity;)V",
        "onActivityResumed",
        "onAllActivityDestroyed",
        "<init>",
        "()V",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$Companion;

.field private static shouldResumeLauncher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->Companion:Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getShouldResumeLauncher$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->shouldResumeLauncher:Z

    return v0
.end method

.method public static final synthetic access$setShouldResumeLauncher$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->shouldResumeLauncher:Z

    return-void
.end method

.method private final makeSelfLauncher(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/activity/BaseActivity;->Companion:Lcn/mucang/sundial/library/activity/BaseActivity$Companion;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/activity/BaseActivity$Companion;->setCanExit(Z)V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/device/SundialDevice;->deviceHelper(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/DeviceHelper;->isInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/DeviceHelper;->makeSelfLauncher()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1;

    invoke-direct {v1, v0}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1;-><init>(Lcn/mucang/sundial/library/device/DeviceHelper;)V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/device/DeviceHelper;->init(Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;)V

    .line 6
    new-instance v0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$2;

    invoke-direct {v0}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_0
    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->shouldResumeLauncher:Z

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener$DefaultImpls;->onActivityResumed(Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;Landroid/app/Activity;)V

    .line 2
    sget-boolean v0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->shouldResumeLauncher:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->makeSelfLauncher(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAllActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "activity.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/device/SundialDevice;->deviceHelper(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/device/DeviceHelper;->free()V

    return-void
.end method

.method public onFirstActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->makeSelfLauncher(Landroid/content/Context;)V

    return-void
.end method
