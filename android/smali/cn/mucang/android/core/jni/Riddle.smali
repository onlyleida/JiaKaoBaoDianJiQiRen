.class public Lcn/mucang/android/core/jni/Riddle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tnpn"

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

.method public static native c()V
.end method

.method public static native d([BLjava/lang/String;)[B
.end method

.method public static native e([B)[B
.end method

.method public static native isAdExpired(Ljava/lang/Object;)Z
.end method

.method public static native nativeClear(Ljava/lang/String;)V
.end method

.method public static native nativeFasterClear(ILjava/lang/Object;)V
.end method

.method public static native s(Ljava/lang/String;Ljava/lang/String;)[B
.end method
