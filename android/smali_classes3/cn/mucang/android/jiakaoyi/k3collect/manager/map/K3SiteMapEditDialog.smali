.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000RJ\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "siteMapModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V",
        "cityCode",
        "",
        "gpsBaseId",
        "",
        "Ljava/lang/Long;",
        "mSiteId",
        "onSave",
        "Lkotlin/Function6;",
        "",
        "",
        "getOnSave",
        "()Lkotlin/jvm/functions/Function6;",
        "setOnSave",
        "(Lkotlin/jvm/functions/Function6;)V",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "Companion",
        "MapCollectK3_release"
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
.field private final a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private b:Lkotlin/jvm/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/t<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->F(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "type_edit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "\u53ea\u53ef\u4ee5\u7f16\u8f91\u516c\u5f00\u8003\u573a"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-class v1, Lcn/mucang/android/selectcity/SelectCityStartupActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_SHOW_LOCATION_PANEL"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_SHOW_WHOLE_COUNTRY"

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "EXTRA_ONLY_SHOW_CITY"

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    const/16 v1, 0x3e8

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/r;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/r;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;)V

    invoke-virtual {v0, p2, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;IILandroid/content/Intent;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    const-string p2, "RESULT_CITY_CODE"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "RESULT_CITY_NAME"

    .line 2
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->nameSite:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static final E(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "type_edit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "\u53ea\u53ef\u4ee5\u7f16\u8f91\u516c\u5f00\u8003\u573a"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    const-string v1, "cityCode"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    const/16 v1, 0x3e7

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/w;

    invoke-direct {v2, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/w;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;)V

    invoke-virtual {v0, p2, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;IILandroid/content/Intent;)V
    .locals 0

    const-string p2, "$viewBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const-string p2, "siteId"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "siteName"

    .line 2
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->nameSite:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog$onCreateView$4$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog$onCreateView$4$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;)V

    invoke-virtual {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;->b(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/b/p;)V

    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V
    .locals 7

    const-string p2, "$viewBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->nameSite:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->d:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->gpsBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->gpsBase:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->e:Ljava/lang/Long;

    if-nez p2, :cond_3

    :cond_2
    const-string p0, "\u8bf7\u9009\u62e9\u57fa\u7ad9"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->s()Lkotlin/jvm/b/t;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->d:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->e:Ljava/lang/Long;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lkotlin/jvm/b/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void

    :cond_5
    :goto_1
    const-string p0, "\u8bf7\u9009\u62e9\u8003\u573a"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    const-string p0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    .line 12
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final I(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->e:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->G(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->D(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->C(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->B(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->E(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->H(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final J(Lkotlin/jvm/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/t<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->b:Lkotlin/jvm/b/t;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/t;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_collect"

    const v2, 0x1eee0bef

    const v3, 0xdfbd25

    const-string v4, "\u91c7\u96c6\u65b0\u5730\u56fe"

    const-string v5, "type_edit"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v3, :cond_2

    if-eq v6, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "\u5730\u56fe\u4fe1\u606f\u7f16\u8f91"

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_0
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v0, 0x0

    if-nez p2, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    iget-object v4, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    :goto_1
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->c:Ljava/lang/String;

    if-nez p2, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    iget-wide v6, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->d:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->nameSite:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const-string v4, ""

    if-nez v0, :cond_6

    :goto_3
    move-object v0, v4

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    iget-boolean v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->cityName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move-object v4, v0

    :goto_6
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->cityName:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/s;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/s;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->nameSite:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/u;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/u;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->gpsBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p3, 0x8

    :cond_b
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->gpsBase:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/p;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/p;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->okTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\u5f00\u59cb\u91c7\u96c6"

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eq v4, v3, :cond_e

    if-eq v4, v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "\u4fdd\u5b58"

    goto :goto_7

    :cond_e
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    :cond_f
    :goto_7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->okTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/v;

    invoke-direct {p3, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/v;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/q;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/q;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3SiteMapEditDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public final s()Lkotlin/jvm/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/t<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;->b:Lkotlin/jvm/b/t;

    return-object v0
.end method
