.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final m(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://jiakaoyi.nav.mucang.cn/siteBackup"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private static final n(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://jiakaoyi.nav.mucang.cn/dataManager"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private static final o(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://jiakaoyi.nav.mucang.cn/k3ExamSiteManage"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method private static final p(Landroid/view/View;)V
    .locals 0

    const-string p0, "http://jiakaoyi.nav.mucang.cn/praUnitPrice"

    .line 1
    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->m(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;->o(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u8eab-\u7ba1\u7406\u5458"

    return-object v0
.end method

.method protected init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u7ba1\u7406\u5458\u9875\u9762"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->carModelManager:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/i;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->agencyCarDataManager:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/l;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/CarAdminActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->siteDataSave:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->hpMapManager:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 10
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->examSiteManager:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->siteDataSave:Landroid/widget/RelativeLayout;

    sget-object v4, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/j;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/j;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->hpMapManager:Landroid/widget/RelativeLayout;

    sget-object v4, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/k;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/k;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->examSiteManager:Landroid/widget/RelativeLayout;

    sget-object v4, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/n;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/n;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->costDisplaySetting:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarAdminBinding;->costDisplaySetting:Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/h;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
