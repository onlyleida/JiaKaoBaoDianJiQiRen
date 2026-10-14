.class public abstract Lf/a/a/e/a/c/a;
.super Lf/a/a/e/a/c/b;
.source "SourceFile"


# instance fields
.field private d:Landroid/view/ViewStub;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/c/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/a/c/a;->d:Landroid/view/ViewStub;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lf/a/a/e/a/c/a;->e:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lf/a/a/e/a/c/a;->f:Z

    .line 5
    iput-boolean v1, p0, Lf/a/a/e/a/c/a;->g:Z

    .line 6
    iput-object v0, p0, Lf/a/a/e/a/c/a;->h:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic A(Lf/a/a/e/a/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf/a/a/e/a/c/a;->g:Z

    return p0
.end method

.method static synthetic B(Lf/a/a/e/a/c/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/a/a/e/a/c/a;->g:Z

    return p1
.end method

.method private C()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/a/a/e/a/c/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/a/a/e/a/c/a;->f:Z

    .line 3
    iget-object v0, p0, Lf/a/a/e/a/c/a;->h:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lf/a/a/e/a/c/a;->G(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lf/a/a/e/a/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf/a/a/e/a/c/a;->f:Z

    return p0
.end method

.method static synthetic x(Lf/a/a/e/a/c/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/a/a/e/a/c/a;->f:Z

    return p1
.end method

.method static synthetic y(Lf/a/a/e/a/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf/a/a/e/a/c/a;->e:Z

    return p0
.end method

.method static synthetic z(Lf/a/a/e/a/c/a;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/a/c/a;->h:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method protected D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/a/a/e/a/c/b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected E()V
    .locals 0

    return-void
.end method

.method protected abstract F()V
.end method

.method protected G(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    sget v0, Lcn/mucang/android/framework/core/R$id;->view_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lf/a/a/e/a/c/a;->d:Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected H()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/a/c/a;->D()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/a/a/e/a/c/a;->E()V

    .line 3
    iget-boolean v0, p0, Lf/a/a/e/a/c/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lf/a/a/e/a/c/a;->g:Z

    .line 5
    invoke-virtual {p0}, Lf/a/a/e/a/c/a;->F()V

    :cond_1
    return-void
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/a/a/e/a/c/a;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lf/a/a/e/a/c/a;->g:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lf/a/a/e/a/c/b;->c:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lf/a/a/e/a/c/a;->C()V

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/a/c/a;->H()V

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf/a/a/e/a/c/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lf/a/a/e/a/c/a;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "allow-load"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lf/a/a/e/a/c/a;->e:Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/a/a/e/a/c/a;->D()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    new-instance v0, Lf/a/a/e/a/c/a$a;

    invoke-direct {v0, p0}, Lf/a/a/e/a/c/a$a;-><init>(Lf/a/a/e/a/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lf/a/a/e/a/c/a;->e:Z

    const-string v1, "allow-load"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
