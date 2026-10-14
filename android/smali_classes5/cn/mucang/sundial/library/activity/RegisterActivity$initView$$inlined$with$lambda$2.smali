.class final Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/RegisterActivity;->initView()V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/activity/RegisterActivity$initView$1$2",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getViewModel$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->getDeviceInfoData()Landroidx/lifecycle/i0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    if-eqz p1, :cond_7

    const-string v0, "viewModel.deviceInfoData\u2026return@setOnClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getInputByIndex(Lcn/mucang/sundial/library/activity/RegisterActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getInputByIndex(Lcn/mucang/sundial/library/activity/RegisterActivity;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_6

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    sget v0, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.tt_net_error)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_5
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;

    invoke-direct {v1, p0, p1, v0, v2}, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2$1;-><init>(Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;Lcn/mucang/sundial/android/db/entity/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_6
    :goto_2
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v0, Lcn/mucang/sundial/library/R$string;->tt_please_input_all_field:I

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    :cond_7
    return-void
.end method
