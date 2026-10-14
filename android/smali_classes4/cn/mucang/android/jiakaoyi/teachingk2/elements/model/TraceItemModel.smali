.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
.super Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
.source "SourceFile"


# instance fields
.field public cluth:I

.field public transient extra:Ljava/lang/Object;

.field public footBrake:I

.field public gear:B

.field public handbrake:B

.field public heading:S

.field public honk:B

.field public light:B

.field public pointType:B

.field public speed:F

.field public step:S

.field public wheel:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 4
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    .line 5
    iget-short v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    iput-short v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    .line 6
    iget-short v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    iput-short v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    .line 7
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    .line 8
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    .line 9
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    .line 10
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    .line 11
    iget-short v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    iput-short v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    .line 12
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->footBrake:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->footBrake:I

    .line 15
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->cluth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->cluth:I

    .line 16
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->speed:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->speed:F

    return-object v0
.end method

.method public set(IIIIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-short p1, p1

    .line 4
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-short p1, p2

    .line 5
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    int-to-short p1, p3

    .line 6
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    int-to-byte p1, p4

    .line 7
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    int-to-byte p1, p5

    .line 8
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    int-to-byte p1, p6

    .line 9
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    int-to-byte p1, p7

    .line 10
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    int-to-byte p1, p8

    .line 11
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    return-object p0
.end method

.method public set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 2

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    return-object p0
.end method

.method public setCluth(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->cluth:I

    return-object p0
.end method

.method public setFootBrake(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->footBrake:I

    return-object p0
.end method

.method public setGear(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-byte p1, p1

    .line 1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    return-object p0
.end method

.method public setHandbrake(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-byte p1, p1

    .line 1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->handbrake:B

    return-object p0
.end method

.method public setHeading(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-short p1, p1

    .line 1
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    return-object p0
.end method

.method public setHonk(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-byte p1, p1

    .line 1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    return-object p0
.end method

.method public setLight(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-byte p1, p1

    .line 1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    return-object p0
.end method

.method public setPointType(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-byte p1, p1

    .line 1
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    return-object p0
.end method

.method public setStep(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-short p1, p1

    .line 1
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    return-object p0
.end method

.method public setWheel(I)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;
    .locals 0

    int-to-short p1, p1

    .line 1
    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    return-object p0
.end method
