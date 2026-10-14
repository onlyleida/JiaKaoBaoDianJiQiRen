.class public Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/base/ae/gmap/GLMapEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParam"
.end annotation


# instance fields
.field public mConfigContent:Ljava/lang/String;

.field public mConfigPath:Ljava/lang/String;

.field public mOfflineDataPath:Ljava/lang/String;

.field public mP3dCrossPath:Ljava/lang/String;

.field public mRootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mRootPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mConfigPath:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mConfigContent:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mOfflineDataPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;->mP3dCrossPath:Ljava/lang/String;

    return-void
.end method
