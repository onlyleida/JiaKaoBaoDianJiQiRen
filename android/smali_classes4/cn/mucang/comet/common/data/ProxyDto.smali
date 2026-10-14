.class public Lcn/mucang/comet/common/data/ProxyDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private volatile closed:Z

.field private createTime:J

.field private id:J

.field private initIdleSlaveCount:I

.field private maxIdleDuration:J

.field private maxLostPackets:I

.field private maxSilenceDuration:J

.field private proxyConnectTime:J

.field private proxyHandlerCount:J

.field private proxyPort:I

.field private serverSocketChannelCount:J

.field private slaveConnectTime:J

.field private slaveHandlerCount:J

.field private slavePort:I

.field private socketCount:J

.field private status:I

.field private trafficReceived:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->createTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->id:J

    return-wide v0
.end method

.method public getInitIdleSlaveCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->initIdleSlaveCount:I

    return v0
.end method

.method public getMaxIdleDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxIdleDuration:J

    return-wide v0
.end method

.method public getMaxLostPackets()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxLostPackets:I

    return v0
.end method

.method public getMaxSilenceDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxSilenceDuration:J

    return-wide v0
.end method

.method public getProxyConnectTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyConnectTime:J

    return-wide v0
.end method

.method public getProxyHandlerCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyHandlerCount:J

    return-wide v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyPort:I

    return v0
.end method

.method public getServerSocketChannelCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->serverSocketChannelCount:J

    return-wide v0
.end method

.method public getSlaveConnectTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->slaveConnectTime:J

    return-wide v0
.end method

.method public getSlaveHandlerCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->slaveHandlerCount:J

    return-wide v0
.end method

.method public getSlavePort()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->slavePort:I

    return v0
.end method

.method public getSocketCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->socketCount:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->status:I

    return v0
.end method

.method public getTrafficReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->trafficReceived:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/comet/common/data/ProxyDto;->closed:Z

    return v0
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->closed:Z

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->createTime:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->id:J

    return-void
.end method

.method public setInitIdleSlaveCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->initIdleSlaveCount:I

    return-void
.end method

.method public setMaxIdleDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxIdleDuration:J

    return-void
.end method

.method public setMaxLostPackets(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxLostPackets:I

    return-void
.end method

.method public setMaxSilenceDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->maxSilenceDuration:J

    return-void
.end method

.method public setProxyConnectTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyConnectTime:J

    return-void
.end method

.method public setProxyHandlerCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyHandlerCount:J

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->proxyPort:I

    return-void
.end method

.method public setServerSocketChannelCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->serverSocketChannelCount:J

    return-void
.end method

.method public setSlaveConnectTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->slaveConnectTime:J

    return-void
.end method

.method public setSlaveHandlerCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->slaveHandlerCount:J

    return-void
.end method

.method public setSlavePort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->slavePort:I

    return-void
.end method

.method public setSocketCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->socketCount:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->status:I

    return-void
.end method

.method public setTrafficReceived(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyDto;->trafficReceived:J

    return-void
.end method
