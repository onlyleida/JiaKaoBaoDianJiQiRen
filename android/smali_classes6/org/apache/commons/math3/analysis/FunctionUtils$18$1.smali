.class Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$18;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$18;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 11

    .line 1
    array-length v6, p1

    .line 2
    new-array v7, v6, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_0

    .line 3
    new-instance v10, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x1

    aget-wide v4, p1, v9

    move-object v0, v10

    move v1, v6

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$18$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/FunctionUtils$18;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p1, v7}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 5
    array-length v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v6, v1, v2

    aput v0, v1, v8

    const-class v0, D

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 6
    new-array v1, v6, [I

    const/4 v3, 0x0

    .line 7
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_1

    .line 8
    aput v2, v1, v4

    .line 9
    aget-object v5, v0, v3

    aget-object v7, p1, v3

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v9

    aput-wide v9, v5, v4

    .line 10
    aput v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
