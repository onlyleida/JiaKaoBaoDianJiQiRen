.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadingMoreItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;",
        "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;->p(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;Landroid/view/View;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->a()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->b()Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemLoadMoreBinding;->stateTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/f;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/f;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
