.class public Lf/a/a/e/a/c/c/d/b;
.super Lf/a/a/e/a/c/c/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$i;


# virtual methods
.method public a(I)Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->c:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lf/a/a/e/a/c/c/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/e/a/c/c/a;

    .line 4
    instance-of v0, p1, Lf/a/a/e/a/c/c/d/a;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lf/a/a/e/a/c/c/d/a;

    invoke-virtual {p1}, Lf/a/a/e/a/c/c/d/a;->b()Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$g;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method
