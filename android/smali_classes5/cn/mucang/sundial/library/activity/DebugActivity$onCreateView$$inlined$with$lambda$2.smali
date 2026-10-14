.class final Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "cn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$4",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/DebugActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "\u5df2\u6062\u590d\u7cfb\u7edf\u9ed8\u8ba4\u9875\u9762,\u53ef\u76f4\u63a5\u8fd4\u56de\u684c\u9762"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/device/SundialDevice;->deviceHelper(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/DeviceHelper;->restoreSystemLauncher()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcn/mucang/sundial/library/activity/BaseActivity;->Companion:Lcn/mucang/sundial/library/activity/BaseActivity$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/activity/BaseActivity$Companion;->setCanExit(Z)V

    return-void
.end method
