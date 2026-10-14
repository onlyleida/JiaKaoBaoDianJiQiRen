.class Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

.field final synthetic val$m:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

.field final synthetic val$xval:[[D

.field final synthetic val$yval:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;[[D[D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$m:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$xval:[[D

    iput-object p4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$yval:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$m:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$xval:[[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->val$yval:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->access$000(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D

    move-result-wide v4

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->access$100(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D

    move-result-wide v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->value([D[[D[DDD)D

    move-result-wide v0

    return-wide v0
.end method
