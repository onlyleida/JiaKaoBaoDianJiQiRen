.class public Lcn/mucang/android/core/video/WatermarkEntity$Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/video/WatermarkEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/video/WatermarkEntity$Size;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/video/WatermarkEntity$Size;->width:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/video/WatermarkEntity$Size;->height:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/video/WatermarkEntity$Size;->width:F

    return-void
.end method
