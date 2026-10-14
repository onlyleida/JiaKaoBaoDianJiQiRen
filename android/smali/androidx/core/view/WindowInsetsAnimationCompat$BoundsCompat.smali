.class public final Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundsCompat"
.end annotation


# instance fields
.field private final mLowerBound:Landroidx/core/graphics/d;

.field private final mUpperBound:Landroidx/core/graphics/d;


# direct methods
.method private constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$b;->k(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/d;

    .line 6
    invoke-static {p1}, Landroidx/core/view/WindowInsetsAnimationCompat$b;->j(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/d;

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/d;Landroidx/core/graphics/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/d;

    .line 3
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/d;

    return-void
.end method

.method public static toBoundsCompat(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-object v0
.end method


# virtual methods
.method public getLowerBound()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/d;

    return-object v0
.end method

.method public getUpperBound()Landroidx/core/graphics/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/d;

    return-object v0
.end method

.method public inset(Landroidx/core/graphics/d;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 6

    .line 1
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/d;

    iget v2, p1, Landroidx/core/graphics/d;->a:I

    iget v3, p1, Landroidx/core/graphics/d;->b:I

    iget v4, p1, Landroidx/core/graphics/d;->c:I

    iget v5, p1, Landroidx/core/graphics/d;->d:I

    .line 2
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/d;IIII)Landroidx/core/graphics/d;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/d;

    iget v3, p1, Landroidx/core/graphics/d;->a:I

    iget v4, p1, Landroidx/core/graphics/d;->b:I

    iget v5, p1, Landroidx/core/graphics/d;->c:I

    iget p1, p1, Landroidx/core/graphics/d;->d:I

    .line 3
    invoke-static {v2, v3, v4, v5, p1}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/d;IIII)Landroidx/core/graphics/d;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/d;Landroidx/core/graphics/d;)V

    return-object v0
.end method

.method public toBounds()Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$b;->i(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Landroidx/core/graphics/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Landroidx/core/graphics/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
