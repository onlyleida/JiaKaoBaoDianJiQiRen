.class public Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSubHyperplane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TU;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0
.end method
