.class public final Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;
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
        "cn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$getSetting$8",
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


# instance fields
.field final synthetic a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;->a:Landroidx/lifecycle/z;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;->c(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final c(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;IILandroid/content/Intent;)V
    .locals 0

    const-string p4, "$settingItem"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$itemList"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x3e9

    if-ne p2, p4, :cond_2

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p2

    const-string p3, "\u9ed8\u8ba4\u89c4\u5219\u7ec4"

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    .line 2
    :goto_0
    invoke-virtual {p0, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->i(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->d:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;->a(Landroid/content/Context;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    const/16 v1, 0x3e9

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/SettingProvider$c0;->a:Landroidx/lifecycle/z;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/provider/b;

    invoke-direct {v3, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Landroidx/lifecycle/z;)V

    invoke-virtual {p1, v0, v1, v3}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method
