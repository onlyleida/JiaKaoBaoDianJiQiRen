.class public final Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;
.super Lcn/mucang/sundial/android/location/LocationStrategy;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;",
        "Lcn/mucang/sundial/android/location/LocationStrategy;",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "locationListener",
        "Lkotlin/v;",
        "start",
        "(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V",
        "stop",
        "()V",
        "coldReboot",
        "",
        "mode",
        "setStartMode",
        "(I)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Lcn/mucang/sundial/android/location/InternalGps;",
        "internalGps",
        "Lcn/mucang/sundial/android/location/InternalGps;",
        "<init>",
        "(Landroid/content/Context;)V",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private internalGps:Lcn/mucang/sundial/android/location/InternalGps;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/location/LocationStrategy;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public coldReboot()V
    .locals 0

    return-void
.end method

.method public setStartMode(I)V
    .locals 0

    return-void
.end method

.method public start(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 2

    const-string v0, "locationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/location/InternalGps;

    iget-object v1, p0, Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/mucang/sundial/android/location/InternalGps;-><init>(Landroid/content/Context;Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;->internalGps:Lcn/mucang/sundial/android/location/InternalGps;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/location/InternalGps;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;->internalGps:Lcn/mucang/sundial/android/location/InternalGps;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/location/InternalGps;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/android/location/InternalGpsLocationStrategy;->internalGps:Lcn/mucang/sundial/android/location/InternalGps;

    return-void
.end method
