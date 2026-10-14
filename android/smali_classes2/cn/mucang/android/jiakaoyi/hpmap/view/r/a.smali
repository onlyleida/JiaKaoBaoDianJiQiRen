.class public Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_2

    cmpg-double v2, p2, v0

    if-lez v2, :cond_2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    .line 4
    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    mul-int v2, v0, v1

    if-gtz v2, :cond_1

    .line 5
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p0

    return p0

    :cond_1
    int-to-double v2, v0

    div-double/2addr v2, p0

    int-to-double p0, v1

    div-double/2addr p0, p2

    .line 6
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide p2, 0x3f947ae140000000L    # 0.019999999552965164

    .line 7
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p0

    return p0
.end method

.method public static b(D)F
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p0, p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method
