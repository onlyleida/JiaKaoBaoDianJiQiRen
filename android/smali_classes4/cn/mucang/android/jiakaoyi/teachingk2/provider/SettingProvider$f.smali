.class public final Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/setting/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider;->getSetting(ILandroidx/lifecycle/z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$15",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "settingItem",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->d()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "\u83b7\u53d6\u786c\u4ef6\u4fe1\u606f\u5931\u8d25"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget v0, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->otaVersion:I

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_1

    const-string p1, "\u8bf7\u5148\u5347\u7ea7\u4e3b\u63a7"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget p2, p2, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->gearFirmwareVersion:I

    const/16 v0, 0x11

    if-ge p2, v0, :cond_2

    const-string p1, "\u8bf7\u5148\u5347\u7ea7\u6321\u4f4d\u6a21\u5757"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->P(Landroid/content/Context;)V

    return-void
.end method
