.class Lorg/apache/commons/math3/ode/events/FieldEventState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/ode/events/FieldEventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/events/FieldEventState;

.field final synthetic val$interpolator:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$1;->this$0:Lorg/apache/commons/math3/ode/events/FieldEventState;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$1;->this$0:Lorg/apache/commons/math3/ode/events/FieldEventState;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/events/FieldEventState;->access$000(Lorg/apache/commons/math3/ode/events/FieldEventState;)Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState$1;->val$interpolator:Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    return-object p1
.end method
