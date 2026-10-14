.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0015J\u0008\u0010\u0015\u001a\u00020\u0011H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "initLights",
        "",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
        "getStatName",
        "",
        "initSort",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "Companion",
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


# static fields
.field public static final f:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

.field private b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

.field private final d:Lcom/drakeet/multitype/f;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->f:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->r()V

    :goto_0
    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    return-object p0
.end method

.method private final i()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/g;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->x(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->w(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->s(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->y(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->v(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->A(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->t(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    const-string v2, ","

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 5
    iget v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 8
    iget v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 10
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string v1, "\u4fdd\u5b58\u706f\u5149\u6307\u4ee4\u987a\u5e8f\uff1a "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/o0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/o0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->u(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_4

    :cond_7
    const-string p0, "\u6ca1\u6709\u4fee\u6539\u6570\u636e"

    .line 12
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    :goto_1
    move-object p1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_2
    if-eqz p1, :cond_7

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string p0, "viewModel?.lightList?.value!!"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private static final v(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "it.context"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;->b(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;Landroid/content/Context;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IILjava/lang/Object;)V

    return-void
.end method

.method private static final w(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "\u70b9\u51fb\u91cd\u7f6e\u706f\u5149\u6307\u4ee4  "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity;->i:Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/K3RuleDeductOrderDiffActivity$Companion;->c(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    :goto_0
    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->e:Ljava/util/List;

    const-string v1, "it"

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u706f\u5149\u6307\u4ee4"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    .line 3
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->g()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/p0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/p0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u706f\u5149\u6307\u4ee4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u91cd\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/m0;

    invoke-direct {v4, p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/m0;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;

    const/4 v2, 0x3

    invoke-direct {p1, v3, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;-><init>(ILkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->w(Lkotlin/jvm/b/l;)V

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    .line 14
    const-class v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {v2, v3, p1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->i()V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/l0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/l0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/q0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/q0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/n0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/n0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/t0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/t0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, v2}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/u0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/u0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderActivityBinding;->addTv:Landroid/widget/TextView;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/r0;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/r0;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->c:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->r()V

    :goto_0
    return-void
.end method
