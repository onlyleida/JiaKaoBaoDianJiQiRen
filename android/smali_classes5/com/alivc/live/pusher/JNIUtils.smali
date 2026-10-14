.class public Lcom/alivc/live/pusher/JNIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AudioChannelFromNative(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0
.end method

.method public static AudioChannelToNative(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static AudioFormatFromNative(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 v1, 0x7

    if-ne p0, v1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return v0
.end method

.method public static AudioFormatToNative(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    return v0
.end method

.method static VideoFormatFromNative(I)I
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/16 p0, 0x23

    return p0

    :cond_1
    const/16 v1, 0xc

    if-ne p0, v1, :cond_2

    const/16 p0, 0x28

    return p0

    :cond_2
    return v0
.end method

.method public static VideoFormatToNative(I)I
    .locals 3

    const/4 v0, 0x7

    const/16 v1, 0x11

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x23

    const/4 v2, 0x5

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x28

    if-ne p0, v1, :cond_2

    const/16 p0, 0xc

    return p0

    :cond_2
    const v1, 0x32315659

    if-ne p0, v1, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    const/16 v1, 0x2a

    if-ne p0, v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/16 v1, 0x29

    if-ne p0, v1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/16 v1, 0x27

    if-ne p0, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method
