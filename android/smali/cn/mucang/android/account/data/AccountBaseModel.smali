.class public Lcn/mucang/android/account/data/AccountBaseModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected extraData:Ljava/lang/String;

.field protected skipAuthRealName:Z

.field protected skipBindThird:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AccountBaseModel;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public isSkipAuthRealName()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipAuthRealName:Z

    return v0
.end method

.method public isSkipBindThird()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipBindThird:Z

    return v0
.end method

.method public setExtraData(Ljava/lang/String;)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->extraData:Ljava/lang/String;

    return-object p0
.end method

.method public setSkipAuthRealName(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipAuthRealName:Z

    return-object p0
.end method

.method public setSkipBindThird(Z)Lcn/mucang/android/account/data/AccountBaseModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AccountBaseModel;->skipBindThird:Z

    return-object p0
.end method
