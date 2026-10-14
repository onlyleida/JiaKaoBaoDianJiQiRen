.class public interface abstract Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# virtual methods
.method public abstract convertCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;
.end method

.method public abstract getApiLevel()Ljava/lang/String;
.end method
