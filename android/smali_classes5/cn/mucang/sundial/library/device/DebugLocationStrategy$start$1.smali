.class final Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/device/DebugLocationStrategy;->start(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
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
        "\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Lkotlin/v;",
        "onTick",
        "(J)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $locationListener:Lcn/mucang/sundial/android/location/DefaultLocationListener;

.field final synthetic this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/device/DebugLocationStrategy;Lcn/mucang/sundial/android/location/DefaultLocationListener;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    iput-object p2, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->$locationListener:Lcn/mucang/sundial/android/location/DefaultLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTick(J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->$locationListener:Lcn/mucang/sundial/android/location/DefaultLocationListener;

    iget-object p2, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-static {p2}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$getLocations$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-static {v0}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$getLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    invoke-interface {p1, p2}, Lcn/mucang/sundial/android/location/DefaultLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-static {p1}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$getLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$setLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-static {p1}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$getLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)I

    move-result p1

    iget-object p2, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-static {p2}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$getLocations$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/device/DebugLocationStrategy$start$1;->this$0:Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;->access$setLocationIndex$p(Lcn/mucang/sundial/library/device/DebugLocationStrategy;I)V

    :cond_0
    return-void
.end method
