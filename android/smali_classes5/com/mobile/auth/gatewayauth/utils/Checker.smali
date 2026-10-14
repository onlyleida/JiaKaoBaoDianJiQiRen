.class public Lcom/mobile/auth/gatewayauth/utils/Checker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "alicomphonenumberauthsdk_core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native c()Ljava/lang/String;
.end method
