.class public final Lcn/mucang/sundial/library/util/GlobalData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\tR$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/GlobalData;",
        "",
        "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "getStudentInfoModel",
        "()Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "",
        "personMode",
        "Lkotlin/v;",
        "incrementSignOutErrorCount",
        "(I)V",
        "getSignOutErrorCount",
        "(I)I",
        "clearSignOutErrorCount",
        "",
        "value",
        "getUseDebugCamera",
        "()Z",
        "setUseDebugCamera",
        "(Z)V",
        "useDebugCamera",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "coachSignOutErrorCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "studentSignOutErrorCount",
        "studentInfoModel",
        "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;",
        "Lcn/mucang/sundial/library/device/SundialDevice;",
        "device",
        "Lcn/mucang/sundial/library/device/SundialDevice;",
        "getDevice",
        "()Lcn/mucang/sundial/library/device/SundialDevice;",
        "setDevice",
        "(Lcn/mucang/sundial/library/device/SundialDevice;)V",
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


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

.field private static final coachSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static device:Lcn/mucang/sundial/library/device/SundialDevice;

.field private static studentInfoModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

.field private static final studentSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/GlobalData;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/GlobalData;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/mucang/sundial/library/util/GlobalData;->coachSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/mucang/sundial/library/util/GlobalData;->studentSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearSignOutErrorCount(I)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->coachSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->studentSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void
.end method

.method public final getDevice()Lcn/mucang/sundial/library/device/SundialDevice;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->device:Lcn/mucang/sundial/library/device/SundialDevice;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "device"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSignOutErrorCount(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->coachSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->studentSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1
.end method

.method public final getStudentInfoModel()Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->studentInfoModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    const-string v2, "Utils.getApp()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcn/mucang/sundial/library/util/GlobalData;->studentInfoModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->studentInfoModel:Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    return-object v0
.end method

.method public final getUseDebugCamera()Z
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "dbg"

    const-string v4, "debug_camera"

    .line 3
    invoke-static {v3, v4, v0}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final incrementSignOutErrorCount(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->coachSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->studentSignOutErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_0
    return-void
.end method

.method public final setDevice(Lcn/mucang/sundial/library/device/SundialDevice;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/sundial/library/util/GlobalData;->device:Lcn/mucang/sundial/library/device/SundialDevice;

    return-void
.end method

.method public final setUseDebugCamera(Z)V
    .locals 2

    const-string v0, "dbg"

    const-string v1, "debug_camera"

    .line 1
    invoke-static {v0, v1, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
