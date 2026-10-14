.class final Lcom/amap/api/mapcore/util/az$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/mapcore/util/az;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/mapcore/util/az;
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/az;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/az;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/amap/api/mapcore/util/az;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/amap/api/mapcore/util/az;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/az$b;->a(Landroid/os/Parcel;)Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/az$b;->b(I)[Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    return-object p1
.end method
