.class public Lcn/mucang/android/jiakaoyi/speech/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    return-void
.end method

.method private a([BI)F
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_0

    .line 1
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x47000000    # 32768.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v3

    float-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public b([BI)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a([BI)F

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x3ee66666    # 0.45f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    .line 4
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    int-to-float p1, p1

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/utils/g;->a:I

    :cond_2
    return p2
.end method
