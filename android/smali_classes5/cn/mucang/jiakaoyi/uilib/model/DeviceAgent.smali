.class public Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agentId:J

.field public passEnabled:Z

.field public tenantId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgentId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->agentId:J

    return-wide v0
.end method

.method public getTenantId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->tenantId:J

    return-wide v0
.end method

.method public isPassEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->passEnabled:Z

    return v0
.end method

.method public setAgentId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->agentId:J

    return-void
.end method

.method public setPassEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->passEnabled:Z

    return-void
.end method

.method public setTenantId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->tenantId:J

    return-void
.end method
