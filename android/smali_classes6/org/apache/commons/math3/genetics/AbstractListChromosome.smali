.class public abstract Lorg/apache/commons/math3/genetics/AbstractListChromosome;
.super Lorg/apache/commons/math3/genetics/Chromosome;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/genetics/Chromosome;"
    }
.end annotation


# instance fields
.field private final representation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/genetics/Chromosome;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->checkValidity(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->representation:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected abstract checkValidity(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/genetics/InvalidRepresentationException;
        }
    .end annotation
.end method

.method public getLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getRepresentation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->representation:Ljava/util/List;

    return-object v0
.end method

.method public abstract newFixedLengthChromosome(Ljava/util/List;)Lorg/apache/commons/math3/genetics/AbstractListChromosome;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lorg/apache/commons/math3/genetics/AbstractListChromosome<",
            "TT;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/AbstractListChromosome;->getRepresentation()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(f=%s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
