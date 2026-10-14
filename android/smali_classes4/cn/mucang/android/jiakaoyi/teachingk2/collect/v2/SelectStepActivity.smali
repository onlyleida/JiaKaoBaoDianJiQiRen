.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0008\tB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "StepItemBinder",
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
.field public static final b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9009\u62e9\u9879\u76ee"

    return-object v0
.end method

.method protected init()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u9879\u76ee"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/y0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/y0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivitySelectStepBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;)V

    .line 6
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v7, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->b2RobotSteps()Ljava/util/List;

    move-result-object v1

    const-string v2, "b2RobotSteps()"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->robotSteps()Ljava/util/List;

    move-result-object v1

    const-string v2, "robotSteps()"

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 8
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
