.class Lcn/mucang/android/core/video/WatermarkEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/video/WatermarkEntity$Location;,
        Lcn/mucang/android/core/video/WatermarkEntity$Size;
    }
.end annotation


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private imageSize:Lcn/mucang/android/core/video/WatermarkEntity$Size;

.field private location:Lcn/mucang/android/core/video/WatermarkEntity$Location;

.field private size:Lcn/mucang/android/core/video/WatermarkEntity$Size;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()Lcn/mucang/android/core/video/WatermarkEntity$Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->imageSize:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    return-object v0
.end method

.method public getLocation()Lcn/mucang/android/core/video/WatermarkEntity$Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->location:Lcn/mucang/android/core/video/WatermarkEntity$Location;

    return-object v0
.end method

.method public getSize()Lcn/mucang/android/core/video/WatermarkEntity$Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->size:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->iconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->size:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/core/video/WatermarkEntity$Size;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/video/WatermarkEntity;->size:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    invoke-virtual {v0}, Lcn/mucang/android/core/video/WatermarkEntity$Size;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/video/WatermarkEntity;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageSize(Lcn/mucang/android/core/video/WatermarkEntity$Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/video/WatermarkEntity;->imageSize:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    return-void
.end method

.method public setLocation(Lcn/mucang/android/core/video/WatermarkEntity$Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/video/WatermarkEntity;->location:Lcn/mucang/android/core/video/WatermarkEntity$Location;

    return-void
.end method

.method public setSize(Lcn/mucang/android/core/video/WatermarkEntity$Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/video/WatermarkEntity;->size:Lcn/mucang/android/core/video/WatermarkEntity$Size;

    return-void
.end method
