.class public interface abstract Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMap;


# virtual methods
.method public abstract addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V
.end method

.method public abstract addOverlayTexture(ILcom/autonavi/base/ae/gmap/gloverlay/GLTextureProperty;)V
.end method

.method public abstract addTextureItem(Lcom/amap/api/mapcore/util/ha;)V
.end method

.method public abstract animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract animateCameraWithDurationAndCallback(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
.end method

.method public abstract canShowIndoorSwitch()Z
.end method

.method public abstract changeGLOverlayIndex()V
.end method

.method public abstract changeLogoIconStyle(Ljava/lang/String;ZI)V
.end method

.method public abstract changeMapLogo(IZ)V
.end method

.method public abstract changeSize(II)V
.end method

.method public abstract changeSurface(ILjavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract checkMarkerInRect(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
.end method

.method public abstract checkZoomLevel(F)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearTileCache()V
.end method

.method public abstract createId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract createSurface(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract geo2Latlng(IILcom/autonavi/amap/mapcore/DPoint;)V
.end method

.method public abstract geo2Map(IILcom/autonavi/base/amap/mapcore/FPoint;)V
.end method

.method public abstract getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;
.end method

.method public abstract getBaseOverlayTextureID()I
.end method

.method public abstract getCameraDegree(I)F
.end method

.method public abstract getCameraPositionPrj(Z)Lcom/amap/api/maps/model/CameraPosition;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDottedLineTextureID(I)I
.end method

.method public abstract getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
.end method

.method public abstract getFinalMatrix()[F
.end method

.method public abstract getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;
.end method

.method public abstract getGLMapView()Landroid/view/View;
.end method

.method public abstract getGLShader(I)Lcom/amap/api/mapcore/util/g2;
.end method

.method public abstract getGLShaderManager()Lcom/amap/api/mapcore/util/h2;
.end method

.method public abstract getGeoCenter(ILcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract getLatLng2Map(DDLcom/autonavi/base/amap/mapcore/FPoint;)V
.end method

.method public abstract getLatLng2Pixel(DDLcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract getLineTextureID()I
.end method

.method public abstract getLineTextureRatio()F
.end method

.method public abstract getLogoMarginRate(I)F
.end method

.method public abstract getLogoPosition()I
.end method

.method public abstract getMapAngle(I)F
.end method

.method public abstract getMapBounds(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
.end method

.method public abstract getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;
.end method

.method public abstract getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;
.end method

.method public abstract getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;
.end method

.method public abstract getMapZoomScale()F
.end method

.method public abstract getMaskLayerType()I
.end method

.method public abstract getOnCameraChangeListener()Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPixel2Geo(IILcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V
.end method

.method public abstract getPreciseLevel(I)F
.end method

.method public abstract getProjection()Lcom/autonavi/base/amap/api/mapcore/IProjectionDelegate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRect()Landroid/graphics/Rect;
.end method

.method public abstract getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;
.end method

.method public abstract getTextureItem(Lcom/amap/api/maps/model/BitmapDescriptor;Z)Lcom/amap/api/mapcore/util/ha;
.end method

.method public abstract getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;
.end method

.method public abstract getUnitLengthByZoom(I)F
.end method

.method public abstract getWaterMarkerPositon()Landroid/graphics/Point;
.end method

.method public abstract getZoomLevel()F
.end method

.method public abstract hideInfoWindow()V
.end method

.method public abstract isInfoWindowShown(Lcom/autonavi/base/amap/api/mapcore/overlays/IMarkerDelegate;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLockMapAngle(I)Z
.end method

.method public abstract isLockMapCameraDegree(I)Z
.end method

.method public abstract isUseAnchor()Z
.end method

.method public abstract latlon2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V
.end method

.method public abstract moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDoubleTap(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract onLongPress(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSingleTapConfirmed(ILandroid/view/MotionEvent;)Z
.end method

.method public abstract pixel2Map(IILandroid/graphics/PointF;)V
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract redrawInfoWindow()V
.end method

.method public abstract refreshLogo()V
.end method

.method public abstract reloadMapCustomStyle()V
.end method

.method public abstract removeEngineGLOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
.end method

.method public abstract removeGLModel(Ljava/lang/String;)Z
.end method

.method public abstract removeGLOverlay(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeMarker(Ljava/lang/String;)Z
.end method

.method public abstract removeTextureItem(Ljava/lang/String;)V
.end method

.method public abstract resetRenderTimeLongLong()V
.end method

.method public abstract setCustomMapStyle(Z[B)V
.end method

.method public abstract setGestureStatus(II)V
.end method

.method public abstract setHideLogoEnble(Z)V
.end method

.method public abstract setLogoBottomMargin(I)V
.end method

.method public abstract setLogoLeftMargin(I)V
.end method

.method public abstract setLogoMarginRate(IF)V
.end method

.method public abstract setLogoPosition(I)V
.end method

.method public abstract setMapCustomEnable(ZZ)V
.end method

.method public abstract setMapEnable(Z)V
.end method

.method public abstract setMapWidgetListener(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V
.end method

.method public abstract setZoomPosition(I)V
.end method

.method public abstract showCompassEnabled(Z)V
.end method

.method public abstract showIndoorSwitchControlsEnabled(Z)V
.end method

.method public abstract showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showLogoEnabled(Z)V
.end method

.method public abstract showMyLocationButtonEnabled(Z)V
.end method

.method public abstract showMyLocationOverlay(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showScaleEnabled(Z)V
.end method

.method public abstract showZoomControlsEnabled(Z)V
.end method

.method public abstract toMapLenWithWin(I)F
.end method

.method public abstract zoomOut(I)V
.end method
