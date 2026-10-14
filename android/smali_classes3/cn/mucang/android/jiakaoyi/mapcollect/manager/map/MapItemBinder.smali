.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0017R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field private b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 2

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "it.context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;

    invoke-direct {p3, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$4$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V

    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/w0;->h(Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final B(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;

    invoke-direct {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$5$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final C(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$6$1;

    invoke-direct {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$6$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-object p0
.end method

.method public static synthetic o(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->C(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->x(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->B(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->w(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->A(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->z(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method private static final w(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$1$1;

    invoke-direct {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$1$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->b(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final x(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 12

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p0, "\u8be5\u8003\u573a\u6b63\u5728\u542f\u7528\uff0c\u4e0d\u80fd\u5220\u9664"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "it.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 6
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/c0;

    invoke-direct {v8, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/c0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    const-string v4, "\u662f\u5426\u786e\u5b9a\u5220\u9664"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u5220\u9664"

    move-object v2, v1

    .line 7
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 8
    invoke-direct {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$viewModel"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;->n(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Landroid/view/View;)V
    .locals 1

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$viewModel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;-><init>()V

    .line 2
    invoke-virtual {p3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "type_edit"

    invoke-virtual {p3, p1, v0}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder$onBindViewHolder$3$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;->F(Lkotlin/jvm/b/t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->v(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    .line 2
    new-instance v1, Landroidx/lifecycle/m0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v1

    const-string v2, "ViewModelProvider(activi\u2026MapViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->schoolTv:Landroid/widget/TextView;

    iget-object v3, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->driveSchoolName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->siteTv:Landroid/widget/TextView;

    iget-object v3, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->mapEditTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;

    invoke-direct {v3, v0, p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->deleteTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;

    invoke-direct {v3, p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/n;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->funcTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/b0;

    invoke-direct {v3, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->copyTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/q;

    invoke-direct {v3, p2, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/q;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->previewTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/o;

    invoke-direct {v2, v0, p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/o;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->migrate:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/m;

    invoke-direct {v2, v0, p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/m;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapItemBinder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->mapEditTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->deleteTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->funcTv:Landroid/widget/TextView;

    const-string v2, "\u4fe1\u606f\u7f16\u8f91"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->funcTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-boolean p2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->openTv:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/MapListItemBinding;->openTv:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method
