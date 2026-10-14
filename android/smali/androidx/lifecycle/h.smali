.class public final Landroidx/lifecycle/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/y0;


# instance fields
.field private a:Z

.field private final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/x<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static final synthetic a(Landroidx/lifecycle/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/h;->c()V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/h;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/x;

    iget-object v1, p0, Landroidx/lifecycle/h;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->q(Landroidx/lifecycle/LiveData;)V

    const/4 v0, 0x0

    throw v0
.end method
