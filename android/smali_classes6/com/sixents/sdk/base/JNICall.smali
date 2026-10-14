.class public Lcom/sixents/sdk/base/JNICall;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sixents-core-sdk"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native b()I
.end method

.method public static native c(Lcom/sixents/sdk/conf/SdkConf;)I
.end method

.method public static native e()I
.end method

.method public static native f(DDD)I
.end method

.method public static native k()V
.end method

.method public static native r(Ljava/lang/String;)I
.end method

.method public static native v()Ljava/lang/String;
.end method

.method public static native x()I
.end method
