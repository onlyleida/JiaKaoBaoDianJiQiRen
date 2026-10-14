.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/setting/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;->getSetting(ILandroidx/lifecycle/z;)Ljava/util/List;
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
        "cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$7",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItemClick;",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "settingItem",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

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
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->c()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "\u60a8\u6ca1\u6709\u6743\u9650!"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p2}, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const-string v0, "\u9ed8\u8ba4\u8003\u573a"

    .line 5
    iput-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 7
    :cond_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->d:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "view.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$m;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method
