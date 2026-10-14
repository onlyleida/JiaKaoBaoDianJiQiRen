.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;
.super Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method

.method public b()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentAlpha()F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentFraction()F

    move-result v0

    return v0
.end method

.method public d()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getTypes()I

    move-result v0

    return v0
.end method

.method h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    return v0
.end method

.method public j(Landroidx/core/graphics/d;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/core/graphics/d;->e()Landroid/graphics/Insets;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method
