.class public Lcn/mucang/android/jiakaoyi/signal/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p0

    return p0
.end method

.method public static b(FF)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    sub-float/2addr p1, v0

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static c(F)F
    .locals 2

    :goto_0
    const/high16 v0, -0x3ccc0000    # -180.0f

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0
.end method

.method public static d(F)F
    .locals 2

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0
.end method
