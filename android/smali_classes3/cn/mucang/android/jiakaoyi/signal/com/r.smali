.class public Lcn/mucang/android/jiakaoyi/signal/com/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/4 v2, 0x6

    if-gt p0, v2, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/r;->b(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
