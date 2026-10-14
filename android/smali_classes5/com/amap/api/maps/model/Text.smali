.class public final Lcom/amap/api/maps/model/Text;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field private textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p1, Lcom/amap/api/maps/model/Text;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    check-cast p1, Lcom/amap/api/maps/model/Text;

    iget-object p1, p1, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    .line 3
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public getAlignX()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignX()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getAlignY()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getBackgroundColor()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontColor()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getFontSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getRotateAngle()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getZIndex()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->remove()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAlign(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setAlign(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setFontSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRotate(F)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setRotateAngle(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/Text;->textDelegate:Lcom/autonavi/amap/mapcore/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->setZIndex(F)V

    return-void
.end method
