.class public Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCurrentParticleNum(J)I
.end method

.method public static native nativeCreate()J
.end method

.method public static native nativeCreateConstantRotationOverLife(F)J
.end method

.method public static native nativeCreateCurveSizeOverLife(FFF)J
.end method

.method public static native nativeCreateParticleEmissionModule(II)J
.end method

.method public static native nativeCreateParticleOverLifeModule()J
.end method

.method public static native nativeCreateRandomColorBetWeenTwoConstants(FFFFFFFF)J
.end method

.method public static native nativeCreateRandomVelocityBetweenTwoConstants(FFFFFF)J
.end method

.method public static native nativeCreateRectParticleShape(FFFFZ)J
.end method

.method public static native nativeCreateSinglePointParticleShape(FFFZ)J
.end method

.method public static native nativeDestroy(J)J
.end method

.method public static native nativeReleaseColorGenerate(J)V
.end method

.method public static native nativeReleaseParticleEmissonModule(J)V
.end method

.method public static native nativeReleaseParticleOverLifeModule(J)V
.end method

.method public static native nativeReleaseParticleShapeModule(J)V
.end method

.method public static native nativeReleaseRotationOverLife(J)V
.end method

.method public static native nativeReleaseSizeOverLife(J)V
.end method

.method public static native nativeReleaseVelocityOverLife(J)V
.end method

.method public static native nativeRender(J[F[FIIFFF)V
.end method

.method public static native nativeSetGLShaderManager(JJ)V
.end method

.method public static native nativeSetOverLifeItem(JJI)V
.end method

.method public static native nativeSetTextureId(JI)V
.end method

.method public static native setDuration(JJ)V
.end method

.method public static native setLoop(JZ)V
.end method

.method public static native setMaxParticles(JI)V
.end method

.method public static native setParticleEmission(JJ)V
.end method

.method public static native setParticleLifeTime(JJ)V
.end method

.method public static native setParticleOverLifeModule(JJ)V
.end method

.method public static native setParticleShapeModule(JJ)V
.end method

.method public static native setParticleStartSpeed(JJ)V
.end method

.method public static native setPreWram(JZ)V
.end method

.method public static native setStartColor(JJ)V
.end method

.method public static native setStartParticleSize(JFF)V
.end method
