.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ANGEL:I = -0xf423f


# instance fields
.field private final angelChangeScope:F

.field private startAngel:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x368bdc10    # -999999.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->startAngel:F

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->angelChangeScope:F

    return-void
.end method


# virtual methods
.method public isDeduct(Ljava/lang/Float;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->startAngel:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->a(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->angelChangeScope:F

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->startAngel:F

    const v1, -0x368bdc10    # -999999.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/AngelLimitChecker;->startAngel:F

    :cond_0
    return-void
.end method
