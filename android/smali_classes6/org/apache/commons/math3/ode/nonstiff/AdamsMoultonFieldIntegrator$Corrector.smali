.class Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Corrector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final after:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final before:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final previous:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;[TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-virtual {p4}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->before:[Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method public bridge synthetic end()Lorg/apache/commons/math3/FieldElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->end()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public end()Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v3, v2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v1

    .line 5
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget v2, v2, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->previous:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-object v4, v3, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v4, :cond_0

    iget-wide v3, v3, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-wide v3, v3, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v4, v3, v1

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget-object v3, v3, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v3, v1

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->before:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 9
    invoke-interface {v2, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    iget v1, v1, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public start(IIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->this$0:Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;

    invoke-virtual {p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0

    .line 1
    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->visit(IILorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, p1, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p3, p1, p2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;->after:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v0, p1, p2

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object p3, p1, p2

    :goto_0
    return-void
.end method
