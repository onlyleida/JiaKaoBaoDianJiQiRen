.class public final Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0007H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "cityCode",
        "",
        "getCityCode",
        "()Ljava/lang/String;",
        "cityCode$delegate",
        "Lkotlin/Lazy;",
        "schoolId",
        "getSchoolId",
        "schoolId$delegate",
        "chooseSchool",
        "",
        "getStatName",
        "init",
        "",
        "loadData",
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


# static fields
.field public static final e:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$cityCode$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$cityCode$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$schoolId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$schoolId$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private final j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->t()V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->w(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->v(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->u(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    return-void
.end method

.method private final t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;-><init>()V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;-><init>()V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/h;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p0, "\u52a0\u8f7d\u5217\u8868\u5931\u8d25"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9a7e\u6821\u9009\u62e9\u9875"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u9009\u62e9\u9a7e\u6821"

    goto :goto_0

    :cond_0
    const-string v1, "\u9009\u62e9\u8f66\u724c\u53f7"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->d:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/g;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->j()Z

    move-result v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$init$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$init$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/select/g;-><init>(ZLkotlin/jvm/b/l;)V

    .line 5
    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/select/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->t()V

    return-void
.end method
