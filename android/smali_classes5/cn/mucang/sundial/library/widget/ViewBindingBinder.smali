.class public abstract Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.super Lme/drakeet/multitype/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VB::",
        "Landroidx/viewbinding/a;",
        ">",
        "Lme/drakeet/multitype/b<",
        "TT;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
        "TVB;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00050\u0004B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "T",
        "Landroidx/viewbinding/a;",
        "VB",
        "Lme/drakeet/multitype/b;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "onCreateViewHolder",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/drakeet/multitype/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/widget/ViewBindingBinder;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/sundial/library/widget/ViewBindingHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "TVB;>;"
        }
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/widget/ViewBindingCreator;

    invoke-direct {v0}, Lcn/mucang/sundial/library/widget/ViewBindingCreator;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/sundial/library/widget/ViewBindingCreator;->onCreateView(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;

    move-result-object p1

    .line 3
    new-instance p2, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    invoke-direct {p2, p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;-><init>(Landroidx/viewbinding/a;)V

    return-object p2
.end method
