package com.amap.api.maps;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.maps.model.AMapGestureListener;
import com.amap.api.maps.model.Arc;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.BasePointOverlay;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.BuildingOverlay;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.CrossOverlay;
import com.amap.api.maps.model.CrossOverlayOptions;
import com.amap.api.maps.model.CustomMapStyleOptions;
import com.amap.api.maps.model.GL3DModel;
import com.amap.api.maps.model.GL3DModelOptions;
import com.amap.api.maps.model.GroundOverlay;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.HeatMapLayer;
import com.amap.api.maps.model.HeatMapLayerOptions;
import com.amap.api.maps.model.IndoorBuildingInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlay;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.MyTrafficStyle;
import com.amap.api.maps.model.NavigateArrow;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.Poi;
import com.amap.api.maps.model.Polygon;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.RouteOverlay;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.amap.api.maps.model.particle.ParticleOverlay;
import com.amap.api.maps.model.particle.ParticleOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AMap {
    public static final String CHINESE = "zh_cn";
    public static final String CUSTOM = "custom";
    public static final String ENGLISH = "en";
    public static final String LOCAL = "local";
    public static final int LOCATION_TYPE_LOCATE = 1;
    public static final int LOCATION_TYPE_MAP_FOLLOW = 2;
    public static final int LOCATION_TYPE_MAP_ROTATE = 3;
    public static final int MAP_TYPE_BUS = 5;
    public static final int MAP_TYPE_NAVI = 4;
    public static final int MAP_TYPE_NIGHT = 3;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MASK_LAYER_NONE = -1;
    public static final int MASK_LAYER_UNDER_LINE = 1;
    public static final int MASK_LAYER_UNDER_MARKER = 0;
    public static final String STYLE_CHINESE = "style_zh_cn";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IAMap f11468a;
    private UiSettings b;
    private Projection c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MyTrafficStyle f11469d;

    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    public interface CommonInfoWindowAdapter {
        InfoWindowParams getInfoWindowParams(BasePointOverlay basePointOverlay);
    }

    public interface ImageInfoWindowAdapter extends InfoWindowAdapter {
        long getInfoWindowUpdateTime();
    }

    public interface InfoWindowAdapter {
        View getInfoContents(Marker marker);

        View getInfoWindow(Marker marker);
    }

    public interface MultiPositionInfoWindowAdapter extends InfoWindowAdapter {
        View getInfoWindowClick(Marker marker);

        View getOverturnInfoWindow(Marker marker);

        View getOverturnInfoWindowClick(Marker marker);
    }

    public interface OnCacheRemoveListener {
        void onRemoveCacheFinish(boolean z);
    }

    public interface OnCameraChangeListener {
        void onCameraChange(CameraPosition cameraPosition);

        void onCameraChangeFinish(CameraPosition cameraPosition);
    }

    public interface OnIndoorBuildingActiveListener {
        void OnIndoorBuilding(IndoorBuildingInfo indoorBuildingInfo);
    }

    public interface OnInfoWindowClickListener {
        void onInfoWindowClick(Marker marker);
    }

    public interface OnMapClickListener {
        void onMapClick(LatLng latLng);
    }

    public interface OnMapLoadedListener {
        void onMapLoaded();
    }

    public interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    public interface OnMapScreenShotListener {
        void onMapScreenShot(Bitmap bitmap);

        void onMapScreenShot(Bitmap bitmap, int i);
    }

    public interface OnMapTouchListener {
        void onTouch(MotionEvent motionEvent);
    }

    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    public interface OnMultiPointClickListener {
        boolean onPointClick(MultiPointItem multiPointItem);
    }

    public interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    public interface OnPOIClickListener {
        void onPOIClick(Poi poi);
    }

    public interface OnPolylineClickListener {
        void onPolylineClick(Polyline polyline);
    }

    public interface onMapPrintScreenListener {
        void onMapPrint(Drawable drawable);
    }

    protected AMap(IAMap iAMap) {
        this.f11468a = iAMap;
    }

    @Deprecated
    public static String getVersion() {
        return "7.4.0";
    }

    public void accelerateNetworkInChinese(boolean z) {
        try {
            IAMap iAMap = this.f11468a;
            if (iAMap != null) {
                iAMap.accelerateNetworkInChinese(z);
            }
        } catch (Throwable unused) {
        }
    }

    public final Arc addArc(ArcOptions arcOptions) {
        try {
            return this.f11468a.addArc(arcOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final BuildingOverlay addBuildingOverlay() {
        try {
            return this.f11468a.addBuildingOverlay();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            return this.f11468a.addCircle(circleOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public CrossOverlay addCrossOverlay(CrossOverlayOptions crossOverlayOptions) {
        try {
            return this.f11468a.addCrossVector(crossOverlayOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public GL3DModel addGL3DModel(GL3DModelOptions gL3DModelOptions) {
        try {
            return this.f11468a.addGLModel(gL3DModelOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            return this.f11468a.addGroundOverlay(groundOverlayOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final HeatMapLayer addHeatMapLayer(HeatMapLayerOptions heatMapLayerOptions) {
        try {
            return this.f11468a.addHeatMapLayer(heatMapLayerOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            return this.f11468a.addMarker(markerOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final ArrayList<Marker> addMarkers(ArrayList<MarkerOptions> arrayList, boolean z) {
        try {
            return this.f11468a.addMarkers(arrayList, z);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public MultiPointOverlay addMultiPointOverlay(MultiPointOverlayOptions multiPointOverlayOptions) {
        try {
            return this.f11468a.addMultiPointOverlay(multiPointOverlayOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final NavigateArrow addNavigateArrow(NavigateArrowOptions navigateArrowOptions) {
        try {
            return this.f11468a.addNavigateArrow(navigateArrowOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final void addOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        try {
            this.f11468a.addOnCameraChangeListener(onCameraChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addOnIndoorBuildingActiveListener(OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) {
        try {
            this.f11468a.addOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            this.f11468a.addOnInfoWindowClickListener(onInfoWindowClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnMapClickListener(OnMapClickListener onMapClickListener) {
        try {
            this.f11468a.addOnMapClickListener(onMapClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        try {
            this.f11468a.addOnMapLoadedListener(onMapLoadedListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        try {
            this.f11468a.addOnMapLongClickListener(onMapLongClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnMapTouchListener(OnMapTouchListener onMapTouchListener) {
        try {
            this.f11468a.addOnMapTouchListener(onMapTouchListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        try {
            this.f11468a.addOnMarkerClickListener(onMarkerClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        try {
            this.f11468a.addOnMarkerDragListener(onMarkerDragListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void addOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            this.f11468a.addOnMyLocationChangeListener(onMyLocationChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnPOIClickListener(OnPOIClickListener onPOIClickListener) {
        try {
            this.f11468a.addOnPOIClickListener(onPOIClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void addOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        try {
            this.f11468a.addOnPolylineClickListener(onPolylineClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public ParticleOverlay addParticleOverlay(ParticleOverlayOptions particleOverlayOptions) {
        try {
            return this.f11468a.addParticleOverlay(particleOverlayOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        try {
            return this.f11468a.addPolygon(polygonOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        try {
            return this.f11468a.addPolyline(polylineOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public RouteOverlay addRouteOverlay() {
        return this.f11468a.addNaviRouteOverlay();
    }

    public final Text addText(TextOptions textOptions) {
        try {
            return this.f11468a.addText(textOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            return this.f11468a.addTileOverlay(tileOverlayOptions);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            this.f11468a.animateCamera(cameraUpdate);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public Pair<Float, LatLng> calculateZoomToSpanLevel(int i, int i2, int i3, int i4, LatLng latLng, LatLng latLng2) {
        return this.f11468a.calculateZoomToSpanLevel(i, i2, i3, i4, latLng, latLng2);
    }

    public final void clear() {
        try {
            this.f11468a.clear();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.f11468a.getCameraPosition();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public String getCurrentStyle() {
        try {
            IAMap iAMap = this.f11468a;
            return iAMap != null ? iAMap.getCurrentWorldVectorMapStyle() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public final InfoWindowAnimationManager getInfoWindowAnimationManager() {
        return this.f11468a.getInfoWindowAnimationManager();
    }

    public String getMapContentApprovalNumber() {
        try {
            return this.f11468a.getMapContentApprovalNumber();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void getMapPrintScreen(onMapPrintScreenListener onmapprintscreenlistener) {
        this.f11468a.getMapPrintScreen(onmapprintscreenlistener);
    }

    public final List<Marker> getMapScreenMarkers() {
        try {
            return this.f11468a.getMapScreenMarkers();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void getMapScreenShot(OnMapScreenShotListener onMapScreenShotListener) {
        this.f11468a.getMapScreenShot(onMapScreenShotListener);
    }

    public final int getMapTextZIndex() {
        try {
            return this.f11468a.getMapTextZIndex();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public final int getMapType() {
        try {
            return this.f11468a.getMapType();
        } catch (Throwable th) {
            th.printStackTrace();
            return 1;
        }
    }

    public final float getMaxZoomLevel() {
        return this.f11468a.getMaxZoomLevel();
    }

    public final float getMinZoomLevel() {
        return this.f11468a.getMinZoomLevel();
    }

    public final Location getMyLocation() {
        try {
            return this.f11468a.getMyLocation();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final MyLocationStyle getMyLocationStyle() {
        try {
            return this.f11468a.getMyLocationStyle();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public MyTrafficStyle getMyTrafficStyle() {
        return this.f11469d;
    }

    public long getNativeMapController() {
        try {
            return this.f11468a.getNativeMapController();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public void getP20MapCenter(IPoint iPoint) {
        if (iPoint == null) {
            try {
                iPoint = new IPoint();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        ((Point) iPoint).x = this.f11468a.getSX();
        ((Point) iPoint).y = this.f11468a.getSY();
    }

    public final Projection getProjection() {
        try {
            if (this.c == null) {
                this.c = this.f11468a.getAMapProjection();
            }
            return this.c;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float[] getProjectionMatrix() {
        return this.f11468a.getProjectionMatrix();
    }

    public String getSatelliteImageApprovalNumber() {
        try {
            return this.f11468a.getSatelliteImageApprovalNumber();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float getScalePerPixel() {
        try {
            return this.f11468a.getScalePerPixel();
        } catch (Throwable th) {
            th.printStackTrace();
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.b == null) {
                this.b = this.f11468a.getAMapUiSettings();
            }
            return this.b;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public float[] getViewMatrix() {
        return this.f11468a.getViewMatrix();
    }

    public float getZoomToSpanLevel(LatLng latLng, LatLng latLng2) {
        return this.f11468a.getZoomToSpanLevel(latLng, latLng2);
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.f11468a.isMyLocationEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean isTouchPoiEnable() {
        try {
            return this.f11468a.isTouchPoiEnable();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.f11468a.isTrafficEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            this.f11468a.moveCamera(cameraUpdate);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reloadMap() {
        this.f11468a.reloadMap();
    }

    public final void removeOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        try {
            this.f11468a.removeOnCameraChangeListener(onCameraChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removeOnIndoorBuildingActiveListener(OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) {
        try {
            this.f11468a.removeOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removeOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            this.f11468a.removeOnInfoWindowClickListener(onInfoWindowClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnMapClickListener(OnMapClickListener onMapClickListener) {
        try {
            this.f11468a.removeOnMapClickListener(onMapClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        try {
            this.f11468a.removeOnMapLoadedListener(onMapLoadedListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removeOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        try {
            this.f11468a.removeOnMapLongClickListener(onMapLongClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnMapTouchListener(OnMapTouchListener onMapTouchListener) {
        try {
            this.f11468a.removeOnMapTouchListener(onMapTouchListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        try {
            this.f11468a.removeOnMarkerClickListener(onMarkerClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        try {
            this.f11468a.removeOnMarkerDragListener(onMarkerDragListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removeOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            this.f11468a.removeOnMyLocationChangeListener(onMyLocationChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnPOIClickListener(OnPOIClickListener onPOIClickListener) {
        try {
            this.f11468a.removeOnPOIClickListener(onPOIClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void removeOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        try {
            this.f11468a.removeOnPolylineClickListener(onPolylineClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removecache() {
        try {
            this.f11468a.removecache();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void resetMinMaxZoomPreference() {
        this.f11468a.resetMinMaxZoomPreference();
    }

    public void runOnDrawFrame() {
        this.f11468a.setRunLowFrame(false);
    }

    public void setAMapGestureListener(AMapGestureListener aMapGestureListener) {
        this.f11468a.setAMapGestureListener(aMapGestureListener);
    }

    public final void setCommonInfoWindowAdapter(CommonInfoWindowAdapter commonInfoWindowAdapter) {
        try {
            this.f11468a.setInfoWindowAdapter(commonInfoWindowAdapter);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCustomMapStyle(CustomMapStyleOptions customMapStyleOptions) {
        this.f11468a.setCustomMapStyle(customMapStyleOptions);
    }

    public void setCustomMapStyleID(String str) {
        Log.e("amap", "该方法已无效，请到官网(lbs.amap.com)更新新版样式文件并使用setCustomMapStyleOptions");
    }

    public void setCustomMapStylePath(String str) {
        Log.e("amap", "该方法已无效，请到官网(lbs.amap.com)更新新版样式文件并使用setCustomMapStyleOptions");
    }

    public void setCustomRenderer(CustomRenderer customRenderer) {
        try {
            this.f11468a.setCustomRenderer(customRenderer);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setCustomTextureResourcePath(String str) {
        Log.e("amap", "该方法已无效，请到官网(lbs.amap.com)更新新版样式文件并使用setCustomMapStyleOptions");
    }

    public void setIndoorBuildingInfo(IndoorBuildingInfo indoorBuildingInfo) {
        try {
            this.f11468a.setIndoorBuildingInfo(indoorBuildingInfo);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setInfoWindowAdapter(InfoWindowAdapter infoWindowAdapter) {
        try {
            this.f11468a.setInfoWindowAdapter(infoWindowAdapter);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setLoadOfflineData(boolean z) {
        try {
            this.f11468a.setLoadOfflineData(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setLocationSource(LocationSource locationSource) {
        try {
            this.f11468a.setLocationSource(locationSource);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMapCustomEnable(boolean z) {
        Log.e("amap", "该方法已无效，请到官网(lbs.amap.com)更新新版样式文件并使用setCustomMapStyleOptions");
    }

    public void setMapLanguage(String str) {
        try {
            this.f11468a.setMapLanguage(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMapStatusLimits(LatLngBounds latLngBounds) {
        try {
            this.f11468a.setMapStatusLimits(latLngBounds);
            moveCamera(CameraUpdateFactory.newLatLngBounds(latLngBounds, 0));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setMapTextZIndex(int i) {
        try {
            this.f11468a.setMapTextZIndex(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setMapType(int i) {
        try {
            this.f11468a.setMapType(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMaskLayerParams(int i, int i2, int i3, int i4, int i5, long j) {
        this.f11468a.setMaskLayerParams(i, i2, i3, i4, i5, j);
    }

    public void setMaxZoomLevel(float f2) {
        this.f11468a.setMaxZoomLevel(f2);
    }

    public void setMinZoomLevel(float f2) {
        this.f11468a.setMinZoomLevel(f2);
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.f11468a.setMyLocationEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setMyLocationRotateAngle(float f2) {
        try {
            this.f11468a.setMyLocationRotateAngle(f2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setMyLocationStyle(MyLocationStyle myLocationStyle) {
        try {
            this.f11468a.setMyLocationStyle(myLocationStyle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setMyLocationType(int i) {
        try {
            this.f11468a.setMyLocationType(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setMyTrafficStyle(MyTrafficStyle myTrafficStyle) {
        try {
            this.f11469d = myTrafficStyle;
            this.f11468a.setMyTrafficStyle(myTrafficStyle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setNaviLabelEnable(boolean z, int i, int i2) {
        try {
            this.f11468a.setNaviLabelEnable(z, i, i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        try {
            this.f11468a.setOnCameraChangeListener(onCameraChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnIndoorBuildingActiveListener(OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) {
        try {
            this.f11468a.setOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            this.f11468a.setOnInfoWindowClickListener(onInfoWindowClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMapClickListener(OnMapClickListener onMapClickListener) {
        try {
            this.f11468a.setOnMapClickListener(onMapClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        try {
            this.f11468a.setOnMaploadedListener(onMapLoadedListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        try {
            this.f11468a.setOnMapLongClickListener(onMapLongClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMapTouchListener(OnMapTouchListener onMapTouchListener) {
        try {
            this.f11468a.setOnMapTouchListener(onMapTouchListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        try {
            this.f11468a.setOnMarkerClickListener(onMarkerClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        try {
            this.f11468a.setOnMarkerDragListener(onMarkerDragListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setOnMultiPointClickListener(OnMultiPointClickListener onMultiPointClickListener) {
        try {
            this.f11468a.setOnMultiPointClickListener(onMultiPointClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            this.f11468a.setOnMyLocationChangeListener(onMyLocationChangeListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnPOIClickListener(OnPOIClickListener onPOIClickListener) {
        try {
            this.f11468a.setOnPOIClickListener(onPOIClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void setOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        try {
            this.f11468a.setOnPolylineClickListener(onPolylineClickListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setPointToCenter(int i, int i2) {
        try {
            this.f11468a.setCenterToPixel(i, i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setRenderFps(int i) {
        this.f11468a.setRenderFps(i);
    }

    public void setRenderMode(int i) {
        this.f11468a.setRenderMode(i);
    }

    public void setRoadArrowEnable(boolean z) {
        try {
            this.f11468a.setRoadArrowEnable(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTouchPoiEnable(boolean z) {
        try {
            this.f11468a.setTouchPoiEnable(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setTrafficEnabled(boolean z) {
        try {
            this.f11468a.setTrafficEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setWorldVectorMapStyle(String str) {
        try {
            this.f11468a.setWorldVectorMapStyle(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void showBuildings(boolean z) {
        try {
            this.f11468a.set3DBuildingEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void showIndoorMap(boolean z) {
        try {
            this.f11468a.setIndoorEnabled(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void showMapText(boolean z) {
        try {
            this.f11468a.setMapTextEnable(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void stopAnimation() {
        try {
            this.f11468a.stopAnimation();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            this.f11468a.animateCameraWithCallback(cameraUpdate, cancelableCallback);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void clear(boolean z) {
        try {
            this.f11468a.clear(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void removecache(OnCacheRemoveListener onCacheRemoveListener) {
        try {
            this.f11468a.removecache(onCacheRemoveListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, long j, CancelableCallback cancelableCallback) {
        if (j <= 0) {
            try {
                Log.w("AMap", "durationMs must be positive");
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        this.f11468a.animateCameraWithDurationAndCallback(cameraUpdate, j, cancelableCallback);
    }
}
