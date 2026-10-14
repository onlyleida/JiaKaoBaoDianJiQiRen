.class public Lcn/mucang/android/account/data/WeChatUserEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private createTime:J

.field private mucangId:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private unionId:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->createTime:J

    return-wide v0
.end method

.method public getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->unionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->updateTime:J

    return-wide v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->createTime:J

    return-void
.end method

.method public setMucangId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->openId:Ljava/lang/String;

    return-void
.end method

.method public setUnionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->unionId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/data/WeChatUserEntity;->updateTime:J

    return-void
.end method
