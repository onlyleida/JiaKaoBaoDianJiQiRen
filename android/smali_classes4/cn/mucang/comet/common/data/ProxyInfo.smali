.class public Lcn/mucang/comet/common/data/ProxyInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private host:Ljava/lang/String;

.field private id:J

.field private initIdleSlaveCount:I

.field private maxLostPackets:I

.field private port:I

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->id:J

    return-wide v0
.end method

.method public getInitIdleSlaveCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->initIdleSlaveCount:I

    return v0
.end method

.method public getMaxLostPackets()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->maxLostPackets:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->port:I

    return v0
.end method

.method public getTtl()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ProxyInfo;->ttl:I

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->host:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->id:J

    return-void
.end method

.method public setInitIdleSlaveCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->initIdleSlaveCount:I

    return-void
.end method

.method public setMaxLostPackets(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->maxLostPackets:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->port:I

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->ttl:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxLostPackets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->maxLostPackets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",initIdleSlaveCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/comet/common/data/ProxyInfo;->initIdleSlaveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
