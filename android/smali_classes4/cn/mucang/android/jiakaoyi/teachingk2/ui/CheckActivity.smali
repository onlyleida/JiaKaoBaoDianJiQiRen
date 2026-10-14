.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$e;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005$%&\'(B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0002J\u0008\u0010\u001b\u001a\u00020\u0011H\u0014J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0014J\u0008\u0010\u001f\u001a\u00020\u0011H\u0014J\u0008\u0010 \u001a\u00020\u0011H\u0014J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\"\u001a\u00020\u0011H\u0003J\u0008\u0010#\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "checking",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "presenter",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/check/CheckSignalPresenter;",
        "resultAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "checkModule",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "ensureRealCar",
        "getStatName",
        "",
        "goingToLogin",
        "init",
        "initBusiness",
        "onBackPressed",
        "onDestroy",
        "onPause",
        "onResume",
        "onSignalChanged",
        "showResult",
        "startCheck",
        "Companion",
        "ResultItem",
        "ResultItemBinder",
        "ResultTitle",
        "ResultTitleBinder",
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
.field public static final g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;

.field private f:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;

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

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    return-void
.end method

.method private final A()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged",
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    .line 4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$g;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$g;-><init>()V

    invoke-static {v5, v6}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    :cond_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    .line 6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 8
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getLevel()I

    move-result v11

    if-ne v11, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 9
    :cond_1
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getLevel()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v6, 0x1

    .line 10
    :cond_2
    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getDesc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getLevel()I

    move-result v13

    const/4 v14, 0x0

    const/16 v9, 0x8

    const/16 v16, 0x0

    move-object v10, v15

    move-object v2, v15

    move v15, v9

    invoke-direct/range {v10 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;-><init>(Ljava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/o;)V

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;

    invoke-direct {v2, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;-><init>(Z)V

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    const/4 v2, 0x3

    if-gt v8, v2, :cond_6

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v5, "result.iterator()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v8, "iterator.next()"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    if-eqz v8, :cond_5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;->b()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    .line 18
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 19
    instance-of v10, v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    if-eqz v10, :cond_8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;->b()I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, -0x1

    :goto_4
    if-le v5, v9, :cond_d

    add-int/lit8 v2, v5, -0x1

    .line 20
    invoke-static {v4, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    if-eqz v7, :cond_b

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;->e(Z)V

    .line 21
    :goto_6
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;-><init>(Z)V

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    :cond_d
    invoke-static {v4}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    if-eqz v5, :cond_e

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;->e(Z)V

    .line 23
    :goto_8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v2, v4}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 24
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-eqz v1, :cond_11

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_detected_pass:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 26
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->l()V

    return-void

    .line 27
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->tipTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v6, :cond_12

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->jumpTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 31
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->jumpTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$showResult$3;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$showResult$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->f:Lkotlinx/coroutines/t1;

    .line 33
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->errorGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->startTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->jumpTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->errorGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->successGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->tipTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->d:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->getCheckList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private final j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCheckInt(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->checkPass(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final k()V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->a()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8f66\u8f86\u7c7b\u578b:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-lez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final l()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-virtual {v0, p0, v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->x(Landroid/app/Activity;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->onBackPressed()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->B()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->f:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->B()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->f:Lkotlinx/coroutines/t1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->l()V

    return-void
.end method

.method private final q()V
    .locals 9

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/c;

    .line 1
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->l(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->f()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->d()V

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->initRemoteSocket()V

    .line 7
    :goto_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/storage/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->c()V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->f()V

    .line 10
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->CalibrateWheel:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->h(Z)V

    .line 11
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->G()V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->a()V

    .line 13
    invoke-static {v2, v1, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->initBrakeGlobalMonitor()V

    .line 14
    :goto_1
    invoke-static {v2, v0, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->initUsbManager()V

    .line 15
    :goto_2
    invoke-static {v2, v0, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->initAiCameraManager()V

    :goto_3
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->e(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/b;

    .line 17
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 18
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    new-instance v2, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;-><init>()V

    .line 19
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/p;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/p;-><init>()V

    invoke-virtual {v2, v5}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->d(Lcn/mucang/android/jiakaoyi/framework/camera/a;)V

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$f;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$f;-><init>()V

    invoke-virtual {v2, v5}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->e(Lcn/mucang/jiakaoyi/sundial/client/o;)V

    .line 21
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 22
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->u(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->m()V

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->FaceLoginFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->g()Lcn/mucang/jiakaoyi/uilib/login/face/o;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v3

    .line 26
    :goto_4
    sget-object v2, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/o;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/o;-><init>()V

    invoke-virtual {v2, v5, v1}, Lcn/mucang/android/facelib/FaceLoginManager;->y(Lcn/mucang/android/jiakaoyi/framework/camera/a;Lcn/mucang/jiakaoyi/uilib/login/face/o;)V

    .line 27
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->j()V

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/c0;->h()V

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g()V

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->k()V

    .line 31
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;

    invoke-static {v1, v0, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;ZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->RainMode:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->g(Ljava/lang/Integer;)V

    .line 33
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfigManager;->c()V

    return-void
.end method

.method private static final r()V
    .locals 21

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v0, "DbLock"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/m/a;->q()Z

    const-wide/16 v2, 0xa

    .line 3
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/m/b;->s()Z

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 6
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a:Lcn/mucang/jiakaoyi/uilib/deduct/b0;

    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v0

    move-object v7, v11

    invoke-static/range {v4 .. v10}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->f(Lcn/mucang/jiakaoyi/uilib/deduct/b0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    sget-object v14, Lcn/mucang/jiakaoyi/uilib/rule/j0;->a:Lcn/mucang/jiakaoyi/uilib/rule/j0;

    invoke-static {v11, v12, v13}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v14

    move-object v7, v11

    invoke-static/range {v4 .. v10}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->f(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->OpenK3:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 11
    sget-object v11, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v11, v12, v13}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v0

    move-object v7, v11

    invoke-static/range {v4 .. v10}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->f(Lcn/mucang/jiakaoyi/uilib/deduct/b0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 12
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 13
    invoke-static {v11, v12, v13}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v15

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v17, v11

    invoke-static/range {v14 .. v20}, Lcn/mucang/jiakaoyi/uilib/rule/j0;->f(Lcn/mucang/jiakaoyi/uilib/rule/j0;JLcn/mucang/android/jiakaoyi/engine/model/KeMu;ZILjava/lang/Object;)V

    .line 14
    :cond_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v1

    .line 16
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 17
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/i/e;->r(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit v1

    throw v0
.end method

.method private static final s()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapData:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->MapFence:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Special:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->AutoShuttle:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->s()V

    return-void
.end method

.method public static synthetic v()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->r()V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final z(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_self_check_page:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_self_check_page)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected init()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->q()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    const-string v1, "viewBinding.statusBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->closeIv:Landroid/widget/TextView;

    const-string v1, "viewBinding.closeIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->check_ic_close:I

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_38:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 7
    invoke-static {v0, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->resultRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    .line 10
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$d;

    invoke-virtual {v0, v3, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    .line 12
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$b;

    invoke-virtual {v0, v3, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->resultRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->closeIv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->startTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->retryTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->jumpTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->errorRobotIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/e;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$5;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$5;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 20
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$6;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$6;

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->g(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 21
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->c()V

    .line 23
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$7;

    invoke-direct {v8, p0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$init$7;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->countDownCl:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->countDownCl:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;

    const-string v1, "viewBinding.countDownCl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$onBackPressed$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$onBackPressed$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->a(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutExitAppBinding;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/b;->d()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->d:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->d:Z

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->A()V

    :cond_2
    return-void
.end method
