.class final Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;->onClick(Landroid/view/View;)V
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
        "cn/mucang/sundial/library/activity/SettingActivity$onCreateView$1$2$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1$1;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->unregister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    const-string v0, "\u7ec8\u7aef\u6ce8\u9500\u5931\u8d25"

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
