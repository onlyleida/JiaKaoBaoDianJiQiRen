.class public Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;
.super Lcn/mucang/sundial/library/activity/TopActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ-\u0010\u0016\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\"\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001d\"\n\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u001bH\u0085\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;",
        "Lcn/mucang/sundial/library/activity/TopActivity;",
        "Landroidx/lifecycle/m0$a;",
        "getViewModelFactory",
        "()Landroidx/lifecycle/m0$a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lkotlin/v;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initData",
        "()V",
        "initViewModel",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
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
        "Landroidx/lifecycle/j0;",
        "VM",
        "Lkotlin/f;",
        "()Lkotlin/f;",
        "<init>",
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
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/TopActivity;-><init>()V

    return-void
.end method

.method private final getViewModelFactory()Landroidx/lifecycle/m0$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/m0$a;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/m0$a;

    move-result-object v0

    const-string v1, "ViewModelProvider.Androi\u2026.getInstance(application)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public initData()V
    .locals 0

    return-void
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->initData()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->initViewModel()V

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

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

    invoke-virtual {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->vmFactory()Landroidx/lifecycle/m0$b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "ViewModelProvider(owner, vmFactory()).get(vmClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/a;

    return-object p1
.end method

.method protected final synthetic vm()Lkotlin/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/j0;",
            ">()",
            "Lkotlin/f<",
            "TVM;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity$vm$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity$vm$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;)V

    const/4 v0, 0x4

    const-string v1, "VM"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->j(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected vmFactory()Landroidx/lifecycle/m0$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->getViewModelFactory()Landroidx/lifecycle/m0$a;

    move-result-object v0

    return-object v0
.end method
