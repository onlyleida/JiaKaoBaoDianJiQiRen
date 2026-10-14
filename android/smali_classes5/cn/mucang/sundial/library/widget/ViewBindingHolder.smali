.class public final Lcn/mucang/sundial/library/widget/ViewBindingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/a;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$c0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\u00028\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "Landroidx/viewbinding/a;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        "viewBinding",
        "Landroidx/viewbinding/a;",
        "getViewBinding",
        "()Landroidx/viewbinding/a;",
        "<init>",
        "(Landroidx/viewbinding/a;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final viewBinding:Landroidx/viewbinding/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewbinding/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/viewbinding/a;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->viewBinding:Landroidx/viewbinding/a;

    return-void
.end method


# virtual methods
.method public final getViewBinding()Landroidx/viewbinding/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->viewBinding:Landroidx/viewbinding/a;

    return-object v0
.end method
