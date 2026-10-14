.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$c;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0012\u0012\u0008\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0017\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$ShowStepMenuItem;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$Menu;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$c;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Landroid/view/View;)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;->a()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;->e(Z)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$c;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;->menuTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_expend:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->collect_ic_close:I

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;->menuTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h1;

    invoke-direct {v1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$b;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
