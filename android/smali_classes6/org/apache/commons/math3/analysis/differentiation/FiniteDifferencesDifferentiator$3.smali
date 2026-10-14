.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[[D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object p1

    return-object p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    sub-double/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_3

    .line 5
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    int-to-double v8, v4

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v8, v0

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object v5

    if-nez v4, :cond_0

    .line 6
    array-length v3, v5

    aget-object v8, v5, v2

    array-length v8, v8

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v9}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v9

    const/4 v10, 0x3

    new-array v10, v10, [I

    aput v9, v10, v6

    aput v8, v10, v7

    aput v3, v10, v2

    const-class v3, D

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[D

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    const/4 v7, 0x0

    .line 8
    :goto_2
    aget-object v8, v5, v6

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 9
    aget-object v8, v3, v6

    aget-object v8, v8, v7

    aget-object v9, v5, v6

    aget-wide v10, v9, v7

    aput-wide v10, v8, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_3
    array-length v4, v3

    aget-object v5, v3, v2

    array-length v5, v5

    new-array v6, v6, [I

    aput v5, v6, v7

    aput v4, v6, v2

    const-class v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v5, 0x0

    .line 11
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_5

    const/4 v6, 0x0

    .line 12
    :goto_4
    aget-object v7, v3, v5

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 13
    aget-object v7, v4, v5

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v9, v3, v5

    aget-object v9, v9, v6

    invoke-static {v8, p1, v0, v1, v9}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return-object v4

    .line 14
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
