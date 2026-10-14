.class Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/android/timer/location/LocationReportManager;->report()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/timer/location/LocationReportManager;

.field final synthetic val$entity:Lcn/mucang/sundial/android/db/entity/Gnss;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/timer/location/LocationReportManager;Lcn/mucang/sundial/android/db/entity/Gnss;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;->this$0:Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    iput-object p2, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;->val$entity:Lcn/mucang/sundial/android/db/entity/Gnss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u4f4d\u7f6e\u6c47\u62a5["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "\u6210\u529f]"

    goto :goto_0

    :cond_0
    const-string v1, "\u5931\u8d25]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationReportManager"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;->val$entity:Lcn/mucang/sundial/android/db/entity/Gnss;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/Gnss;->setUploadStatus(I)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;->val$entity:Lcn/mucang/sundial/android/db/entity/Gnss;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveGnss(Lcn/mucang/sundial/android/db/entity/Gnss;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->removeOldGnssData()V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/location/LocationReportManager$2;->this$0:Lcn/mucang/sundial/android/timer/location/LocationReportManager;

    invoke-static {p1}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->access$200(Lcn/mucang/sundial/android/timer/location/LocationReportManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/sundial/android/timer/location/LocationReportManager;->access$300(Lcn/mucang/sundial/android/timer/location/LocationReportManager;I)V

    :cond_1
    return-void
.end method

.method public onTimeout()V
    .locals 2

    const-string v0, "LocationReportManager"

    const-string v1, "\u53d1\u9001\u4f4d\u7f6e\u6c47\u62a5[\u8d85\u65f6]"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
