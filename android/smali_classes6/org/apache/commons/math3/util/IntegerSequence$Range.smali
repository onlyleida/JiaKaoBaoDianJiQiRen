.class public Lorg/apache/commons/math3/util/IntegerSequence$Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final max:I

.field private final size:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->start:I

    .line 3
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->max:I

    .line 4
    iput p3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    sub-int/2addr p2, p1

    .line 5
    div-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->size:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->start:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->max:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->step:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withIncrement(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->size:I

    return v0
.end method
