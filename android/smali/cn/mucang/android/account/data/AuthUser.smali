.class public Lcn/mucang/android/account/data/AuthUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authToken:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private certified:Z

.field private checkType:Lcn/mucang/android/account/api/data/CheckType;

.field private cityCode:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private createTime:J

.field private description:Ljava/lang/String;

.field private expiredTime:J

.field private gender:Lcn/mucang/android/account/api/data/Gender;

.field private homePage:Ljava/lang/String;

.field private largeAvatar:Ljava/lang/String;

.field private mucangId:Ljava/lang/String;

.field private needBindThird:Z

.field private newAccount:Z

.field private nickname:Ljava/lang/String;

.field private passwordSet:Z

.field private phone:Ljava/lang/String;

.field private smsToken:Ljava/lang/String;

.field private validDuration:J

.field private weChatUserEntity:Lcn/mucang/android/account/data/WeChatUserEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckType()Lcn/mucang/android/account/api/data/CheckType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/account/data/AuthUser;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/account/data/AuthUser;->expiredTime:J

    return-wide v0
.end method

.method public getGender()Lcn/mucang/android/account/api/data/Gender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->gender:Lcn/mucang/android/account/api/data/Gender;

    return-object v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->largeAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->smsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/account/data/AuthUser;->validDuration:J

    return-wide v0
.end method

.method public getWeChatUserEntity()Lcn/mucang/android/account/data/WeChatUserEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/data/AuthUser;->weChatUserEntity:Lcn/mucang/android/account/data/WeChatUserEntity;

    return-object v0
.end method

.method public isCertified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AuthUser;->certified:Z

    return v0
.end method

.method public isNeedBindThird()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AuthUser;->needBindThird:Z

    return v0
.end method

.method public isNewAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AuthUser;->newAccount:Z

    return v0
.end method

.method public isPasswordSet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/data/AuthUser;->passwordSet:Z

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->authToken:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCertified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AuthUser;->certified:Z

    return-void
.end method

.method public setCheckType(Lcn/mucang/android/account/api/data/CheckType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->checkType:Lcn/mucang/android/account/api/data/CheckType;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/data/AuthUser;->createTime:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->description:Ljava/lang/String;

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/data/AuthUser;->expiredTime:J

    return-void
.end method

.method public setGender(Lcn/mucang/android/account/api/data/Gender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->gender:Lcn/mucang/android/account/api/data/Gender;

    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->homePage:Ljava/lang/String;

    return-void
.end method

.method public setLargeAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->largeAvatar:Ljava/lang/String;

    return-void
.end method

.method public setMucangId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public setNeedBindThird(Z)Lcn/mucang/android/account/data/AuthUser;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AuthUser;->needBindThird:Z

    return-object p0
.end method

.method public setNewAccount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AuthUser;->newAccount:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPasswordSet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/data/AuthUser;->passwordSet:Z

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSmsToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->smsToken:Ljava/lang/String;

    return-void
.end method

.method public setValidDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/account/data/AuthUser;->validDuration:J

    return-void
.end method

.method public setWeChatUserEntity(Lcn/mucang/android/account/data/WeChatUserEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/data/AuthUser;->weChatUserEntity:Lcn/mucang/android/account/data/WeChatUserEntity;

    return-void
.end method
