.class public interface abstract Lcom/mobile/auth/gatewayauth/PreLoginResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation

.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# virtual methods
.method public abstract onTokenFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTokenSuccess(Ljava/lang/String;)V
.end method
