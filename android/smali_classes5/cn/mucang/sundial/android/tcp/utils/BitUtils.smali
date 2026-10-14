.class public Lcn/mucang/sundial/android/tcp/utils/BitUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBitOn(IIZ)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method
