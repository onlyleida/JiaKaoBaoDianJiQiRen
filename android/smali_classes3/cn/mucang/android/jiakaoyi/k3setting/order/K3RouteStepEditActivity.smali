.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\"H\u0014J\u0010\u0010#\u001a\u00020\u000b2\u0008\u0010$\u001a\u0004\u0018\u00010 J\u0008\u0010%\u001a\u00020\"H\u0002J\u0010\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020\u000fH\u0002R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\t\u001a\u0004\u0008\n\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\t\u001a\u0004\u0008\u0010\u0010\u0011R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\t\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;",
        "()V",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "isAdd",
        "",
        "()Z",
        "isAdd$delegate",
        "k3OrderItem",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "getK3OrderItem",
        "()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "k3OrderItem$delegate",
        "k3Orders",
        "",
        "getK3Orders",
        "()Ljava/util/List;",
        "k3Orders$delegate",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "getViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "viewModel$delegate",
        "getStatName",
        "",
        "init",
        "",
        "isSpecialChar",
        "str",
        "startK3OrderStandardListActivity",
        "updateK3OrderItem",
        "it",
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
.field public static final h:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lkotlin/f;

.field private final e:Lkotlin/f;

.field private final f:Lkotlin/f;

.field private g:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->h:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$k3OrderItem$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$k3OrderItem$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$k3Orders$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$k3Orders$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->d:Lkotlin/f;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$isAdd$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$isAdd$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->e:Lkotlin/f;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$viewModel$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->f:Lkotlin/f;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->t(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->q(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->p(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V

    return-void
.end method

.method private final E()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    const-string v2, "key.stepType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v1

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/o;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/o;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    const/16 v3, 0x3e9

    invoke-virtual {v1, v0, v3, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p1, "key.chooseResult"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->standardTv:Landroid/widget/TextView;

    iget-object p3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etTitle:Landroid/widget/EditText;

    iget-object p3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object p2

    iget p2, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    iget p3, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    if-eq p2, p3, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->G(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final G(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->copy(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$updateK3OrderItem$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object p0

    return-object p0
.end method

.method private final l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private final m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    return-object v0
.end method

.method private final n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-k3Orders>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final o()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->f:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    return-object v0
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;-><init>()V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    iget v0, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;->d(I)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p0, "\u8bf7\u5148\u9009\u62e9\u8bc4\u5224\u6807\u51c6"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/d;

    .line 4
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object p0

    iget-wide p0, p0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etDesc:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u6307\u4ee4\u6807\u9898\u4e0d\u80fd\u4e3a\u7a7a"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u4e0d\u80fd\u5305\u542b\u7279\u6b8a\u5b57\u7b26"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->n()Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 9
    iget-wide v3, v3, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 13
    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u6307\u4ee4\u6807\u9898\u5fc5\u987b\u552f\u4e00"

    .line 15
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->standardTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\u8bc4\u5224\u9879\u76ee\u4e0d\u80fd\u4e3a\u7a7a"

    .line 19
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etDesc:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "\u64ad\u62a5\u8bed\u97f3\u4e0d\u80fd\u4e3a\u7a7a"

    .line 23
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->o()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;

    invoke-direct {v4, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->o(JLcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->g:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->g:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->g:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 7
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->E()V

    return-void
.end method

.method private final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->e:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->F(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->s(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->r(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u706f\u5149\u6307\u4ee4"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u6ca1\u6709\u8003\u573a\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u8def\u7ebf\u6307\u4ee4"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->standardTv:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u9009\u62e9\u8bc4\u5224\u9879\u76ee"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->voice:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u7f16\u8f91\u8def\u7ebf\u6307\u4ee4"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->standardTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->voice:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->voice:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/u;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/u;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/t;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/t;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etTitle:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etDesc:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->etDesc:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->m()Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->playTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/q;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/q;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/p;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/p;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->o()Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/r;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/r;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->standardTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/s;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "[ _`~!@#$%^&*+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]|\n|\r|\t"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(regEx)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "p.matcher(str)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
