.class public final Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/utils/DistanceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpsContent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00084\u00105R*\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0005\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0005\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\tR\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008)\u0010+\"\u0004\u0008,\u0010-R\"\u0010.\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0019\u001a\u0004\u0008/\u0010\u001b\"\u0004\u00080\u0010\u001dR\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0005\u001a\u0004\u00082\u0010\u0007\"\u0004\u00083\u0010\t\u00a8\u00066"
    }
    d2 = {
        "Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;",
        "",
        "",
        "value",
        "angle",
        "I",
        "getAngle",
        "()I",
        "setAngle",
        "(I)V",
        "",
        "speed",
        "F",
        "getSpeed",
        "()F",
        "setSpeed",
        "(F)V",
        "usedCnt",
        "getUsedCnt",
        "setUsedCnt",
        "viewCnt",
        "getViewCnt",
        "setViewCnt",
        "",
        "lat",
        "D",
        "getLat",
        "()D",
        "setLat",
        "(D)V",
        "altitude",
        "getAltitude",
        "setAltitude",
        "",
        "dateTime",
        "J",
        "getDateTime",
        "()J",
        "setDateTime",
        "(J)V",
        "",
        "isValid",
        "Z",
        "()Z",
        "setValid",
        "(Z)V",
        "lng",
        "getLng",
        "setLng",
        "state",
        "getState",
        "setState",
        "<init>",
        "()V",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private altitude:D

.field private angle:I

.field private dateTime:J

.field private isValid:Z

.field private lat:D

.field private lng:D

.field private speed:F

.field private state:I

.field private usedCnt:I

.field private viewCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAltitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->altitude:D

    return-wide v0
.end method

.method public final getAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->angle:I

    return v0
.end method

.method public final getDateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->dateTime:J

    return-wide v0
.end method

.method public final getLat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->lat:D

    return-wide v0
.end method

.method public final getLng()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->lng:D

    return-wide v0
.end method

.method public final getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->speed:F

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->state:I

    return v0
.end method

.method public final getUsedCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->usedCnt:I

    return v0
.end method

.method public final getViewCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->viewCnt:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->isValid:Z

    return v0
.end method

.method public final setAltitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->altitude:D

    return-void
.end method

.method public final setAngle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x167

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :cond_1
    iput p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->angle:I

    return-void
.end method

.method public final setDateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->dateTime:J

    return-void
.end method

.method public final setLat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->lat:D

    return-void
.end method

.method public final setLng(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->lng:D

    return-void
.end method

.method public final setSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->speed:F

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->state:I

    return-void
.end method

.method public final setUsedCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->usedCnt:I

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->isValid:Z

    return-void
.end method

.method public final setViewCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/utils/DistanceUtil$GpsContent;->viewCnt:I

    return-void
.end method
