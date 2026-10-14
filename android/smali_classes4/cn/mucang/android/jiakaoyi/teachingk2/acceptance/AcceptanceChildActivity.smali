.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0015J\u0008\u0010\u0019\u001a\u00020\u0014H\u0002J\u0008\u0010\u001a\u001a\u00020\u0014H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "module",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "getModule",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "module$delegate",
        "Lkotlin/Lazy;",
        "selectItem",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
        "workOrderId",
        "",
        "getWorkOrderId",
        "()J",
        "workOrderId$delegate",
        "changeSelect",
        "",
        "item",
        "getStatName",
        "",
        "init",
        "loadData",
        "onResume",
        "ChildItemBinder",
        "Companion",
        "TeachingK2_release"
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
.field public static final f:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;

.field private final d:Lcom/drakeet/multitype/f;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$module$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$module$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$workOrderId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$workOrderId$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->c:Lkotlin/f;

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    .line 6
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object p0

    return-object p0
.end method

.method private final l(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->setSelect(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->setSelect(Z)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object v0
.end method

.method private final n()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMapActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMapActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "it.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object v3

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->n()J

    move-result-wide v4

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMapActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;JLcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)Landroid/content/Intent;

    move-result-object p0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/e;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/e;-><init>(Landroid/view/View;)V

    const/16 p1, 0x3e8

    invoke-virtual {v0, p0, p1, v1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final q(Landroid/view/View;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "reportUrl"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "*#06#mYeab4M9o4xug4mYhpeoQkKP"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/core/api/request/f/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Lcn/mucang/android/core/webview/HtmlExtra$b;

    invoke-direct {p2}, Lcn/mucang/android/core/webview/HtmlExtra$b;-><init>()V

    .line 4
    invoke-virtual {p2, p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->J(Ljava/lang/String;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 5
    sget-object p1, Lcn/mucang/android/core/webview/ParamsMode;->NONE:Lcn/mucang/android/core/webview/ParamsMode;

    invoke-virtual {p2, p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->F(Lcn/mucang/android/core/webview/ParamsMode;)Lcn/mucang/android/core/webview/HtmlExtra$b;

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/core/webview/HtmlExtra$b;->y()Lcn/mucang/android/core/webview/HtmlExtra;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/HTML5Activity;->i(Landroid/content/Context;Lcn/mucang/android/core/webview/HtmlExtra;)V

    :cond_0
    return-void
.end method

.method public static synthetic r(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->y(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    return-void
.end method

.method public static synthetic u(Landroid/view/View;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->q(Landroid/view/View;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;Landroid/view/View;)V

    return-void
.end method

.method private final w()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    const-string v2, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e"

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;-><init>()V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object v1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->n()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;->n(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;J)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final y(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, p0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-static {p0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9a8c\u6536\u5b50\u6b65\u9aa4"

    return-object v0
.end method

.method protected init()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    const-string v1, "viewBinding.statusBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->startTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->infoTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->tipTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->m()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->getTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->w()V

    return-void
.end method
