.class public abstract Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->relativeThreshold:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->absoluteThreshold:D

    return-void
.end method


# virtual methods
.method public abstract converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation
.end method

.method public getAbsoluteThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->absoluteThreshold:D

    return-wide v0
.end method

.method public getRelativeThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->relativeThreshold:D

    return-wide v0
.end method
