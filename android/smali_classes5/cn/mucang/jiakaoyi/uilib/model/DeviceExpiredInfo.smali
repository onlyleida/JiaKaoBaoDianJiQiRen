.class public Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cooperationMode:I

.field public expired:Z

.field public expiredTime:J

.field public message:Ljava/lang/String;

.field public showMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCooperationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->cooperationMode:I

    return v0
.end method

.method public getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->expiredTime:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->expired:Z

    return v0
.end method

.method public isShowMsg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->showMsg:Z

    return v0
.end method

.method public setCooperationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->cooperationMode:I

    return-void
.end method

.method public setExpired(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->expired:Z

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->expiredTime:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public setShowMsg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceExpiredInfo;->showMsg:Z

    return-void
.end method
