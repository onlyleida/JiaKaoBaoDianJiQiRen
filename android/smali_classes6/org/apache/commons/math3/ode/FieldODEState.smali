.class public Lorg/apache/commons/math3/ode/FieldODEState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final state:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final time:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/FieldODEState;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEState;->time:Lorg/apache/commons/math3/RealFieldElement;

    .line 4
    invoke-virtual {p2}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/math3/ode/FieldODEState;->copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method protected copy(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/RealFieldElement;)[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[[TT;)[[TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p2

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p2, v0

    invoke-virtual {v1}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getNumberOfSecondaryStates()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getSecondaryState(I)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    invoke-virtual {p1}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, [Lorg/apache/commons/math3/RealFieldElement;

    return-object p1
.end method

.method public getSecondaryStateDimension(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    array-length p1, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->secondaryState:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    array-length p1, p1

    :goto_0
    return p1
.end method

.method public getState()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getStateDimension()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->state:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v0, v0

    return v0
.end method

.method public getTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/FieldODEState;->time:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method
