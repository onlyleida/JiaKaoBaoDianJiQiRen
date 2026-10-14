.class final Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/CoachInfoActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/CoachInfoActivity$initView$1$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/CoachInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "\u6309\u94ae\u70b9\u51fb\u6559\u7ec3\u767b\u51fa"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.tt_net_error)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u6b63\u5728\u62cd\u7167\u8bf7\u7a0d\u5019"

    .line 6
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_voice_taking:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.tt_voice_taking)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "\u6559\u7ec3\u767b\u51fa\u4eba\u8138\u68c0\u6d4b"

    .line 8
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/CoachInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/CoachInfoActivity;

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/util/LoginUtil;->logoutWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;I)V

    return-void
.end method
