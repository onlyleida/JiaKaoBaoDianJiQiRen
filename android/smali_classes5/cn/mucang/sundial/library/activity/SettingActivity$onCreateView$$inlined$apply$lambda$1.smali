.class final Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SettingActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "cn/mucang/sundial/library/activity/SettingActivity$onCreateView$1$1",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    const-string v0, "SundialManager.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u5148\u6ce8\u9500\u7ec8\u7aef"

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;->this$0:Lcn/mucang/sundial/library/activity/SettingActivity;

    const-class v2, Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
