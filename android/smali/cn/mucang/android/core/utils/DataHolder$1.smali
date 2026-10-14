.class Lcn/mucang/android/core/utils/DataHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field final synthetic a:Landroidx/lifecycle/Lifecycle$Event;

.field final synthetic b:J

.field final synthetic c:Landroidx/lifecycle/r;

.field final synthetic d:Lcn/mucang/android/core/utils/i;


# virtual methods
.method public b(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/utils/DataHolder$1;->a:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/utils/DataHolder$1;->d:Lcn/mucang/android/core/utils/i;

    iget-wide v0, p0, Lcn/mucang/android/core/utils/DataHolder$1;->b:J

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/i;->a(Lcn/mucang/android/core/utils/i;J)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/utils/DataHolder$1;->c:Landroidx/lifecycle/r;

    invoke-interface {p1}, Landroidx/lifecycle/r;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/q;)V

    :cond_0
    return-void
.end method
