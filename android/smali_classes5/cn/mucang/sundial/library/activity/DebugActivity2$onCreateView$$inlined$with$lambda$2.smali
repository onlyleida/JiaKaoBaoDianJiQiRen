.class final Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity2;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\t\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "",
        "isChecked",
        "Lkotlin/v;",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
        "cn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$4",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/DebugActivity2;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/DebugActivity2;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f7f\u7528\u6d4b\u8bd5\u5b9a\u4f4d\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    new-instance p2, Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-direct {p2}, Lcn/mucang/sundial/library/device/DebugLocationStrategy;-><init>()V

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/location/AppLocation;->setLocationStrategy(Lcn/mucang/sundial/android/location/LocationStrategy;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    sget-object p2, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {p2}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$2;->this$0:Lcn/mucang/sundial/library/activity/DebugActivity2;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/library/device/SundialDevice;->locationStrategy(Landroid/content/Context;)Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/location/AppLocation;->setLocationStrategy(Lcn/mucang/sundial/android/location/LocationStrategy;)V

    :goto_0
    return-void
.end method
