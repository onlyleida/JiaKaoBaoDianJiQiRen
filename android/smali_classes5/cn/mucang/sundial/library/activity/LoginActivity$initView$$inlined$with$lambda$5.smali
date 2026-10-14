.class final Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/LoginActivity$initView$2$4",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;Lcn/mucang/sundial/library/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const-string p1, "\u70b9\u51fb\u767b\u5f55\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginActivity;->access$interruptToRegister(Lcn/mucang/sundial/library/activity/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityLoginBinding;->idCardNumber:Landroid/widget/EditText;

    const-string v0, "idCardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_3

    .line 4
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/mucang/sundial/library/R$string;->tt_please_input_id:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    return-void

    .line 7
    :cond_4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->hasNetWork()Z

    move-result p1

    const/4 v1, 0x2

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_net_error:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.tt_net_error)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v0}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 10
    :cond_5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginActivity;)I

    move-result p1

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_6

    invoke-static {}, Lcn/mucang/sundial/android/location/AppLocation;->isLocationValid()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "\u83b7\u53d6\u5b9a\u4f4d\u4fe1\u606f\u5931\u8d25"

    .line 11
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 12
    invoke-static {p1, v0, v1, v0}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_6
    sget-object v1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/LoginActivity$initView$$inlined$with$lambda$5;->this$0:Lcn/mucang/sundial/library/activity/LoginActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/LoginActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginActivity;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck$default(Lcn/mucang/sundial/library/util/LoginUtil;Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
