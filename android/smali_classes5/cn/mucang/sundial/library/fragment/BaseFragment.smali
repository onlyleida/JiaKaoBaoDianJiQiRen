.class public abstract Lcn/mucang/sundial/library/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J-\u0010\u000b\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/sundial/library/fragment/BaseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/m0$a;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/m0$a;",
        "Landroidx/lifecycle/a;",
        "T",
        "Landroidx/lifecycle/o0;",
        "owner",
        "Ljava/lang/Class;",
        "vmClass",
        "vm",
        "(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;",
        "Landroidx/lifecycle/m0$b;",
        "vmFactory",
        "()Landroidx/lifecycle/m0$b;",
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
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final getViewModelFactory()Landroidx/lifecycle/m0$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/m0$a;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/m0$a;

    move-result-object v0

    const-string v1, "ViewModelProvider.Androi\u2026(activity?.application!!)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/a;",
            ">(",
            "Landroidx/lifecycle/o0;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vmClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->vmFactory()Landroidx/lifecycle/m0$b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "ViewModelProvider(owner, vmFactory()).get(vmClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/a;

    return-object p1
.end method

.method protected vmFactory()Landroidx/lifecycle/m0$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/fragment/BaseFragment;->getViewModelFactory()Landroidx/lifecycle/m0$a;

    move-result-object v0

    return-object v0
.end method
