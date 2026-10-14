.class public Lcom/autonavi/base/amap/mapcore/AMapNativeBuildingRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addBuildingOptions(JLcom/amap/api/maps/model/BuildingOverlayOptions;)V
.end method

.method public static native nativeClearBuildingOptions(J)V
.end method

.method public static native nativeCreate()J
.end method

.method public static native nativeDestory(J)V
.end method

.method public static native nativeSetGLShaderManager(JJ)V
.end method

.method public static native render(J[F[FIIF[I)V
.end method

.method public static native setCurTileIDs(J[I)V
.end method
