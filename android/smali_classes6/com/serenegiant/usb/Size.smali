.class public Lcom/serenegiant/usb/Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/serenegiant/usb/Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fps:[F

.field public frameIntervalIndex:I

.field public frameIntervalType:I

.field private frameRates:Ljava/lang/String;

.field public frame_type:I

.field public height:I

.field public index:I

.field public intervals:[I

.field public type:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/serenegiant/usb/Size$1;

    invoke-direct {v0}, Lcom/serenegiant/usb/Size$1;-><init>()V

    sput-object v0, Lcom/serenegiant/usb/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 4
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 5
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 6
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 7
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 11
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 14
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 15
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 16
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 17
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 19
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 20
    iput-object p2, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aput p6, p2, p1

    const/4 p1, 0x1

    aput p7, p2, p1

    const/4 p1, 0x2

    aput p8, p2, p1

    .line 21
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 24
    iput p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 25
    iput p3, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 26
    iput p4, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 27
    iput p5, p0, Lcom/serenegiant/usb/Size;->height:I

    const/4 p1, -0x1

    if-eqz p6, :cond_0

    .line 28
    array-length p2, p6

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    const/4 p3, 0x0

    if-lez p2, :cond_1

    .line 29
    iput p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 30
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 31
    invoke-static {p6, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 32
    :cond_1
    iput p1, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 34
    :goto_1
    iput p3, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 35
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 57
    iget v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    if-ltz v0, :cond_1

    if-lez v0, :cond_0

    .line 58
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 59
    iput-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/serenegiant/usb/Size$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/Size;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/usb/Size;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/serenegiant/usb/Size;->type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 38
    iget v0, p1, Lcom/serenegiant/usb/Size;->frame_type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 39
    iget v0, p1, Lcom/serenegiant/usb/Size;->index:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 40
    iget v0, p1, Lcom/serenegiant/usb/Size;->width:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 41
    iget v0, p1, Lcom/serenegiant/usb/Size;->height:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 42
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 43
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 44
    iget-object v0, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 46
    iget-object p1, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFrameRate()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    if-ltz v2, :cond_1

    if-ge v2, v1, :cond_1

    .line 3
    aget v0, v0, v2

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown frame rate or not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/serenegiant/usb/Size;)Lcom/serenegiant/usb/Size;
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget v0, p1, Lcom/serenegiant/usb/Size;->type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->type:I

    .line 2
    iget v0, p1, Lcom/serenegiant/usb/Size;->frame_type:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    .line 3
    iget v0, p1, Lcom/serenegiant/usb/Size;->index:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->index:I

    .line 4
    iget v0, p1, Lcom/serenegiant/usb/Size;->width:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->width:I

    .line 5
    iget v0, p1, Lcom/serenegiant/usb/Size;->height:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->height:I

    .line 6
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    .line 7
    iget v0, p1, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    iput v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    .line 8
    iget-object v0, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 9
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 10
    iget-object p1, p1, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->updateFrameRate()V

    :cond_2
    return-object p0
.end method

.method public setCurrentFrameRate(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/serenegiant/usb/Size;->fps:[F

    aget v2, v2, v1

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 3
    :goto_1
    iput v1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/usb/Size;->getCurrentFrameRate()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/serenegiant/usb/Size;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/serenegiant/usb/Size;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/serenegiant/usb/Size;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget v3, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget v3, p0, Lcom/serenegiant/usb/Size;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/serenegiant/usb/Size;->frameRates:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v0, "Size(%dx%d@%4.1f,type:%d,frame:%d,index:%d,%s)"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrameRate()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    const v1, 0x4b189680    # 1.0E7f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 2
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 3
    iget-object v5, p0, Lcom/serenegiant/usb/Size;->fps:[F

    iget-object v6, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v6, v6, v4

    int-to-float v6, v6

    div-float v6, v1, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v4, v0, v3

    aget v0, v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v4, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    aget v5, v4, v3

    aget v4, v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lez v5, :cond_2

    move v6, v0

    const/4 v7, 0x0

    :goto_1
    if-gt v6, v4, :cond_1

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v5

    goto :goto_1

    .line 7
    :cond_1
    new-array v6, v7, [F

    iput-object v6, p0, Lcom/serenegiant/usb/Size;->fps:[F

    const/4 v6, 0x0

    :goto_2
    if-gt v0, v4, :cond_4

    .line 8
    iget-object v7, p0, Lcom/serenegiant/usb/Size;->fps:[F

    add-int/lit8 v8, v6, 0x1

    int-to-float v9, v0

    div-float v9, v1, v9

    aput v9, v7, v6

    add-int/2addr v0, v5

    move v6, v8

    goto :goto_2

    :cond_2
    int-to-float v0, v0

    div-float/2addr v1, v0

    move v0, v1

    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v1

    if-gtz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    add-float/2addr v0, v5

    goto :goto_3

    .line 9
    :cond_3
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    move v0, v1

    const/4 v4, 0x0

    :goto_4
    cmpg-float v6, v0, v1

    if-gtz v6, :cond_4

    .line 10
    iget-object v6, p0, Lcom/serenegiant/usb/Size;->fps:[F

    add-int/lit8 v7, v4, 0x1

    aput v0, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v0, v5

    move v4, v7

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/usb/Size;->fps:[F

    if-eqz v0, :cond_5

    array-length v0, v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 13
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_7

    .line 15
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/serenegiant/usb/Size;->fps:[F

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%4.1f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_6

    const-string v5, ","

    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    const-string v2, "]"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/serenegiant/usb/Size;->frameRates:Ljava/lang/String;

    .line 19
    iget v1, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    if-le v1, v0, :cond_8

    .line 20
    iput v3, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/serenegiant/usb/Size;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/serenegiant/usb/Size;->frame_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/serenegiant/usb/Size;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/serenegiant/usb/Size;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/serenegiant/usb/Size;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/serenegiant/usb/Size;->frameIntervalIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/serenegiant/usb/Size;->intervals:[I

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    return-void
.end method
