.class public final Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/location/DefaultLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/timer/location/LocationRebootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "cn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "Landroid/location/Location;",
        "location",
        "Lkotlin/v;",
        "onLocationChanged",
        "(Landroid/location/Location;)V",
        "",
        "time",
        "J",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
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
.field private time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;->time:J

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;->time:J

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;->time:J

    .line 3
    sget-object p1, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1$onLocationChanged$1;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1$onLocationChanged$1;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;->time:J

    return-void
.end method
