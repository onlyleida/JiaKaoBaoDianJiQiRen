.class final Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/AdminCheckActivity;->initView()V
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
        "cn/mucang/sundial/library/activity/AdminCheckActivity$initView$1$2",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;Lcn/mucang/sundial/library/activity/AdminCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityAdminCheckBinding;->password:Landroid/widget/EditText;

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/AdminCheckActivity;->access$getPassword(Lcn/mucang/sundial/library/activity/AdminCheckActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/l;->q(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5bc6\u7801"

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "\u8df3\u8f6c\u7ec8\u7aef\u8bbe\u7f6e\u9875\u9762"

    .line 4
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    const-class v2, Lcn/mucang/sundial/library/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/AdminCheckActivity$initView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
