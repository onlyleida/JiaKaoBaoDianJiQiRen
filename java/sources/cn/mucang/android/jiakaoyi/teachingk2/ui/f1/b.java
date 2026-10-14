package cn.mucang.android.jiakaoyi.teachingk2.ui.f1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.utils.h;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.signal.c.f.a, a.InterfaceC0140a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f8211a;
    private List<c> b;
    private final MapView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Integer, Bitmap> f8212d;

    public b(MapView mapView) {
        this.c = mapView;
        mapView.setHasGesture(false);
        this.b = b();
        this.f8212d = new HashMap();
        a aVar = new a(mapView, this.b, AlivcLivePushConstants.RESOLUTION_1920, 941, this);
        this.f8211a = aVar;
        mapView.u.g(aVar);
        mapView.u((MucangConfig.getContext().getResources().getDisplayMetrics().widthPixels * 1.0f) / 1920.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        mapView.r();
    }

    private List<c> b() {
        ArrayList arrayList = new ArrayList();
        AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null);
        if (absTeachBaseProvider != null) {
            arrayList.addAll(absTeachBaseProvider.getSignalItem());
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.f1.a.InterfaceC0140a
    public Bitmap a(int i) {
        Bitmap bitmap = this.f8212d.get(Integer.valueOf(i));
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(MucangConfig.getContext().getResources(), i);
        this.f8212d.put(Integer.valueOf(i), bitmapDecodeResource);
        return bitmapDecodeResource;
    }

    public void c() {
        d.m.b(this);
    }

    public void d() {
        d.m.n(this);
        this.f8212d.clear();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e eVar) {
        CarModel carModelD = eVar.d();
        boolean z = false;
        for (c cVar : this.b) {
            int i = cVar.f8214d;
            int i2 = 3;
            switch (cVar.f8215e) {
                case 0:
                    int i3 = !h.a(eVar.d().x) ? 1 : 0;
                    if (i != i3) {
                        cVar.f8214d = i3;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__light_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__light_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 1:
                    int i4 = !carModelD.j ? 1 : 0;
                    if (i != i4) {
                        cVar.f8214d = i4;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__door_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__door_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 2:
                    boolean z2 = carModelD.f5267e;
                    if (i != z2) {
                        cVar.f8214d = z2 ? 1 : 0;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__clutch_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__clutch_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 3:
                    boolean z3 = carModelD.f5269g;
                    if (i != z3) {
                        cVar.f8214d = z3 ? 1 : 0;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__brake_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__brake_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 4:
                    int i5 = carModelD.i > 0 ? 1 : 0;
                    if (i != i5) {
                        cVar.f8214d = i5;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__oil_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__oil_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 5:
                default:
                    continue;
                    cVar.a();
                    break;
                case 6:
                    AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
                    if (carModelD.i() || !(absSignalProvider == null || absSignalProvider.useNonOldProtocol())) {
                        cVar.f8213a = R.drawable.scheck__wheel_n;
                        i2 = 0;
                    } else if (carModelD.r > 10) {
                        cVar.f8213a = R.drawable.scheck__wheel_left;
                    } else {
                        cVar.f8213a = R.drawable.scheck__wheel_right;
                        i2 = 2;
                    }
                    cVar.f8214d = i2;
                    int i6 = cVar.c;
                    int i7 = carModelD.r;
                    if (i6 != i7) {
                        cVar.c = i7;
                        break;
                    }
                    cVar.a();
                    break;
                case 7:
                    if (carModelD.i()) {
                        cVar.f8213a = R.drawable.scheck__wheel_txt_n;
                        i2 = 0;
                    } else if (carModelD.r > 10) {
                        cVar.f8213a = R.drawable.scheck__wheel_txt_right;
                    } else {
                        cVar.f8213a = R.drawable.scheck__wheel_txt_left;
                        i2 = 2;
                    }
                    if (i != i2) {
                        cVar.f8214d = i2;
                        break;
                    }
                    cVar.a();
                    break;
                case 8:
                    int i8 = !carModelD.f() ? 1 : 0;
                    if (i != i8) {
                        cVar.f8214d = i8;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__flame_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__flame_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 9:
                    Gear gear = carModelD.m;
                    int i9 = (gear == Gear.GearN || gear == Gear.GearP) ? 0 : 1;
                    if (i != i9) {
                        cVar.f8214d = i9;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__gear_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__gear_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
                case 10:
                    boolean z4 = carModelD.f5268f;
                    if (i != z4) {
                        cVar.f8214d = z4 ? 1 : 0;
                        if (cVar.a()) {
                            cVar.f8213a = R.drawable.scheck__handbrake_n;
                        } else {
                            cVar.f8213a = R.drawable.scheck__handbrake_e;
                        }
                        break;
                    }
                    cVar.a();
                    break;
            }
            z = true;
            cVar.a();
        }
        if (z) {
            this.c.r();
        }
    }
}
