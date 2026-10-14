.class public Lcom/amap/api/maps/model/GL3DModelOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private fixedLength:I

.field private latLng:Lcom/amap/api/maps/model/LatLng;

.field private rotate:F

.field private textrueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private vertextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->vertextList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->textrueList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public angle(F)Lcom/amap/api/maps/model/GL3DModelOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->rotate:F

    return-object p0
.end method

.method public getAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->rotate:F

    return v0
.end method

.method public getBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getLatLng()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getModelFixedLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->fixedLength:I

    return v0
.end method

.method public getTextrue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->textrueList:Ljava/util/List;

    return-object v0
.end method

.method public getVertext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->vertextList:Ljava/util/List;

    return-object v0
.end method

.method public position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/GL3DModelOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->latLng:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public setModelFixedLength(I)Lcom/amap/api/maps/model/GL3DModelOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->fixedLength:I

    return-object p0
.end method

.method public textureDrawable(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/GL3DModelOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->bitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public vertexData(Ljava/util/List;Ljava/util/List;)Lcom/amap/api/maps/model/GL3DModelOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/amap/api/maps/model/GL3DModelOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->vertextList:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/amap/api/maps/model/GL3DModelOptions;->textrueList:Ljava/util/List;

    return-object p0
.end method
