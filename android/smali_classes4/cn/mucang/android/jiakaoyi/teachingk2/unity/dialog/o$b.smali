.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog$SubStepBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/HighErrorDialog;)V",
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;->p(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;I)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighErrorBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighErrorBinding;->subStepRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    :goto_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;)V

    return-void

    :cond_1
    const-string p0, "viewBinding"

    .line 4
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;->stepName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepPhaseName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;->stepName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemErrorSubStepBinding;->stepName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/h;

    invoke-direct {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
