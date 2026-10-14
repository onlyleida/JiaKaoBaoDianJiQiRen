.class public Lcn/mucang/android/account/api/data/CheckSmsResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private checkType:Lcn/mucang/android/account/api/data/CheckType;

.field private delay:I

.field private restSeconds:I

.field private smsCode:Ljava/lang/String;

.field private smsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMockResponse(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-direct {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V

    return-object v0
.end method


# virtual methods
.method public getCheckType()Lcn/mucang/android/account/api/data/CheckType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object v0
.end method

.method public getDelay()J
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->delay:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRestSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->restSeconds:I

    return v0
.end method

.method public getSmsCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->smsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->smsId:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-void
.end method

.method public setDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->delay:I

    return-void
.end method

.method public setRestSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->restSeconds:I

    return-void
.end method

.method public setSmsCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->smsCode:Ljava/lang/String;

    return-void
.end method

.method public setSmsId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/CheckSmsResponse;->smsId:Ljava/lang/String;

    return-void
.end method
