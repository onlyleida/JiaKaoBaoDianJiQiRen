.class public Lcom/amap/api/maps/model/PolylineOptionsCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps/model/PolylineOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 10

    .line 2
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v3, Lcom/amap/api/maps/model/LatLng;->CREATOR:Lcom/amap/api/maps/model/LatLngCreator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->valueOf(I)Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/amap/api/maps/model/PolylineOptions;->lineCapType(Lcom/amap/api/maps/model/PolylineOptions$LineCapType;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;->valueOf(I)Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/amap/api/maps/model/PolylineOptions;->lineJoinType(Lcom/amap/api/maps/model/PolylineOptions$LineJoinType;)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v8, 0x5

    new-array v8, v8, [Z

    .line 13
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 14
    const-class v9, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 15
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 16
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 17
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 18
    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 19
    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 20
    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setDottedLineType(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 21
    invoke-virtual {v1, v6}, Lcom/amap/api/maps/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 22
    invoke-virtual {v1, v7}, Lcom/amap/api/maps/model/PolylineOptions;->transparency(F)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v2, 0x0

    .line 23
    aget-boolean v2, v8, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v2, 0x1

    .line 24
    aget-boolean v2, v8, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v2, 0x2

    .line 25
    aget-boolean v2, v8, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->geodesic(Z)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v2, 0x3

    .line 26
    aget-boolean v2, v8, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->useGradient(Z)Lcom/amap/api/maps/model/PolylineOptions;

    const/4 v2, 0x4

    .line 27
    aget-boolean v2, v8, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->aboveMaskLayer(Z)Lcom/amap/api/maps/model/PolylineOptions;

    .line 28
    invoke-virtual {v1, v9}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 29
    const-class v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTextureList(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTextureIndex(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/PolylineOptions;->colorValues(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/PolylineOptions;->setShownRatio(F)Lcom/amap/api/maps/model/PolylineOptions;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/amap/api/maps/model/PolylineOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/PolylineOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method
