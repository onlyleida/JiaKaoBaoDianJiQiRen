.class public Lcn/mucang/android/account/api/data/CaptchaResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captchaId:Ljava/lang/String;

.field private captchaUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptchaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->captchaId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->captchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptchaId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->captchaId:Ljava/lang/String;

    return-void
.end method

.method public setCaptchaUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->captchaUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CaptchaResponse;->title:Ljava/lang/String;

    return-void
.end method
