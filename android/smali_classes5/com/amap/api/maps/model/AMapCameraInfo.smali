.class public Lcom/amap/api/maps/model/AMapCameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aspectRatio:F

.field private fov:F

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private rotate:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    .line 4
    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    .line 5
    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    .line 6
    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    .line 7
    iput v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    .line 8
    iput p1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    .line 9
    iput p2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    .line 10
    iput p3, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    .line 11
    iput p4, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    .line 12
    iput p5, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    .line 13
    iput p6, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    return v0
.end method

.method public getFov()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    return v0
.end method

.method public getRotate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fov:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->fov:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "aspectRatio:"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->aspectRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rotate:"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->rotate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pos_x:"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pos_y:"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pos_z:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/maps/model/AMapCameraInfo;->positionZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
