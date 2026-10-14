.class Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Facet"
.end annotation


# instance fields
.field private final normal:[D


# direct methods
.method constructor <init>([D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;->normal:[D

    return-void
.end method


# virtual methods
.method public getNormal()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$Facet;->normal:[D

    return-object v0
.end method
