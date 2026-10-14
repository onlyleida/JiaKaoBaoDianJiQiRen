.class public abstract Lf/a/a/e/a/c/b;
.super Lcn/mucang/android/core/config/q;
.source "SourceFile"


# instance fields
.field protected b:Landroid/view/View;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/q;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Lf/a/a/e/a/c/b;->t(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lf/a/a/e/a/c/b;->c:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/core/config/q;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lf/a/a/e/a/c/b;->s()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    return-object p1
.end method

.method protected r(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract s()I
.end method

.method protected abstract t(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public u(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public v(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
