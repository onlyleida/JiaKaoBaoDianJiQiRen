.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0017R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Landroidx/fragment/app/FragmentManager;)V",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "getViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field private final b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportFragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "it.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;

    invoke-direct {v8, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/e;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const/4 v3, 0x0

    const-string v4, "\u662f\u5426\u786e\u5b9a\u5220\u9664"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u5220\u9664"

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v1

    .line 5
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 6
    invoke-direct {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->n()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final C(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 2

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u9884\u89c8\u9ad8\u7cbe\u5ea6\u5730\u56fe"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/a;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    invoke-virtual {v0, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "\u6682\u65e0\u7ebf\u4e0a\u5730\u56fe\u6570\u636e"

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "it.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final E(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "$activity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\u8fc1\u79fb\u9ad8\u7cbe\u5ea6\u5730\u56fe"

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;-><init>()V

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/g;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;)V

    invoke-virtual {p2, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "\u6682\u65e0\u7ebf\u4e0a\u5730\u56fe\u6570\u636e"

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;

    invoke-direct {p2, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/f;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final G(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;->c:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;

    .line 2
    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityCode:Ljava/lang/String;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;->b(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/b/p;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->D(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->y(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->z(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->A(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->B(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->G(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->F(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->C(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->E(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method private static final y(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "$activity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\u7f16\u8f91\u9ad8\u7cbe\u5ea6\u5730\u56fe"

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;-><init>()V

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/c;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/c;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;)V

    invoke-virtual {p2, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/h;->a(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroidx/appcompat/app/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "\u6682\u65e0\u7ebf\u4e0a\u5730\u56fe\u6570\u636e"

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->I:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;

    invoke-virtual {p2, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;->b(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->x(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    return-object v0
.end method

.method public x(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->cityTv:Landroid/widget/TextView;

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->tvExamSiteName:Landroid/widget/TextView;

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->mapEditTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/b;

    invoke-direct {v2, v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/b;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->deleteTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/d;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/d;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->previewTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/h;

    invoke-direct {v2, v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/h;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->migrateTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/i;

    invoke-direct {v2, v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/i;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->mapEditTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->deleteTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->funcTv:Landroid/widget/TextView;

    const-string v2, "\u4fe1\u606f\u7f16\u8f91"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->funcTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-boolean v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->canPublic:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->openTv:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->openTv:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15
    :goto_0
    iget-boolean p2, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->official:Z

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->officialTv:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3MapListItemBinding;->officialTv:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    return-void
.end method
