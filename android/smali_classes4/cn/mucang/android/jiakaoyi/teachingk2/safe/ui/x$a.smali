.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0012\u0012\u0008\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog$BarrierItem;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/ChooseBarrierDialog;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;->p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    const-string p4, "$item"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$1"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$holder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->e()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->g(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->d()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    .line 5
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->d()Z

    move-result p4

    if-nez p4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->e()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->f(Z)V

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->b()Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 8
    invoke-virtual {p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->g(Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Lcom/drakeet/multitype/c;->a()Lcom/drakeet/multitype/f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p2}, Lcom/drakeet/multitype/c;->a()Lcom/drakeet/multitype/f;

    move-result-object p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->descTv:Landroid/widget/TextView;

    const-string v1, "holder.viewBinding.descTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->selector_barrier_choice:I

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->h(Landroid/widget/TextView;II)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemChooseBarrierBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/a;

    invoke-direct {v2, p2, v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x$a;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
