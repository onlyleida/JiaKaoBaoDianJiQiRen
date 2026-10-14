.class public Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->j()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->j()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$d;->a()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->j()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/PermissionUtils$d;->b()V

    :goto_0
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->k(Lcom/blankj/utilcode/util/PermissionUtils$d;)Lcom/blankj/utilcode/util/PermissionUtils$d;

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->a()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 7
    :cond_3
    new-instance p1, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity$a;

    invoke-direct {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity$a;-><init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;)V

    const-wide/16 p2, 0x64

    invoke-static {p1, p2, p3}, Lcom/blankj/utilcode/util/Utils;->l(Ljava/lang/Runnable;J)V

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x40010

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "PermissionUtils"

    const-string v0, "request permissions failed"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->d(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->d(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/blankj/utilcode/util/PermissionUtils$e;->a(Landroid/app/Activity;)V

    .line 9
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->e(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 12
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 14
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->g(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->h(Landroid/app/Activity;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const-string p1, "Argument \'permissions\' of type String[] (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    .line 1
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Argument \'grantResults\' of type int[] (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    .line 2
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->f(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->c()Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/PermissionUtils;->i(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
