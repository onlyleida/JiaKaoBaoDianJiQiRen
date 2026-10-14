.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/widget/RadioGroup;",
        "kotlin.jvm.PlatformType",
        "group",
        "",
        "checkedId",
        "Lkotlin/v;",
        "onCheckedChanged",
        "(Landroid/widget/RadioGroup;I)V",
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
.field final synthetic $this_with:Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$1$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$1$2;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->rbCold:Landroid/widget/RadioButton;

    const-string v1, "rbCold"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    const-string p1, "\u9009\u62e9\u51b7\u542f\u52a8\u6a21\u5f0f"

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/location/AppLocation;->getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/location/LocationStrategy;->setStartMode(I)V

    :cond_0
    const-string p1, "\u8bf7\u6309\u53f3\u4fa7\u7535\u6e90\u952e\u91cd\u542f\u8bbe\u5907"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->rbWarm:Landroid/widget/RadioButton;

    const-string v1, "rbWarm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    const-string p1, "\u9009\u62e9\u6e29\u542f\u52a8\u6a21\u5f0f"

    .line 7
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/location/AppLocation;->getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/location/LocationStrategy;->setStartMode(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivitySelfCheckBinding;->rbHot:Landroid/widget/RadioButton;

    const-string v0, "rbHot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    const-string p1, "\u9009\u62e9\u70ed\u542f\u52a8\u6a21\u5f0f"

    .line 10
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/location/AppLocation;->getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/location/LocationStrategy;->setStartMode(I)V

    :cond_3
    :goto_0
    return-void
.end method
