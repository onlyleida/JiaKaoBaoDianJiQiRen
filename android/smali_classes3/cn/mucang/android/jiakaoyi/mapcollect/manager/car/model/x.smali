.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u0006\u0010\u0015\u001a\u00020\u0002H\u0016R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;",
        "agencyUser",
        "",
        "agencyData",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;ZZLandroidx/fragment/app/FragmentManager;)V",
        "getAgencyData",
        "()Z",
        "getAgencyUser",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "getViewModel",
        "()Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;",
        "addToMyCar",
        "",
        "item",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
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
.field private final b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;ZZLandroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportFragmentManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->c:Z

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->d:Z

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->o()Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    move-result-object p0

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->id:J

    long-to-int p2, p1

    const/16 p1, 0xa

    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->r(II)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
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
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/v;

    invoke-direct {v8, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/v;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

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

.method private static final C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->o()Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->o(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->N(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->id:J

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->n(I)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->D(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->C(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "it.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 7
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/u;

    invoke-direct {v8, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/u;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    const-string v4, "\u662f\u5426\u66ff\u6362\u5f53\u524d\u5df2\u6709\u7684\u8f66\u8eab\u6570\u636e"

    const-string v5, "\u53d6\u6d88"

    const-string v7, "\u786e\u5b9a"

    move-object v2, v1

    .line 8
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 9
    invoke-direct {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->n(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;Landroid/view/View;)V
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
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/s;

    invoke-direct {v8, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/s;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    const/4 v3, 0x0

    const-string v4, "\u662f\u5426\u5c06\u6b64\u6570\u636e\u8bbe\u7f6e\u6210\u5b98\u65b9\u6570\u636e"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u786e\u5b9a"

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


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->w(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method public final o()Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->b:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    return-object v0
.end method

.method public w(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->carTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->c:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->carBodyEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->setToOfficial:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;->d:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->carBodyEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->setToOfficial:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->carBodyEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->setToOfficial:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->hasAdd:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->hasAdd:Z

    if-eqz v1, :cond_2

    const-string v1, "\u5df2\u6dfb\u52a0"

    goto :goto_1

    :cond_2
    const-string v1, "\u6dfb\u52a0\u5230\u6211\u7684\u8f66\u8eab\u6570\u636e"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->addToMyCar:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/p;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/p;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->setToOfficial:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/t;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/t;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->delete:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/r;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/r;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/CarModelDbListItemBinding;->carBodyEdit:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/q;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/q;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
