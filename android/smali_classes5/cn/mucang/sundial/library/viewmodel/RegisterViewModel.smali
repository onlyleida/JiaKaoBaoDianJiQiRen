.class public final Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R(\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;",
        "Landroidx/lifecycle/a;",
        "Lkotlin/v;",
        "getDeviceInfo",
        "()V",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
        "deviceInfoData",
        "Landroidx/lifecycle/i0;",
        "getDeviceInfoData",
        "()Landroidx/lifecycle/i0;",
        "setDeviceInfoData",
        "(Landroidx/lifecycle/i0;)V",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
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
.field private deviceInfoData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->deviceInfoData:Landroidx/lifecycle/i0;

    return-void
.end method


# virtual methods
.method public final getDeviceInfo()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel$getDeviceInfo$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel$getDeviceInfo$1;-><init>(Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final getDeviceInfoData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->deviceInfoData:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final setDeviceInfoData(Landroidx/lifecycle/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->deviceInfoData:Landroidx/lifecycle/i0;

    return-void
.end method
