.class public Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;,
        Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private attribute:Ljava/lang/Object;

.field private cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field

.field private plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 9
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 10
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 11
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 15
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 16
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 18
    iput-object p4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    .line 19
    iput-object p0, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 20
    iput-object p0, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void
.end method

.method private chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez p1, :cond_0

    .line 6
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 7
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 8
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 9
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 10
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez p1, :cond_0

    .line 6
    invoke-interface {p2, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 7
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 8
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 9
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 10
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private condense()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v2, :cond_3

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    :cond_2
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :cond_3
    return-void
.end method

.method private fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    .line 5
    :goto_1
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v1, :cond_1

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    .line 5
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 7
    iput-object p3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz p4, :cond_2

    .line 8
    iput-object p1, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 9
    :cond_2
    iput-object p1, p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 10
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p4, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 v0, 0x1

    invoke-direct {p3, p4, p2, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 11
    iget-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object p4, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 v0, 0x0

    invoke-direct {p3, p4, p2, p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 12
    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 13
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p2, :cond_4

    .line 14
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    :cond_4
    return-object p1
.end method

.method private recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    neg-double v2, p2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0

    :cond_0
    cmpl-double v2, v0, p2

    if-lez v2, :cond_1

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getAttribute()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-object v0
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, p2

    if-gez v4, :cond_1

    return-object p0

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public getCell(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "TS;>;D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->recurseCloseCuts(Lorg/apache/commons/math3/geometry/Point;DLjava/util/List;)V

    return-object v0
.end method

.method public getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->fitToCell(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 7
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 8
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 9
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 10
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 12
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 13
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    const/4 p1, 0x0

    return p1
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$1;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    return-void
.end method

.method public insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
            "TS;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz p1, :cond_5

    move-object p1, p0

    .line 6
    :goto_1
    iget-object p2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    .line 8
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne p1, v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 11
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffMinus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 13
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 14
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->chopOffPlus(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    .line 15
    :goto_2
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez p2, :cond_3

    .line 16
    invoke-interface {p3, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;->fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    .line 17
    iget-object v0, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 18
    iget-object v1, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 19
    iget-object v1, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 20
    iget-object p2, p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    if-nez v0, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 22
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    :cond_5
    return-void
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    return-object p1
.end method

.method public pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    .line 2
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    .line 5
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-ne p1, v3, :cond_0

    .line 6
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, v0, v2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v3, v1, v2, v0, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    :goto_1
    move-object v0, v3

    .line 8
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    .line 5
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v3

    .line 6
    sget-object v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 7
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    .line 9
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {v2, p1, v4, v3, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    .line 10
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 11
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 12
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 13
    iget-object v1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v1, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 14
    iput-object p1, v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 15
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 16
    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 17
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 18
    iget-object p1, v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    return-object v2

    .line 19
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v1, :cond_4

    .line 21
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 22
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 23
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 25
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 26
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_1
    return-object p1

    .line 27
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->split(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v1, :cond_6

    .line 29
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 30
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 31
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_2

    .line 32
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->attribute:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 33
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->condense()V

    .line 34
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->parent:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_2
    return-object p1
.end method

.method public visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->cut:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 9
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 11
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 12
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 13
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 14
    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 15
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 16
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 17
    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 18
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 19
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    goto :goto_0

    .line 20
    :pswitch_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->plus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 21
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->minus:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;->visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
