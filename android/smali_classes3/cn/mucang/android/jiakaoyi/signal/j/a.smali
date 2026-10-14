.class public Lcn/mucang/android/jiakaoyi/signal/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/j/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x14
        0x84
        0x94
    .end array-data
.end method

.method public static a()Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/j/a;->a:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
