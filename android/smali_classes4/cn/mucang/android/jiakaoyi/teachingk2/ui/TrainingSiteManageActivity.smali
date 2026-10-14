.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;
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
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0014J\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0018\u0010\u0018\u001a\u00020\r*\u00060\u0019R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "coach",
        "",
        "getCoach",
        "()Z",
        "coach$delegate",
        "Lkotlin/Lazy;",
        "changeEnable",
        "",
        "data",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getStatName",
        "",
        "init",
        "loadData",
        "showPlanDialog",
        "item",
        "syncData",
        "enableExamSite",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;",
        "Companion",
        "TrainingItemBinder",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private final c:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$coach$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$coach$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->c:Lkotlin/f;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->n(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Landroid/view/View;)V

    return-void
.end method

.method private final C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/p0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/p0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/h0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/h0;->q()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->l(Ljava/util/List;)V

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s0;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Ljava/util/List;)V

    invoke-direct {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/t0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/t0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final E(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    return-void
.end method

.method private final G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/n0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/n0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 2
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 3
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/r0;

    invoke-direct {v7, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/r0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const-string v2, "\u5f53\u524d\u8bad\u7ec3\u573a\u8fd8\u672a\u542f\u7528\u6559\u5b66\u65b9\u6848\uff0c\u8bf7\u5148\u542f\u7528\u6559\u5b66\u65b9\u6848"

    const-string v3, ""

    const-string v4, "\u53d6\u6d88"

    const/4 v5, 0x0

    const-string v6, "\u786e\u5b9a"

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v11

    .line 4
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 5
    invoke-direct {v0, p0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final I(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->o()Z

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;->a(Landroid/content/Context;ZLcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/q0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/q0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, v1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;IILandroid/content/Intent;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/c1;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/c1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const-string p0, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e"

    const-string p1, "\u52a0\u8f7d\u6570\u636e\u9519\u8bef"

    invoke-virtual {p2, p3, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->L(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private final L(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    .line 3
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/b1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/b1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-direct {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->f()V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/z;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->l(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->o()Z

    move-result p0

    return p0
.end method

.method private final l(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v5, 0x0

    .line 3
    iput-boolean v5, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->enable:Z

    .line 4
    iget-wide v5, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v7, v5, v0

    if-nez v7, :cond_0

    .line 5
    iput-boolean v4, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->enable:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$b;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private final m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/d1;

    invoke-direct {v1, p2, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/d1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    const-string p1, "\u6b63\u5728\u52a0\u8f7d\u6570\u636e"

    const-string p2, "\u52a0\u8f7d\u6570\u636e\u9519\u8bef"

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 10

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_enableExamSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "this$0"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;-><init>()V

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;->m(J)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_5

    .line 2
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    .line 4
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    if-ne v5, v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    const/4 v4, 0x0

    goto :goto_4

    .line 5
    :cond_2
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    if-eqz v4, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    move-object p1, v2

    .line 8
    :goto_5
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_b

    if-nez p1, :cond_9

    goto :goto_6

    .line 9
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    .line 10
    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_a

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "\u627e\u5230\u5386\u53f2\u542f\u7528\u65b9\u6848\u4ecd\u6709\u6548\uff1a"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_e

    if-nez p1, :cond_c

    goto :goto_8

    .line 12
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    if-ne v1, v0, :cond_d

    goto :goto_9

    .line 13
    :cond_d
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->d(JJ)V

    .line 14
    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->G(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    goto :goto_d

    :cond_e
    :goto_9
    if-nez v2, :cond_13

    if-nez p1, :cond_f

    :goto_a
    move-wide v0, v4

    goto :goto_b

    .line 15
    :cond_f
    invoke-static {p1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u6709\u6548\u7684\u5386\u53f2\u542f\u7528\u65b9\u6848\uff0c\u4f46\u5217\u8868\u7b26\u5408\u6761\u4ef6\u7684\u53ea\u6709\u4e00\u4e2a\uff0c\u76f4\u63a5\u542f\u7528\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    if-nez p1, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {p1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    if-nez p1, :cond_12

    goto :goto_c

    :cond_12
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    :goto_c
    invoke-static {v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->d(JJ)V

    .line 17
    :cond_13
    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->L(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    :goto_d
    return-void
.end method

.method private final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->C()V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->H(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->D(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->J(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->I(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->E(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->F(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->M(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->K(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bad\u7ec3\u573a\u7ba1\u7406"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    .line 4
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/o0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/o0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;->C()V

    return-void
.end method
