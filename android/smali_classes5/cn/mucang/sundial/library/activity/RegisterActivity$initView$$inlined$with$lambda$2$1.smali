.class final Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->onClick(Landroid/view/View;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "cn/mucang/sundial/library/activity/RegisterActivity$initView$1$2$1",
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
.field final synthetic $carNo:Ljava/lang/String;

.field final synthetic $deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

.field final synthetic $devicePhone:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;Lcn/mucang/sundial/android/db/entity/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$carNo:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$devicePhone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$carNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setCarNo(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$devicePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setDevicePhone(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->$deviceInfo:Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/SundialManager;->register(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$string;->tt_voice_register_fail:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->g(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;

    iget-object v1, v1, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.tt_voice_register_fail)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getBaseViewModel()Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/BaseActivityViewModel;->getBaseInfo()V

    return-void
.end method
