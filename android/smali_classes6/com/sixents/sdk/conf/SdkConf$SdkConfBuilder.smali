.class public Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/conf/SdkConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkConfBuilder"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->keyType:I

    return p0
.end method

.method static synthetic access$100(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->timeout:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->logPrintLevel:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/IDiffDataCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/IStatusCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Lcom/sixents/sdk/base/ILogCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->secret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->openApiHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->openApiPort:I

    return p0
.end method

.method static synthetic access$700(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->serverHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->serverPort:I

    return p0
.end method

.method static synthetic access$900(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->mountPoint:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sixents/sdk/conf/SdkConf;
    .locals 2

    .line 1
    new-instance v0, Lcom/sixents/sdk/conf/SdkConf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sixents/sdk/conf/SdkConf;-><init>(Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;Lcom/sixents/sdk/conf/SdkConf$1;)V

    return-object v0
.end method

.method public devID(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devID:Ljava/lang/String;

    return-object p0
.end method

.method public devType(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->devType:Ljava/lang/String;

    return-object p0
.end method

.method public diffDataCallBack(Lcom/sixents/sdk/base/IDiffDataCallBack;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->diffDataCallBack:Lcom/sixents/sdk/base/IDiffDataCallBack;

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public keyType(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->keyType:I

    return-object p0
.end method

.method public logCallBack(Lcom/sixents/sdk/base/ILogCallBack;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->logCallBack:Lcom/sixents/sdk/base/ILogCallBack;

    return-object p0
.end method

.method public logPrintLevel(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->logPrintLevel:I

    return-object p0
.end method

.method public mountPoint(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->mountPoint:Ljava/lang/String;

    return-object p0
.end method

.method public openApiHost(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->openApiHost:Ljava/lang/String;

    return-object p0
.end method

.method public openApiPort(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->openApiPort:I

    return-object p0
.end method

.method public secret(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->secret:Ljava/lang/String;

    return-object p0
.end method

.method public serverHost(Ljava/lang/String;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->serverHost:Ljava/lang/String;

    return-object p0
.end method

.method public serverPort(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->serverPort:I

    return-object p0
.end method

.method public statusCallBack(Lcom/sixents/sdk/base/IStatusCallBack;)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->statusCallBack:Lcom/sixents/sdk/base/IStatusCallBack;

    return-object p0
.end method

.method public timeOut(I)Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sixents/sdk/conf/SdkConf$SdkConfBuilder;->timeout:I

    return-object p0
.end method
