.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;
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
        "cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$6",
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

.field final synthetic b:Landroidx/lifecycle/z;
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
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->b:Landroidx/lifecycle/z;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;IILandroid/content/Intent;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->c(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final c(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;IILandroid/content/Intent;)V
    .locals 0

    const-string p5, "$settingItem"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$keMu"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$itemList"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x3e9

    if-ne p3, p5, :cond_2

    const/4 p3, -0x1

    if-ne p4, p3, :cond_2

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    const-string p3, "\u9ed8\u8ba4\u8003\u573a"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p1

    .line 2
    :goto_0
    invoke-virtual {p0, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->i(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;)V
    .locals 5

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

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

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

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$l;->b:Landroidx/lifecycle/z;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;

    invoke-direct {v4, p2, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/f0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroidx/lifecycle/z;)V

    invoke-virtual {p1, v0, v1, v4}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method
