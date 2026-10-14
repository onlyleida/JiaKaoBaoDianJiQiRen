package com.amap.api.mapcore.util;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps.AMapOptions;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.CameraPosition;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class ea implements IMapFragmentDelegate {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile Context f10754f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f10755g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMap f10756a;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMapOptions f10757d;
    public int b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f10758e = true;

    public ea(int i) {
        this.c = 0;
        this.c = i % 3;
        d();
    }

    private void a() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (int i = 0; i < stackTrace.length; i++) {
                if (stackTrace[i].getClassName() != null && stackTrace[i].getClassName().endsWith("TextureMapView")) {
                    z2 = true;
                }
                if (stackTrace[i].getClassName() != null && stackTrace[i].getClassName().endsWith("Fragment")) {
                    z = true;
                }
                if ("OnDestroyView".equalsIgnoreCase(stackTrace[i].getMethodName())) {
                    z3 = true;
                }
            }
            if (z && z2 && !z3) {
                e();
            }
        } catch (Throwable unused) {
        }
    }

    private void b(Context context) {
        if (context != null) {
            f10754f = context.getApplicationContext();
        }
    }

    private void d() {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 80; i++) {
                sb.append("=");
            }
            f10755g = sb.toString();
        } catch (Throwable unused) {
        }
    }

    private void e() {
        Log.i("errorLog", f10755g);
        Log.i("errorLog", "OnDestroy 方法需要在OnDestroyView中调用");
        Log.i("errorLog", f10755g);
    }

    void c(AMapOptions aMapOptions) throws RemoteException {
        if (aMapOptions == null || this.f10756a == null) {
            return;
        }
        CameraPosition camera = aMapOptions.getCamera();
        if (camera != null) {
            this.f10756a.moveCamera(CameraUpdateFactory.newCameraPosition(camera));
        }
        UiSettings aMapUiSettings = this.f10756a.getAMapUiSettings();
        aMapUiSettings.setRotateGesturesEnabled(aMapOptions.getRotateGesturesEnabled());
        aMapUiSettings.setScrollGesturesEnabled(aMapOptions.getScrollGesturesEnabled());
        aMapUiSettings.setTiltGesturesEnabled(aMapOptions.getTiltGesturesEnabled());
        aMapUiSettings.setZoomControlsEnabled(aMapOptions.getZoomControlsEnabled());
        aMapUiSettings.setZoomGesturesEnabled(aMapOptions.getZoomGesturesEnabled());
        aMapUiSettings.setCompassEnabled(aMapOptions.getCompassEnabled());
        aMapUiSettings.setScaleControlsEnabled(aMapOptions.getScaleControlsEnabled());
        aMapUiSettings.setLogoPosition(aMapOptions.getLogoPosition());
        this.f10756a.setMapType(aMapOptions.getMapType());
        this.f10756a.setZOrderOnTop(aMapOptions.getZOrderOnTop());
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public IAMap getMap() throws RemoteException {
        if (this.f10756a == null) {
            if (f10754f == null) {
                Log.w("MapFragmentDelegateImp", "Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
                return null;
            }
            int i = f10754f.getResources().getDisplayMetrics().densityDpi;
            if (i <= 120) {
                x9.f11344a = 0.5f;
            } else if (i <= 160) {
                x9.f11344a = 0.8f;
            } else if (i <= 240) {
                x9.f11344a = 0.87f;
            } else if (i <= 320) {
                x9.f11344a = 1.0f;
            } else if (i <= 480) {
                x9.f11344a = 1.5f;
            } else if (i <= 640) {
                x9.f11344a = 1.8f;
            } else {
                x9.f11344a = 0.9f;
            }
            int i2 = this.c;
            if (i2 == 0) {
                this.f10756a = new a3(f10754f, this.f10758e).b();
            } else if (i2 == 1) {
                this.f10756a = new a4(f10754f, this.f10758e).q();
            } else {
                this.f10756a = new c2(f10754f).a();
            }
        }
        return this.f10756a;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void loadWorldVectorMap(boolean z) {
        this.f10758e = z;
        IAMap iAMap = this.f10756a;
        if (iAMap != null) {
            iAMap.loadWorldVectorMap(z);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onCreate(Bundle bundle) throws RemoteException {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws RemoteException {
        byte[] byteArray;
        if (f10754f == null && layoutInflater != null) {
            setContext(layoutInflater.getContext().getApplicationContext());
        }
        try {
            IAMap map = getMap();
            this.f10756a = map;
            map.setVisibilityEx(this.b);
            if (this.f10757d == null && bundle != null && (byteArray = bundle.getByteArray("MAP_OPTIONS")) != null) {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.unmarshall(byteArray, 0, byteArray.length);
                parcelObtain.setDataPosition(0);
                this.f10757d = AMapOptions.CREATOR.createFromParcel(parcelObtain);
            }
            c(this.f10757d);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this.f10756a.getView();
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onDestroy() throws RemoteException {
        a();
        IAMap iAMap = this.f10756a;
        if (iAMap != null) {
            iAMap.clear();
            this.f10756a.destroy();
            this.f10756a = null;
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onDestroyView() throws RemoteException {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onInflate(Activity activity, AMapOptions aMapOptions, Bundle bundle) throws RemoteException {
        setContext(activity.getApplicationContext());
        this.f10757d = aMapOptions;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onLowMemory() throws RemoteException {
        Log.d("onLowMemory", "onLowMemory run");
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onPause() throws RemoteException {
        IAMap iAMap = this.f10756a;
        if (iAMap != null) {
            iAMap.onActivityPause();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onResume() throws RemoteException {
        IAMap iAMap = this.f10756a;
        if (iAMap != null) {
            iAMap.onActivityResume();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void onSaveInstanceState(Bundle bundle) throws RemoteException {
        if (this.f10756a != null) {
            if (this.f10757d == null) {
                this.f10757d = new AMapOptions();
            }
            try {
                Parcel parcelObtain = Parcel.obtain();
                AMapOptions aMapOptionsCamera = this.f10757d.camera(getMap().getCameraPosition());
                this.f10757d = aMapOptionsCamera;
                aMapOptionsCamera.writeToParcel(parcelObtain, 0);
                bundle.putByteArray("MAP_OPTIONS", parcelObtain.marshall());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void setContext(Context context) {
        b(context);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void setOptions(AMapOptions aMapOptions) {
        this.f10757d = aMapOptions;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate
    public void setVisibility(int i) {
        this.b = i;
        IAMap iAMap = this.f10756a;
        if (iAMap != null) {
            iAMap.setVisibilityEx(i);
        }
    }
}
