.class Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;

.field final synthetic val$f:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->this$0:Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;

    iput-object p2, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->val$f:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->val$f:Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method
