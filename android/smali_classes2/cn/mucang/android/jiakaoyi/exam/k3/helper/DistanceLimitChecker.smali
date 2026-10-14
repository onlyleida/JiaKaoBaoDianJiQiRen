.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DEFAULT_VALUE:F

.field private final limitDistance:F

.field private startDistance:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x368bdc10    # -999999.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->DEFAULT_VALUE:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->startDistance:F

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->limitDistance:F

    return-void
.end method


# virtual methods
.method public isDeduct(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->startDistance:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->limitDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStart(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->startDistance:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->DEFAULT_VALUE:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/DistanceLimitChecker;->startDistance:F

    :cond_0
    return-void
.end method
