.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0010\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u00000\nH\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u000c\u0012\u0008\u0012\u00060\u000bR\u00020\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "desc",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "data",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierItem;",
        "getDesc",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;",
        "createData",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "BarrierBinder",
        "BarrierItem",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/drakeet/multitype/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->c:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)V

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 6
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->c:Ljava/util/List;

    return-object p0
.end method

.method private final b()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_flowers:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(R.string.teachbase_flowers)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_flower:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_trees:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "getString(R.string.teachbase_trees)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_tree:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_luyazi:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_luyazi)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_luyazi:I

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "getString(R.string.teachbase_car)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_car:I

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_people:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_people)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_people:I

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_wall:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "getString(R.string.teachbase_wall)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_wall:I

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_other_obj:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teachbase_other_obj)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_other:I

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_nothing_all:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "getString(R.string.teachbase_nothing_all)"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->icon_barrier_none:I

    const/16 v17, 0x1

    const/16 v18, 0x8

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Ljava/lang/String;IZZZILkotlin/jvm/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v2}, Lkotlin/text/l;->j0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_select_obstacle:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->l(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    const-string v0, "viewBinding"

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_1060:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->d:Lcom/drakeet/multitype/f;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->c:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->src:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->titleTv:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_nearby:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "getString(R.string.teachbase_nearby)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->src:Ljava/lang/String;

    const-string p1, "desc.src"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogChooseBarrierBinding;->confirmTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
