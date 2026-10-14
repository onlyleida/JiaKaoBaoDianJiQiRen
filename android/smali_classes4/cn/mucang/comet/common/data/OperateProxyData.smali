.class public Lcn/mucang/comet/common/data/OperateProxyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientInfo:Lcn/mucang/comet/common/data/ClientInfo;

.field private hardwareInfo:Lcn/mucang/comet/common/data/HardwareInfo;

.field private proxyInfo:Lcn/mucang/comet/common/data/ProxyInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientInfo()Lcn/mucang/comet/common/data/ClientInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/comet/common/data/OperateProxyData;->clientInfo:Lcn/mucang/comet/common/data/ClientInfo;

    return-object v0
.end method

.method public getHardwareInfo()Lcn/mucang/comet/common/data/HardwareInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/comet/common/data/OperateProxyData;->hardwareInfo:Lcn/mucang/comet/common/data/HardwareInfo;

    return-object v0
.end method

.method public getProxyInfo()Lcn/mucang/comet/common/data/ProxyInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/comet/common/data/OperateProxyData;->proxyInfo:Lcn/mucang/comet/common/data/ProxyInfo;

    return-object v0
.end method

.method public setClientInfo(Lcn/mucang/comet/common/data/ClientInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/comet/common/data/OperateProxyData;->clientInfo:Lcn/mucang/comet/common/data/ClientInfo;

    return-void
.end method

.method public setHardwareInfo(Lcn/mucang/comet/common/data/HardwareInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/comet/common/data/OperateProxyData;->hardwareInfo:Lcn/mucang/comet/common/data/HardwareInfo;

    return-void
.end method

.method public setProxyInfo(Lcn/mucang/comet/common/data/ProxyInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/comet/common/data/OperateProxyData;->proxyInfo:Lcn/mucang/comet/common/data/ProxyInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperateProxyData{clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/comet/common/data/OperateProxyData;->clientInfo:Lcn/mucang/comet/common/data/ClientInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", proxyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/comet/common/data/OperateProxyData;->proxyInfo:Lcn/mucang/comet/common/data/ProxyInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
