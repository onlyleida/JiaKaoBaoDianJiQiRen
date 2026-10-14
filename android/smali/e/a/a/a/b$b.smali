.class Le/a/a/a/b$b;
.super Le/a/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field g:[F

.field protected h:Landroidx/constraintlayout/widget/ConstraintAttribute;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/a/a/b;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Le/a/a/a/b$b;->g:[F

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iput-object p1, p0, Le/a/a/a/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    return-void
.end method

.method public i(Landroid/view/View;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/a/b$b;->g:[F

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/a/e;->a(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 2
    iget-object p2, p0, Le/a/a/a/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v0, p0, Le/a/a/a/b$b;->g:[F

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->j(Landroid/view/View;[F)V

    return-void
.end method
