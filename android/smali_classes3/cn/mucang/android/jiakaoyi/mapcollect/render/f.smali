.class public abstract Lcn/mucang/android/jiakaoyi/mapcollect/render/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public stepBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/a;",
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
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->stepBounds:Landroid/util/SparseArray;

    return-void
.end method

.method public static getKey(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract createLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation
.end method

.method public getBound(II)Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 9

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getKey(II)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->stepBounds:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v5, -0x10000000000001L

    const-wide v7, -0x10000000000001L

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->stepBounds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public abstract getCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;
.end method

.method public getCollisions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;
.end method

.method public abstract getExamSiteId()Ljava/lang/String;
.end method

.method public abstract getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;
.end method

.method public getRenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/c/a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
