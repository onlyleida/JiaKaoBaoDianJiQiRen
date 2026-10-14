.class public Lcn/mucang/sundial/android/model/CarModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentDistance:F

.field public gpsSpeed:F

.field public keyState:Lcn/mucang/sundial/android/model/KeyState;

.field public rpm:I

.field public speed:F

.field public totalDistance:F

.field public wheelDegree:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/model/KeyState;->None:Lcn/mucang/sundial/android/model/KeyState;

    iput-object v0, p0, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    .line 4
    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    return-void
.end method


# virtual methods
.method public copy(Lcn/mucang/sundial/android/model/CarModel;)V
    .locals 1

    .line 1
    iget v0, p1, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->rpm:I

    .line 2
    iget v0, p1, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    iput-object v0, p0, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    .line 4
    iget v0, p1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    .line 5
    iget v0, p1, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    .line 6
    iget v0, p1, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    iput v0, p0, Lcn/mucang/sundial/android/model/CarModel;->gpsSpeed:F

    .line 7
    iget p1, p1, Lcn/mucang/sundial/android/model/CarModel;->wheelDegree:I

    iput p1, p0, Lcn/mucang/sundial/android/model/CarModel;->wheelDegree:I

    return-void
.end method
