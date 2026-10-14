.class final Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;->run()V
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
        "onTimeout",
        "()V",
        "cn/mucang/sundial/library/activity/SettingActivity$onCreateView$1$2$1$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    const-string v0, "\u7ec8\u7aef\u6ce8\u9500\u5931\u8d25"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(Ljava/lang/String;)V

    return-void
.end method
