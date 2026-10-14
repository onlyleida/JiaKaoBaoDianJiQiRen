.class public abstract Lcn/mucang/sundial/library/device/SundialDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/device/SundialDevice$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ5\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/sundial/library/device/SundialDevice;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "locationStrategy",
        "(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;",
        "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;",
        "dataStrategy",
        "()Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "cameraResult",
        "Landroid/view/TextureView;",
        "textureView",
        "Landroid/widget/FrameLayout;",
        "frameLayout",
        "",
        "needPreview",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "cameraUtil",
        "(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;",
        "Lcn/mucang/sundial/library/device/DeviceHelper;",
        "deviceHelper",
        "(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;",
        "Lcn/mucang/sundial/library/device/IcReader;",
        "icReader",
        "(Landroid/content/Context;)Lcn/mucang/sundial/library/device/IcReader;",
        "allowGotoBackground",
        "()Z",
        "Lkotlin/v;",
        "gotoBackground",
        "(Landroid/content/Context;)V",
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
.field public static final Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/device/SundialDevice$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/device/SundialDevice;->Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCameraUtil(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;
    .locals 6

    sget-object v0, Lcn/mucang/sundial/library/device/SundialDevice;->Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/sundial/library/device/SundialDevice$Companion;->createCameraUtil(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowGotoBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract cameraUtil(Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;
.end method

.method public abstract dataStrategy()Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;
.end method

.method public deviceHelper(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/device/NoopDeviceHelper;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/library/device/NoopDeviceHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public gotoBackground(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u8ba1\u65f6\u5e94\u7528\u9000\u5230\u540e\u53f0"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method

.method public icReader(Landroid/content/Context;)Lcn/mucang/sundial/library/device/IcReader;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/sundial/library/device/NoopIcReader;

    invoke-direct {p1}, Lcn/mucang/sundial/library/device/NoopIcReader;-><init>()V

    return-object p1
.end method

.method public abstract locationStrategy(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;
.end method
