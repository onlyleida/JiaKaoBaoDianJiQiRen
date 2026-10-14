.class public Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-void
.end method


# virtual methods
.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-object v0
.end method
