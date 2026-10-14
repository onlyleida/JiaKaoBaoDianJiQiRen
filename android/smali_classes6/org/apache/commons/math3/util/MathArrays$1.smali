.class final Lorg/apache/commons/math3/util/MathArrays$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    check-cast p2, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays$1;->compare(Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getKey()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->getKey()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
