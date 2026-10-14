.class public final Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/location/DefaultLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;->checkGPS()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1",
        "Lcn/mucang/sundial/android/location/DefaultLocationListener;",
        "Landroid/location/Location;",
        "location",
        "Lkotlin/v;",
        "onLocationChanged",
        "(Landroid/location/Location;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/android/location/AppLocation;->removeListener(Lcn/mucang/sundial/android/location/DefaultLocationListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0, p1}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$setLastLocation$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/location/Location;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getLastLocation$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "SatelliteCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getLastLocation$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "TimeToFirstFix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getGpsError$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 7
    new-instance v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;-><init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;Ljava/lang/String;JLandroid/location/Location;)V

    const-wide/16 v1, 0x7d0

    .line 8
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
