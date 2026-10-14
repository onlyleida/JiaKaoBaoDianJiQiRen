.class final Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->start()V
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
.field public static final INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;

    invoke-direct {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager$start$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->INSTANCE:Lcn/mucang/sundial/android/timer/location/LocationRebootManager;

    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LocationRebootManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$setThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;Landroid/os/HandlerThread;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getThread$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$setHandler$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;Landroid/os/Handler;)V

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getHandler$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_0
    invoke-static {v0}, Lcn/mucang/sundial/android/timer/location/LocationRebootManager;->access$getLocationListener$p(Lcn/mucang/sundial/android/timer/location/LocationRebootManager;)Lcn/mucang/sundial/android/timer/location/LocationRebootManager$locationListener$1;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/location/AppLocation;->addListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    return-void
.end method
