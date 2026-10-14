.class Lg/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static varargs b([J)[J
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    return-object p0
.end method

.method static c([JII)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lg/c/a/d;->a(II)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
