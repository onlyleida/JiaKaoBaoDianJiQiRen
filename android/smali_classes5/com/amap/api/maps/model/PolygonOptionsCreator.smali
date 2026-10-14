.class public Lcom/amap/api/maps/model/PolygonOptionsCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps/model/PolygonOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolygonOptions;
    .locals 12

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolygonOptions;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v2, Lcom/amap/api/maps/model/LatLng;->CREATOR:Lcom/amap/api/maps/model/LatLngCreator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x0

    .line 11
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 12
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amap/api/maps/model/LatLng;

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0, v9}, Lcom/amap/api/maps/model/PolygonOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolygonOptions;

    .line 14
    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;

    .line 15
    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    .line 16
    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/PolygonOptions;->fillColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    .line 17
    invoke-virtual {v0, v5}, Lcom/amap/api/maps/model/PolygonOptions;->zIndex(F)Lcom/amap/api/maps/model/PolygonOptions;

    .line 18
    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/PolygonOptions;->visible(Z)Lcom/amap/api/maps/model/PolygonOptions;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/maps/model/PolygonOptions;->a:Ljava/lang/String;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const-class v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolygonOptions;->addHoles(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolygonOptions;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/maps/model/AMapPara$LineJoinType;->valueOf(I)Lcom/amap/api/maps/model/AMapPara$LineJoinType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolygonOptions;->lineJoinType(Lcom/amap/api/maps/model/AMapPara$LineJoinType;)Lcom/amap/api/maps/model/PolygonOptions;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v8, :cond_2

    const/4 v7, 0x1

    .line 25
    :cond_2
    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/PolygonOptions;->usePolylineStroke(Z)Lcom/amap/api/maps/model/PolygonOptions;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolygonOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolygonOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/PolygonOptions;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/amap/api/maps/model/PolygonOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolygonOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/PolygonOptions;

    move-result-object p1

    return-object p1
.end method
