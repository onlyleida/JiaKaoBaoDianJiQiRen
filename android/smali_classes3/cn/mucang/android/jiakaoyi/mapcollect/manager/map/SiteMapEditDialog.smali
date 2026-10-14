.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007RJ\u0010\u0008\u001a2\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "cityCode",
        "",
        "gpsBaseId",
        "",
        "Ljava/lang/Long;",
        "onSave",
        "Lkotlin/Function6;",
        "",
        "",
        "getOnSave",
        "()Lkotlin/jvm/functions/Function6;",
        "setOnSave",
        "(Lkotlin/jvm/functions/Function6;)V",
        "siteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getSiteModel",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "setSiteModel",
        "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V",
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
        "mapcollect_release"
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
.field private a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

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

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    const-class v1, Lcn/mucang/android/selectcity/SelectCityStartupActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_SHOW_LOCATION_PANEL"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_SHOW_WHOLE_COUNTRY"

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_ONLY_SHOW_CITY"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/v0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/v0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;)V

    const/16 p0, 0x3e8

    invoke-virtual {v0, p2, p0, v1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;IILandroid/content/Intent;)V
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
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

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

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog$onCreateView$3$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;)V

    invoke-virtual {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;->b(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/b/p;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V
    .locals 7

    const-string p2, "$viewBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSchool:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p2, "\u9a7e\u6821\u540d\u79f0"

    .line 2
    invoke-static {v1, p2}, Lcn/mucang/jiakaoyi/uilib/s/n;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSite:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p2, "\u573a\u5730\u540d\u79f0"

    .line 4
    invoke-static {v2, p2}, Lcn/mucang/jiakaoyi/uilib/s/n;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "type_edit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBase:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->c:Ljava/lang/Long;

    if-nez p2, :cond_4

    :cond_3
    const-string p0, "\u8bf7\u9009\u62e9\u57fa\u7ad9"

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->s()Lkotlin/jvm/b/t;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    .line 13
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->c:Ljava/lang/Long;

    .line 14
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 15
    invoke-interface/range {v0 .. v6}, Lkotlin/jvm/b/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void

    :cond_6
    :goto_1
    const-string p0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    .line 17
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final E(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->c:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->E(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->D(Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public final F(Lkotlin/jvm/b/t;)V
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->b:Lkotlin/jvm/b/t;

    return-void
.end method

.method public final G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

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
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/s0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->d:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSchool:Landroid/widget/EditText;

    const-string v1, ""

    if-nez p2, :cond_1

    :goto_1
    move-object p2, v1

    goto :goto_2

    :cond_1
    iget-object p2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSite:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_3

    :goto_3
    move-object v0, v1

    goto :goto_4

    :cond_3
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    iget-boolean v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityName:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/t0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type_edit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    const/16 p3, 0x8

    :goto_7
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBase:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u0;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/u0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->okTv:Landroid/widget/TextView;

    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/r0;

    invoke-direct {p3, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/r0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    sget-object p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/q0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/q0;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->getRoot()Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->b:Lkotlin/jvm/b/t;

    return-object v0
.end method
