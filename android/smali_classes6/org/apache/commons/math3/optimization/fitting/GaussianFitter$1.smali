.class Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$1;
.super Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;->fit([D)[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$1;->this$0:Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;

    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1
    fill-array-data v0, :array_0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->gradient(D[D)[D

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotStrictlyPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public varargs value(D[D)D
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->value(D[D)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotStrictlyPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide p1
.end method
