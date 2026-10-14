.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$b;
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
        "cn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$getSetting$14",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider$b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "http://jiakaoyi.nav.mucang.cn/k2_coach_setting"

    .line 2
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "\u767b\u5f55\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settingItem"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/d;

    .line 2
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/ui/login/f;->d:Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "activity.supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/e0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/e0;

    invoke-virtual {p2, p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/login/f$a;->a(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
