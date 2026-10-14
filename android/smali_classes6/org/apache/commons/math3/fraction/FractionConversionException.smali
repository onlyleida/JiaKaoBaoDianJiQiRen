.class public Lorg/apache/commons/math3/fraction/FractionConversionException;
.super Lorg/apache/commons/math3/exception/ConvergenceException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x40b215e598873407L


# direct methods
.method public constructor <init>(DI)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_FRACTION_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(DJJ)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION_CONVERSION_OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
