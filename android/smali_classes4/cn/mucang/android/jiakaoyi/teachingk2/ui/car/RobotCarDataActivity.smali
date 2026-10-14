.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0014J\u0008\u0010\u000e\u001a\u00020\u000bH\u0014J\u0008\u0010\u000f\u001a\u00020\u000bH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "model",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;",
        "getStatName",
        "",
        "init",
        "",
        "loadCarData",
        "onDestroy",
        "onResume",
        "renderView",
        "Companion",
        "teachbase_release"
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->y()V

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->z()V

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/y;

    invoke-direct {v8, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/y;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V

    const-string v3, "\u63d0\u793a"

    const-string v4, "\u5220\u9664\u540e\u5c06\u65e0\u6cd5\u6062\u590d\uff0c\u662f\u5426\u786e\u5b9a\u5220\u9664?"

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
    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->id:J

    :goto_0
    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    const-string p0, "\u8f66\u8eab\u6570\u636e\u5f02\u5e38,\u65e0\u6cd5\u5220\u9664"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "\u6b63\u5728\u5220\u9664..."

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$init$2$1$1;

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$init$2$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_2
    const-string p0, "loadingDialog"

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity;->d:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeManagerActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;->d:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Landroid/view/View;)V

    return-void
.end method

.method private final y()V
    .locals 8

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$loadCarData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$loadCarData$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$loadCarData$2;

    invoke-direct {v5, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$loadCarData$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final z()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->infoGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->emptyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->modelCode:Ljava/lang/String;

    :goto_0
    invoke-static {v4, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->q(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->infoGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->emptyTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->carTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->carDesc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->acquisitionTime:J

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 10
    invoke-static {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 11
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    \u5907\u6ce8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->describe:Ljava/lang/String;

    .line 13
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u8eab\u6570\u636e\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8f66\u8eab\u6570\u636e\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/z;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/z;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->delete:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/x;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/x;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->modelCarDb:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarDataBinding;->previewTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/a0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/a0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->h()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u8f66\u5b50\u6ca1\u6709\u8f66\u8eab\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->getCarSrcData()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->h(Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;->y()V

    return-void
.end method
