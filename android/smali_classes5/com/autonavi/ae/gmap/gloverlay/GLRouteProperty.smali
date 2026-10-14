.class public Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty$EAMapRouteTexture;
    }
.end annotation


# instance fields
.field public euRouteTexture:Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty$EAMapRouteTexture;

.field public isCanCovered:Z

.field public isLineExtract:Z

.field public isUseCap:Z

.field public isUseColor:Z

.field public mBgColor:I

.field public mBgResId:I

.field public mBorderLineWidth:I

.field public mCapX1:F

.field public mCapX2:F

.field public mCapY1:F

.field public mCapY2:F

.field public mFilledColor:I

.field public mFilledResId:I

.field public mGLStart:F

.field public mLineWidth:I

.field public mShowArrow:Z

.field public mSimple3DFillResId:I

.field public mSimple3DGLStart:F

.field public mSimple3DTextureLen:F

.field public mSimple3DX1:F

.field public mSimple3DX2:F

.field public mSimple3DY1:F

.field public mSimple3DY2:F

.field public mTextureLen:F

.field public mX1:F

.field public mX2:F

.field public mY1:F

.field public mY2:F

.field public mbTexPreMulAlpha:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mSimple3DFillResId:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mShowArrow:Z

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mbTexPreMulAlpha:Z

    return-void
.end method
