.class Lcom/amap/api/mapcore/util/c1$o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/c4$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o0"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$o0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/mapcore/util/c1$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1$o0;-><init>(Lcom/amap/api/mapcore/util/c1;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$o0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    .line 3
    iget-object v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    aget-object p1, v2, p1

    iput-object p1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c1;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
