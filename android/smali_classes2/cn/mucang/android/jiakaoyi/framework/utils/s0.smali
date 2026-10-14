.class public Lcn/mucang/android/jiakaoyi/framework/utils/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/utils/s0;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7d0

    const-string v1, "keyWiperDelayTime"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/framework/utils/s0;->a:I

    .line 3
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/framework/utils/s0;->a:I

    return v0
.end method
