.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000bH\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
        "gpsGetter",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "Landroid/location/Location;",
        "(Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "updateName",
        "k3setting_release"
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
.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gpsGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->b:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;)Lcn/mucang/android/jiakaoyi/framework/h/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->b:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-object p0
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->u(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->s(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->t(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 11

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "teachId \u4e3a\u7a7a"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p0, "uid \u4e3a\u7a7a"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "getCurrentActivity()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string p3, "\u6e05\u7a7a\u6559\u5b66\u91c7\u96c6\u70b9\u4e2d"

    .line 7
    invoke-virtual {v4, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$1$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p3

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_3
    :goto_0
    const-string p0, "\u7ecf\u7eac\u5ea6\u4e3a\u7a7a"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final t(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 11

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getTeachId()Ljava/lang/Long;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "teachId \u4e3a\u7a7a"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getUid()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p0, "uid \u4e3a\u7a7a"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "getCurrentActivity()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string p3, "\u6dfb\u52a0\u6559\u5b66\u91c7\u96c6\u70b9\u4e2d"

    .line 6
    invoke-virtual {v4, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder$onBindViewHolder$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p3

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final u(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;->tvContent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getLongitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;->u(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;->tvClear:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/s0;

    invoke-direct {v1, p2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/s0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3TeachPointItemBinding;->tvAdd:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/t0;

    invoke-direct {v1, p2, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/t0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/TeachStepNode;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteTeachPointItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
