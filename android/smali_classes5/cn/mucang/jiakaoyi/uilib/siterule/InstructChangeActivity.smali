.class public final Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "dataList",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;",
        "getViewModel",
        "()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;",
        "setViewModel",
        "(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;)V",
        "getStatName",
        "",
        "init",
        "",
        "onBackPressed",
        "showConfirmDialog",
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
.field public static final f:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field public c:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

.field private final d:Lcom/drakeet/multitype/f;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->f:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$a;

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

    iput-object v6, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->d:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    return-void
.end method

.method private final A()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->k()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u653e\u5f03\u672c\u6b21\u6307\u4ee4\u4fee\u6539?"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/h;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/h;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object p1

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->m(Ljava/util/List;)V

    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->A()V

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/util/List;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->b2Steps()Ljava/util/List;

    move-result-object v0

    const-string v3, "b2Steps()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->motoSteps()Ljava/util/List;

    move-result-object v0

    const-string v3, "motoSteps()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 10
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v0

    const-string v3, "k2Steps()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 14
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_BianXianShiBie:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "it"

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 18
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    .line 20
    iget v6, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v7, v5, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->type:I

    if-ne v6, v7, :cond_9

    .line 21
    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->stepAliasName:Ljava/lang/String;

    .line 22
    :cond_a
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    invoke-direct {v5, v1, v3}, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 23
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 25
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 26
    :cond_c
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_d
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->d:Lcom/drakeet/multitype/f;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->k()Landroidx/lifecycle/z;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->l()V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->k(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->o(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->p(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->l(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->B(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->q(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->n(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->m(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9879\u76ee\u6307\u4ee4\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ngeViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->z(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9879\u76ee\u6307\u4ee4\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v1, "\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/d;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/d;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/g;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/g;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/e;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/e;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/f;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/i;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/i;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/k;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/k;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->d:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/f0;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/j;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/siterule/j;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/f0;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 12
    const-class v2, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/InstructChangeBinding;->instructRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->l()V

    return-void
.end method

.method public final j()Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->c:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->A()V

    return-void
.end method

.method public final z(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeActivity;->c:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    return-void
.end method
