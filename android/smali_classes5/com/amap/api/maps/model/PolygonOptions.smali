.class public final Lcom/amap/api/maps/model/PolygonOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolygonOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private fillColor:I

.field private holeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private isHoleOptionsUpdated:Z

.field private isPointsUpdated:Z

.field private isUsePolylineStroke:Z

.field private isVisible:Z

.field private lineJoinType:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

.field private nLineCapType:I

.field private nLineJoinType:I

.field private pointList:[D

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeWidth:F

.field private final type:Ljava/lang/String;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/PolygonOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolygonOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolygonOptions;->CREATOR:Lcom/amap/api/maps/model/PolygonOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth:F

    const/high16 v0, -0x1000000

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor:I

    .line 4
    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->fillColor:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->zIndex:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isVisible:Z

    const-string v0, "PolygonOptions"

    .line 7
    iput-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isPointsUpdated:Z

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isHoleOptionsUpdated:Z

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke:Z

    .line 11
    sget-object v1, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->LineJoinBevel:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    iput-object v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->lineJoinType:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->nLineCapType:I

    .line 13
    iput v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->nLineJoinType:I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolygonOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public addHoles(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)",
            "Lcom/amap/api/maps/model/PolygonOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 7
    iget-object v1, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isHoleOptionsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public varargs addHoles([Lcom/amap/api/maps/model/BaseHoleOptions;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isHoleOptionsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->fillColor:I

    return-object p0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->fillColor:I

    return v0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    return-object v0
.end method

.method public getLineJoinType()Lcom/amap/api/maps/model/AMapPara$LineJoinType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->lineJoinType:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->zIndex:F

    return v0
.end method

.method public isUsePolylineStroke()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->isVisible:Z

    return v0
.end method

.method public lineJoinType(Lcom/amap/api/maps/model/AMapPara$LineJoinType;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->lineJoinType:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->getTypeValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->nLineJoinType:I

    :cond_0
    return-object p0
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isHoleOptionsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isPointsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth:F

    return-object p0
.end method

.method public usePolylineStroke(Z)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke:Z

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->isVisible:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->points:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2
    iget p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->fillColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->zIndex:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget-boolean p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->isVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-object p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->holeOptions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 9
    iget-object p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->lineJoinType:Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    invoke-virtual {p2}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->getTypeValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/amap/api/maps/model/PolygonOptions;->isUsePolylineStroke:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/PolygonOptions;->zIndex:F

    return-object p0
.end method
