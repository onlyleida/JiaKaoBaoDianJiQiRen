.class public final Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;",
        "getStatName",
        "",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "uilib_release"
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
.field public static final d:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

.field private b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->d:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;)Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->r(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;JLjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->p(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;JLjava/util/List;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->s(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->n(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->o(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->q(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->onBackPressed()V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$keMu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;JLjava/util/List;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 4
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->a()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long v7, v5, p2

    if-nez v7, :cond_2

    .line 6
    invoke-virtual {v4, v3}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->c(Z)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    .line 8
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/siterule/e0;

    invoke-virtual {p2, v3}, Lcn/mucang/jiakaoyi/uilib/siterule/e0;->c(Z)V

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p1, p4}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_6

    .line 12
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_2

    :cond_5
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_6
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_2
    return-void

    :cond_7
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    const-string v1, "AddRuleExamSite"

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/d0;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;-><init>()V

    .line 3
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;

    invoke-direct {p3, p0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, p3}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;->y(Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "it.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;->Service:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;

    invoke-direct {p1, p3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;-><init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;)V

    .line 6
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;

    invoke-direct {p3, p0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$2$1;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->i(Lkotlin/jvm/b/a;)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/d0;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;-><init>()V

    .line 9
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$3$1;

    invoke-direct {p3, p0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$onCreate$3$3$1;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, p3}, Lcn/mucang/jiakaoyi/uilib/siterule/d0;->y(Lkotlin/jvm/b/l;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8003\u8bd5\u8bc4\u5224\u89c4\u5219\u8bbe\u7f6e"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026uleViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 4
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "showAddExam"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "isAgent"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->addExamRuleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "keMu"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 9
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;

    invoke-direct {v3, p1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    .line 10
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/a0;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u9009\u62e9\u89c4\u5219"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/b0;

    invoke-direct {v5, p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {v4, v5}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 13
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->addExamRuleTv:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/z;

    invoke-direct {v5, p0, v2, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/z;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    .line 14
    invoke-static {p1, v4, v5, v2, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JILjava/lang/Object;)J

    move-result-wide v4

    .line 15
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamSiteRuleSwitchActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    const-string v2, "viewModel"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->i()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/siterule/y;

    invoke-direct {v6, p0, v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/siterule/y;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity$c;J)V

    invoke-virtual {v0, p0, v6}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/siterule/c0;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/c0;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/siterule/x;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/x;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 20
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchExamSiteRuleActivity;->b:Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
