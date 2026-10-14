.class public Lcn/mucang/android/account/api/data/PopupCaptchaResponse;
.super Lcn/mucang/android/account/api/data/CaptchaResponse;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private verifyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/api/data/CaptchaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getVerifyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;->verifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setVerifyUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;->verifyUrl:Ljava/lang/String;

    return-void
.end method
