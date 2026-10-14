.class public abstract Lf/a/a/e/a/b/c/a;
.super Lf/a/a/e/a/b/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/a/b/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcn/mucang/android/ui/framework/mvp/BaseModel;",
        ">",
        "Lf/a/a/e/a/b/c/b<",
        "Lf/a/a/e/a/b/c/a$a;",
        "TM;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/b/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcn/mucang/android/ui/framework/mvp/a;Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/framework/mvp/a;",
            "TM;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/framework/mvp/a;->a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V

    return-void
.end method

.method protected abstract e(Lcn/mucang/android/ui/framework/mvp/b;I)Lcn/mucang/android/ui/framework/mvp/a;
.end method

.method protected abstract f(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;
.end method

.method public g(Lf/a/a/e/a/b/c/a$a;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Lf/a/a/e/a/b/c/a$a;->a:Lcn/mucang/android/ui/framework/mvp/a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lf/a/a/e/a/b/c/b;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/ui/framework/mvp/BaseModel;

    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/b/c/a;->d(Lcn/mucang/android/ui/framework/mvp/a;Lcn/mucang/android/ui/framework/mvp/BaseModel;)V

    return-void
.end method

.method public h(Landroid/view/ViewGroup;I)Lf/a/a/e/a/b/c/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/b/c/a;->f(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/b/c/a;->e(Lcn/mucang/android/ui/framework/mvp/b;I)Lcn/mucang/android/ui/framework/mvp/a;

    move-result-object p2

    .line 3
    new-instance v0, Lf/a/a/e/a/b/c/a$a;

    invoke-interface {p1}, Lcn/mucang/android/ui/framework/mvp/b;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lf/a/a/e/a/b/c/a$a;-><init>(Landroid/view/View;Lcn/mucang/android/ui/framework/mvp/a;)V

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/e/a/b/c/a$a;

    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/b/c/a;->g(Lf/a/a/e/a/b/c/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/b/c/a;->h(Landroid/view/ViewGroup;I)Lf/a/a/e/a/b/c/a$a;

    move-result-object p1

    return-object p1
.end method
