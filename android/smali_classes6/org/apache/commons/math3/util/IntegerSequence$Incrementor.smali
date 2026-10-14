.class public Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Incrementor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;


# instance fields
.field private count:I

.field private final increment:I

.field private final init:I

.field private final maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

.field private final maximalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$1;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$1;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    return-void
.end method

.method private constructor <init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    if-eqz p4, :cond_0

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    .line 5
    iput p3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    .line 6
    iput-object p4, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    .line 7
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public static create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    sget-object v1, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->CALLBACK:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method


# virtual methods
.method public canIncrement()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    return v0
.end method

.method public canIncrement(I)Z
    .locals 3

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 3
    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    return v0
.end method

.method public getMaximalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    return v0
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    return-void
.end method

.method public increment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->canIncrement(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;->trigger(I)V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    return-void

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->count:I

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public withCallback(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public withIncrement(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p1
.end method

.method public withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->init:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method

.method public withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maximalCount:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment:I

    iget-object v3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->maxCountCallback:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;-><init>(IIILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-object v0
.end method
