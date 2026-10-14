.class public Lorg/apache/commons/math3/ml/neuralnet/Neuron;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final features:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[D>;"
        }
    .end annotation
.end field

.field private final identifier:J

.field private final numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final size:I


# direct methods
.method constructor <init>(J[D)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    .line 5
    array-length p1, p3

    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private containSameValues([D[D)Z
    .locals 6

    .line 1
    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ge v1, v2, :cond_1

    .line 3
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;-><init>(J[D)V

    return-object v0
.end method


# virtual methods
.method public compareAndSetFeatures([D[D)Z
    .locals 2

    .line 1
    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->containSameValues([D[D)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5
    iget-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 7
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    .line 2
    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFeatures()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    return-wide v0
.end method

.method public getNumberOfAttemptedUpdates()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfSuccessfulUpdates()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    return v0
.end method
