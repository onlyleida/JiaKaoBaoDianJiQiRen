.class final Lorg/apache/commons/math3/util/Incrementor$2;
.super Lorg/apache/commons/math3/util/Incrementor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field final synthetic val$incrementor:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$2;->val$incrementor:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-direct {p0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p1

    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 4
    iget-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p1

    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount(I)V

    return-void
.end method


# virtual methods
.method public incrementCount()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    return-void
.end method

.method public resetCount()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method

.method public setMaximalCount(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$2;->delegate:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method
