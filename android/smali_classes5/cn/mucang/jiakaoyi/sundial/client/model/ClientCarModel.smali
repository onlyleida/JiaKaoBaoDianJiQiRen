.class public Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentDistance:F

.field public gpsSpeed:F

.field public keyState:I

.field public location:Landroid/location/Location;

.field public rpm:I

.field public speed:F

.field public totalDistance:F

.field public wheelDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel$1;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel$1;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->rpm:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->speed:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->gpsSpeed:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->keyState:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->totalDistance:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->currentDistance:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->wheelDegree:I

    .line 10
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toServiceCarModel(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->rpm:I

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->speed:F

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    .line 3
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->gpsSpeed:F

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    .line 4
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->keyState:I

    invoke-static {v0}, Lcn/mucang/sundial/android/model/KeyState;->parse(I)Lcn/mucang/sundial/android/model/KeyState;

    move-result-object v0

    iput-object v0, p1, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    .line 5
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->totalDistance:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    .line 6
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->currentDistance:F

    div-float/2addr v0, v1

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    .line 7
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->wheelDegree:I

    iput v0, p1, Lcn/mucang/sundial/android/model/CarModel;->wheelDegree:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->rpm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->gpsSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->keyState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->totalDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->currentDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->wheelDegree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->location:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
