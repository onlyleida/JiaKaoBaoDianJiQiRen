.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->onLocationChanged(Landroid/location/Location;)V
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


# instance fields
.field final synthetic $count:Ljava/lang/String;

.field final synthetic $first:J

.field final synthetic $location:Landroid/location/Location;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;Ljava/lang/String;JLandroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$count:Ljava/lang/String;

    iput-wide p3, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$first:J

    iput-object p5, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$count:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u6b63\u5e38"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u536b\u661f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$count:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$first:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u542f\u52a8\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7ecf\u7eac\u5ea6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->$location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->ckGps:Landroid/widget/TextView;

    const-string v3, "viewBinding.ckGps"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1$onLocationChanged$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;

    iget-object v3, v3, Lcn/mucang/sundial/library/activity/SelfCheckActivity$checkGPS$1;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {v3}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getViewBinding$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->load1:Landroid/widget/LinearLayout;

    const-string v4, "viewBinding.load1"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v1}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$normal(Lcn/mucang/sundial/library/activity/SelfCheckActivity;Landroid/widget/TextView;Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method
