.class public final Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirvana/tools/crash/SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkInfoBuilder"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private nativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdkName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aSdkInfo()Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 1

    new-instance v0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;

    invoke-direct {v0}, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final appId(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/nirvana/tools/crash/SdkInfo;
    .locals 2

    new-instance v0, Lcom/nirvana/tools/crash/SdkInfo;

    invoke-direct {v0}, Lcom/nirvana/tools/crash/SdkInfo;-><init>()V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setSdkName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->packageNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setPackageNames(Ljava/util/List;)V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkInterfaces:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setSdkInterfaces(Ljava/util/List;)V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->nativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setNativeLibraries(Ljava/util/List;)V

    iget-object v1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SdkInfo;->setSdkVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public final nativeLibraries(Ljava/util/List;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->nativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public final packageNames(Ljava/util/List;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->packageNames:Ljava/util/List;

    return-object p0
.end method

.method public final sdkInterfaces(Ljava/util/List;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkInterfaces:Ljava/util/List;

    return-object p0
.end method

.method public final sdkName(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkName:Ljava/lang/String;

    return-object p0
.end method

.method public final sdkVersion(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/SdkInfo$SdkInfoBuilder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method
