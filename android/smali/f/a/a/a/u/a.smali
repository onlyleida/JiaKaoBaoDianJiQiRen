.class public abstract Lf/a/a/a/u/a;
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
        "Lf/a/a/a/u/c<",
        "TVB;>;>;"
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
.method protected bridge synthetic onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/a/a/a/u/a;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf/a/a/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf/a/a/a/u/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lf/a/a/a/u/c<",
            "TVB;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lf/a/a/a/u/b;

    invoke-direct {v0}, Lf/a/a/a/u/b;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lf/a/a/a/u/b;->b(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/a;

    move-result-object p1

    .line 3
    new-instance p2, Lf/a/a/a/u/c;

    invoke-direct {p2, p1}, Lf/a/a/a/u/c;-><init>(Landroidx/viewbinding/a;)V

    return-object p2
.end method
