.class public Lcom/sixents/sdk/conf/SdkConf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;,
        Lcom/sixents/sdk/conf/SdkConf$LogPrintLevel;
    }
.end annotation


# instance fields
.field private devID:Ljava/lang/String;

.field private devType:Ljava/lang/String;

.field private diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

.field private key:Ljava/lang/String;

.field private keyType:I

.field private logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

.field private logPrintLevel:I

.field private mountPoint:Ljava/lang/String;

.field private openApiHost:Ljava/lang/String;

.field private openApiPort:I

.field private secret:Ljava/lang/String;

.field private serverHost:Ljava/lang/String;

.field private serverPort:I

.field private statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

.field private timeout:I


# direct methods
.method private constructor <init>(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$000(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sixents/sdk/conf/SdkConf;->keyType:I

    .line 4
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$100(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->key:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$200(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->secret:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$300(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->devID:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$400(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->devType:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$500(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiHost:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$600(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiPort:I

    .line 10
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$700(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->serverHost:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$800(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sixents/sdk/conf/SdkConf;->serverPort:I

    .line 12
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$900(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->mountPoint:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$1000(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sixents/sdk/conf/SdkConf;->timeout:I

    .line 14
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$1100(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sixents/sdk/conf/SdkConf;->logPrintLevel:I

    .line 15
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$1200(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/IDiffDataCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

    .line 16
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$1300(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/IStatusCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

    .line 17
    invoke-static {p1}, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->access$1400(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/ILogCallBack;

    move-result-object p1

    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;Lcom/sixents/sdk/conf/SdkConf$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sixents/sdk/conf/SdkConf;-><init>(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)V

    return-void
.end method


# virtual methods
.method public getDevID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->devID:Ljava/lang/String;

    return-object v0
.end method

.method public getDevType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->devType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffDataCallBack()Lcom/sixents/sdk/base/IDiffDataCallBack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sixents/sdk/conf/SdkConf;->keyType:I

    return v0
.end method

.method public getLogCallBack()Lcom/sixents/sdk/base/ILogCallBack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

    return-object v0
.end method

.method public getLogPrintLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sixents/sdk/conf/SdkConf;->logPrintLevel:I

    return v0
.end method

.method public getMountPoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->mountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenApiPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiPort:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->serverHost:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sixents/sdk/conf/SdkConf;->serverPort:I

    return v0
.end method

.method public getStatusCallBack()Lcom/sixents/sdk/base/IStatusCallBack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sixents/sdk/conf/SdkConf;->statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sixents/sdk/conf/SdkConf;->timeout:I

    return v0
.end method

.method public setDevID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->devID:Ljava/lang/String;

    return-void
.end method

.method public setDevType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->devType:Ljava/lang/String;

    return-void
.end method

.method public setDiffDataCallBack(Lcom/sixents/sdk/base/IDiffDataCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->key:Ljava/lang/String;

    return-void
.end method

.method public setKeyType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf;->keyType:I

    return-void
.end method

.method public setLogCallBack(Lcom/sixents/sdk/base/ILogCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

    return-void
.end method

.method public setLogPrintLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf;->logPrintLevel:I

    return-void
.end method

.method public setMountPoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->mountPoint:Ljava/lang/String;

    return-void
.end method

.method public setOpenApiHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiHost:Ljava/lang/String;

    return-void
.end method

.method public setOpenApiPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf;->openApiPort:I

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->secret:Ljava/lang/String;

    return-void
.end method

.method public setServerHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->serverHost:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf;->serverPort:I

    return-void
.end method

.method public setStatusCallBack(Lcom/sixents/sdk/base/IStatusCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf;->statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf;->timeout:I

    return-void
.end method
