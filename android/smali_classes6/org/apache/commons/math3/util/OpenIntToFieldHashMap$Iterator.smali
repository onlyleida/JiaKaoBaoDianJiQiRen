.class public Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation


# instance fields
.field private current:I

.field private next:I

.field private final referenceCount:I

.field final synthetic this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$400(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[B

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :catch_0
    nop

    const/4 v0, -0x2

    .line 4
    iput v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    .line 5
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-ltz v0, :cond_1

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->next:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public key()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$200(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[I

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    aget v0, v0, v1

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public value()Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->referenceCount:I

    iget-object v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$100(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->this$0:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-static {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->access$300(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->current:I

    aget-object v0, v0, v1

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
