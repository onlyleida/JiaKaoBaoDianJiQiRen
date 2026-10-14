.class public Lcom/amap/api/maps/model/CustomMapStyleOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enable:Z

.field private styleData:[B

.field private styleDataOversea:[B

.field private styleDataOverseaPath:Ljava/lang/String;

.field private styleDataPath:Ljava/lang/String;

.field private styleExtraData:[B

.field private styleExtraPath:Ljava/lang/String;

.field private styleId:Ljava/lang/String;

.field private styleTextureData:[B

.field private styleTexturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleData:[B

    .line 4
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTexturePath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTextureData:[B

    .line 6
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->enable:Z

    .line 8
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraData:[B

    .line 9
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraPath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOverseaPath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOversea:[B

    return-void
.end method


# virtual methods
.method public getStyleData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleData:[B

    return-object v0
.end method

.method public getStyleDataOversea()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOversea:[B

    return-object v0
.end method

.method public getStyleDataOverseaPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOverseaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleDataPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleExtraData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraData:[B

    return-object v0
.end method

.method public getStyleExtraPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleId:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleTextureData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTextureData:[B

    return-object v0
.end method

.method public getStyleTexturePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTexturePath:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->enable:Z

    return v0
.end method

.method public setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->enable:Z

    return-object p0
.end method

.method public setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleData:[B

    return-object p0
.end method

.method public setStyleDataOversea([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOversea:[B

    return-object p0
.end method

.method public setStyleDataOverseaPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataOverseaPath:Ljava/lang/String;

    return-object p0
.end method

.method public setStyleDataPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleDataPath:Ljava/lang/String;

    return-object p0
.end method

.method public setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraData:[B

    return-object p0
.end method

.method public setStyleExtraPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleExtraPath:Ljava/lang/String;

    return-object p0
.end method

.method public setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleId:Ljava/lang/String;

    return-object p0
.end method

.method public setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTextureData:[B

    return-object p0
.end method

.method public setStyleTexturePath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/CustomMapStyleOptions;->styleTexturePath:Ljava/lang/String;

    return-object p0
.end method
