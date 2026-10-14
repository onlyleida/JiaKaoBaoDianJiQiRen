.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

.field final synthetic val$k:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iput p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 12

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    .line 3
    iget v5, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->val$k:I

    if-ne v3, v5, :cond_0

    .line 4
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-wide v10, p1, v3

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v4, v1, v3

    goto :goto_1

    .line 5
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v6, p1, v3

    invoke-direct {v5, v4, v4, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    aput-object v5, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    new-array v0, v4, [I

    aput v4, v0, v2

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v0

    return-wide v0
.end method
