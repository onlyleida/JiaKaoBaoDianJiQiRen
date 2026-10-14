.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field private final column:I

.field private final row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->row:I

    .line 3
    iput p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->row:I

    return v0
.end method
