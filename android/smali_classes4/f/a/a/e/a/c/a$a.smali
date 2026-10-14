.class Lf/a/a/e/a/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/a/c/a;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a/a/e/a/c/a;


# direct methods
.method constructor <init>(Lf/a/a/e/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0}, Lf/a/a/e/a/c/a;->w(Lf/a/a/e/a/c/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0}, Lf/a/a/e/a/c/a;->y(Lf/a/a/e/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0, v1}, Lf/a/a/e/a/c/a;->x(Lf/a/a/e/a/c/a;Z)Z

    .line 4
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0}, Lf/a/a/e/a/c/a;->z(Lf/a/a/e/a/c/a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf/a/a/e/a/c/a;->G(Landroid/os/Bundle;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0}, Lf/a/a/e/a/c/a;->A(Lf/a/a/e/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-virtual {v0}, Lf/a/a/e/a/c/a;->E()V

    .line 7
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0}, Lf/a/a/e/a/c/a;->y(Lf/a/a/e/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-static {v0, v1}, Lf/a/a/e/a/c/a;->B(Lf/a/a/e/a/c/a;Z)Z

    .line 9
    iget-object v0, p0, Lf/a/a/e/a/c/a$a;->a:Lf/a/a/e/a/c/a;

    invoke-virtual {v0}, Lf/a/a/e/a/c/a;->F()V

    :cond_2
    return-void
.end method
