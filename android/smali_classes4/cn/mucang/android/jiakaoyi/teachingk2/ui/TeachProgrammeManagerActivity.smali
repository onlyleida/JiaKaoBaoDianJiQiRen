.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;
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
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0011\u0010\u0019\u001a\u00020\u0017H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "coach",
        "",
        "getCoach",
        "()Z",
        "coach$delegate",
        "Lkotlin/Lazy;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "listViewModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;",
        "enableProgramme",
        "item",
        "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getStatName",
        "",
        "init",
        "",
        "onBackPressed",
        "syncRes",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "TeachPlanItemBinder",
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
.field public static final f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private final c:Lkotlin/f;

.field private d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$a;

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

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$coach$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$coach$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->c:Lkotlin/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->n()Z

    move-result p0

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    return-object p0
.end method

.method private final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->onBackPressed()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->a(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    return-void

    :cond_0
    const-string p0, "listViewModel"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6559\u5b66\u65b9\u6848\u5217\u8868"

    return-object v0
.end method

.method protected init()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key.trainSite"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    move-wide v0, v3

    goto :goto_1

    .line 3
    :cond_1
    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    :goto_1
    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    const-string v0, "\u573a\u5730 id \u9519\u8bef"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6559\u5b66\u65b9\u6848\u5217\u8868"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/l0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/l0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    .line 9
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-virtual {v0, v3, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->addPlan:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->addPlan:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;->addPlan:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/k0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/k0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026istViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    const-string v1, "listViewModel"

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/j0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/j0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/c0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/c0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->c(J)V

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public final m(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/c;)V

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$enableProgramme$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    .line 6
    :goto_1
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->d:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v2}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    if-eqz v4, :cond_0

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->id:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 8
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 9
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/b0;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v2, "\u8fd8\u672a\u542f\u7528\u6559\u5b66\u65b9\u6848\uff0c\u8bf7\u5148\u542f\u7528\u6559\u5b66\u65b9\u6848"

    const-string v3, ""

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u786e\u5b9a"

    move-object v1, v11

    .line 10
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 11
    invoke-direct {v0, p0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public final y(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$syncRes$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$syncRes$2;-><init>(Lkotlin/coroutines/c;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
