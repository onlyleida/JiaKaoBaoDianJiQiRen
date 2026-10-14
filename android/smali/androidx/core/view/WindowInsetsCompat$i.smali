.class Landroidx/core/view/WindowInsetsCompat$i;
.super Landroidx/core/view/WindowInsetsCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private o:Landroidx/core/graphics/d;

.field private p:Landroidx/core/graphics/d;

.field private q:Landroidx/core/graphics/d;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Landroidx/core/graphics/d;

    .line 3
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Landroidx/core/graphics/d;

    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Landroidx/core/graphics/d;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$i;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$h;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Landroidx/core/graphics/d;

    .line 7
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Landroidx/core/graphics/d;

    .line 8
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Landroidx/core/graphics/d;

    return-void
.end method


# virtual methods
.method i()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Landroidx/core/graphics/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Landroidx/core/graphics/d;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->p:Landroidx/core/graphics/d;

    return-object v0
.end method

.method k()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Landroidx/core/graphics/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Landroidx/core/graphics/d;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->o:Landroidx/core/graphics/d;

    return-object v0
.end method

.method m()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Landroidx/core/graphics/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/d;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Landroidx/core/graphics/d;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$i;->q:Landroidx/core/graphics/d;

    return-object v0
.end method

.method n(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public u(Landroidx/core/graphics/d;)V
    .locals 0

    return-void
.end method
