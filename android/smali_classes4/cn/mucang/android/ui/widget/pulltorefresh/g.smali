.class public final Lcn/mucang/android/ui/widget/pulltorefresh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method static a(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIIIFZ)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/g$a;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    move v1, p3

    move v2, p4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    move v1, p1

    move v2, p2

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    if-nez p8, :cond_6

    if-eqz v1, :cond_6

    add-int/2addr v1, v2

    .line 7
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OverScroll. DeltaX: "

    invoke-virtual {p8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ScrollX: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", DeltaY: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ScrollY: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", NewY: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ScrollRange: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentScroll: "

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverscrollHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 p1, p6, 0x0

    if-ge v1, p1, :cond_2

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_1

    .line 9
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_1
    add-int/2addr v0, v1

    int-to-float p1, v0

    mul-float p7, p7, p1

    float-to-int p1, p7

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    :cond_2
    add-int p1, p5, p6

    if-le v1, p1, :cond_4

    .line 11
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_3

    .line 12
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_3
    add-int/2addr v0, v1

    sub-int/2addr v0, p5

    int-to-float p1, v0

    mul-float p7, p7, p1

    float-to-int p1, p7

    .line 13
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, p6, :cond_5

    sub-int/2addr v1, p5

    .line 15
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p6, :cond_7

    .line 16
    :cond_5
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    :cond_6
    if-eqz p8, :cond_7

    .line 17
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getState()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object p2

    if-ne p1, p2, :cond_7

    .line 18
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array p2, v5, [Z

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static c(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    .line 1
    invoke-static/range {v0 .. v8}, Lcn/mucang/android/ui/widget/pulltorefresh/g;->b(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static d(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase<",
            "*>;IIIIZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcn/mucang/android/ui/widget/pulltorefresh/g;->c(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    return-void
.end method
