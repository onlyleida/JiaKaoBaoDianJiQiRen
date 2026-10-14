.class public Lcn/mucang/android/selectcity/SelectCityStartupActivity;
.super Lf/a/a/e/a/a/a;
.source "SourceFile"


# static fields
.field public static final EXTRA_ADD_AUTO_LOCATION_CITY:Ljava/lang/String; = "__extra_add_auto_location_city__"

.field public static final EXTRA_CUSTOM_EXIT_TIPS_MESSAGE:Ljava/lang/String; = "EXTRA_CUSTOM_EXIT_TIPS_MESSAGE"

.field public static final EXTRA_DEFAULT_CITIES:Ljava/lang/String; = "__extra_default_cities__"

.field public static final EXTRA_IS_AUTO_LOCATE:Ljava/lang/String; = "__extra_is_auto_locate__"

.field public static final EXTRA_MAX_CITY_COUNT_IN_MULTI_MODE:Ljava/lang/String; = "__extra_max_city_count_in_multi_mode__"

.field public static final EXTRA_ONLY_SELECT_PROVINCE:Ljava/lang/String; = "EXTRA_ONLY_SELECT_PROVINCE"

.field public static final EXTRA_ONLY_SELECT_REGION:Ljava/lang/String; = "EXTRA_ONLY_SELECT_REGION"

.field public static final EXTRA_ONLY_SHOW_CITY:Ljava/lang/String; = "EXTRA_ONLY_SHOW_CITY"

.field public static final EXTRA_PERMISSION_LOCATION_DESCRIPTION:Ljava/lang/String; = "EXTRA_PERMISSION_LOCATION_DESCRIPTION"

.field public static final EXTRA_SHOW_LOCATION_DIALOG:Ljava/lang/String; = "EXTRA_SHOW_LOCATION_DIALOG"

.field public static final EXTRA_SHOW_LOCATION_PANEL:Ljava/lang/String; = "EXTRA_SHOW_LOCATION_PANEL"

.field public static final EXTRA_SHOW_RECENT_CITIES:Ljava/lang/String; = "EXTRA_SHOW_RECENT_CITIES"

.field public static final EXTRA_SHOW_SEARCH_BAR:Ljava/lang/String; = "EXTRA_SHOW_SEARCH_BAR"

.field public static final EXTRA_SHOW_WHOLE_COUNTRY:Ljava/lang/String; = "EXTRA_SHOW_WHOLE_COUNTRY"

.field public static final EXTRA_SHOW_WHOLE_PROVINCE:Ljava/lang/String; = "EXTRA_SHOW_WHOLE_PROVINCE"

.field public static final EXTRA_SUPPORT_MULTI_CITY:Ljava/lang/String; = "__extra_support_mulit_city__"

.field public static final RESULT_CITY_CODE:Ljava/lang/String; = "RESULT_CITY_CODE"

.field public static final RESULT_CITY_DATA:Ljava/lang/String; = "RESULT_CITY_DATA"

.field public static final RESULT_CITY_LIST:Ljava/lang/String; = "RESULT_CITY_LIST"

.field public static final RESULT_CITY_NAME:Ljava/lang/String; = "RESULT_CITY_NAME"

.field public static final RESULT_PROVINCE_NAME:Ljava/lang/String; = "RESULT_PROVINCE_NAME"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/selectcity/SelectCityStartupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/selectcity/SelectCityStartupActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcn/mucang/android/selectcity/v;->a:Lcn/mucang/android/selectcity/w;

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    const-string v0, "\u8bf7\u5f15\u5165\u9009\u62e9\u57ce\u5e02\u6a21\u5757"

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object p1, Lcn/mucang/android/selectcity/SelectCityStartupActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    :cond_1
    sget-object p1, Lcn/mucang/android/selectcity/v;->a:Lcn/mucang/android/selectcity/w;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcn/mucang/android/selectcity/w;->a(Landroid/content/Context;Landroid/os/Bundle;)Lf/a/a/e/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/a/a/a;->fragment:Lf/a/a/e/a/c/b;

    .line 9
    invoke-virtual {p0, p1}, Lf/a/a/e/a/a/a;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
