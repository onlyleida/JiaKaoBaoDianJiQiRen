.class public Lcom/alivc/component/capture/ScreenVideoParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cameraId:I

.field private currentZoom:I

.field private fps:I

.field private height:I

.field private maxZoom:I

.field private minZoom:I

.field private pushHeight:I

.field private pushWidth:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->rotation:I

    iput v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->minZoom:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->currentZoom:I

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->width:I

    iput p2, p0, Lcom/alivc/component/capture/ScreenVideoParam;->height:I

    iput p3, p0, Lcom/alivc/component/capture/ScreenVideoParam;->fps:I

    iput p4, p0, Lcom/alivc/component/capture/ScreenVideoParam;->cameraId:I

    iput p5, p0, Lcom/alivc/component/capture/ScreenVideoParam;->rotation:I

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->cameraId:I

    return v0
.end method

.method public getCurrentZoom()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->currentZoom:I

    return v0
.end method

.method public getFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->height:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->maxZoom:I

    return v0
.end method

.method public getMinZoom()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->minZoom:I

    return v0
.end method

.method public getPushHeight()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->pushHeight:I

    return v0
.end method

.method public getPushWidth()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->pushWidth:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/alivc/component/capture/ScreenVideoParam;->width:I

    return v0
.end method

.method public setCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->cameraId:I

    return-void
.end method

.method public setCurrentZoom(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->currentZoom:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->fps:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->height:I

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->maxZoom:I

    return-void
.end method

.method public setMinZoom(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->minZoom:I

    return-void
.end method

.method public setPushHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->pushHeight:I

    return-void
.end method

.method public setPushWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->pushWidth:I

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->rotation:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alivc/component/capture/ScreenVideoParam;->width:I

    return-void
.end method
