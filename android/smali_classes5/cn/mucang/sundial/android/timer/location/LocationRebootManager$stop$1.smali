.class final Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;

    invoke-direct {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$stop$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getHandler$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$setThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;Landroid/os/HandlerThread;)V

    .line 5
    :cond_1
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getLocationListener$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/location/AppLocation;->removeListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    return-void
.end method
