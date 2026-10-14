.class Landroidx/core/view/WindowInsetsCompat$d;
.super Landroidx/core/view/WindowInsetsCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$c;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$c;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method d(ILandroidx/core/graphics/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$l;->a(I)I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroidx/core/graphics/d;->e()Landroid/graphics/Insets;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(ILandroidx/core/graphics/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$c;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$l;->a(I)I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroidx/core/graphics/d;->e()Landroid/graphics/Insets;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method k(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$c;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$l;->a(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setVisible(IZ)Landroid/view/WindowInsets$Builder;

    return-void
.end method
