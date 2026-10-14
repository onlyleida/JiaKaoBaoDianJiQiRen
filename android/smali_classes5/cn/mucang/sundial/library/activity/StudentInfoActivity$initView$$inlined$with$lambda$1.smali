.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$2",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "\u70b9\u51fb\u5b66\u5458\u7b7e\u9000\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(R.string.tt_net_error)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_voice_taking:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.tt_voice_taking)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    const-string p1, "\u6b63\u5728\u62cd\u7167\u8bf7\u7a0d\u5019"

    .line 7
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    const-string v0, "SundialManager.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->isOnlyGZMiniQRCode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u5e7f\u4e1c\u5b66\u5458\uff0c\u8df3\u8f6c\u5b66\u5458\u626b\u7801\u7b7e\u9000\u9875\u9762"

    .line 9
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    .line 11
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    const-class v2, Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    sget-object v1, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "check_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    const/16 v1, 0x44b

    .line 14
    new-instance v2, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1$1;-><init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;)V

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/sundial/library/util/LoginUtil;->logoutWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;I)V

    .line 17
    :goto_0
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "\u5b66\u5458\u672a\u767b\u5f55\uff0c\u8df3\u8f6c\u5b66\u5458\u767b\u5f55\u9875\u9762"

    .line 18
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    const-class v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    sget-object v1, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$2$3;->INSTANCE:Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$1$2$3;

    invoke-static {p1, v0, v1}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$initView$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
