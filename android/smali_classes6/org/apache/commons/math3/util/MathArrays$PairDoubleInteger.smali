.class Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairDoubleInteger"
.end annotation


# instance fields
.field private final key:D

.field private final value:I


# direct methods
.method constructor <init>(DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->key:D

    .line 3
    iput p3, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->value:I

    return-void
.end method


# virtual methods
.method public getKey()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->key:D

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/util/MathArrays$PairDoubleInteger;->value:I

    return v0
.end method
