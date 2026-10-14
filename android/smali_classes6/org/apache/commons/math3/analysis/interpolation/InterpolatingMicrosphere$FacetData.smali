.class Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacetData"
.end annotation


# instance fields
.field private final illumination:D

.field private final sample:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample:D

    return-void
.end method


# virtual methods
.method public illumination()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->illumination:D

    return-wide v0
.end method

.method public sample()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$FacetData;->sample:D

    return-wide v0
.end method
