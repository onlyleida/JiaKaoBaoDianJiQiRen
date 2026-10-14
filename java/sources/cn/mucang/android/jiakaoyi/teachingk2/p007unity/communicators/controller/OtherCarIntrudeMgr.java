package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import android.text.TextUtils;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OtherCarPoseListModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.jiakaoyi.uilib.socket.model.OtherCarPosListSocketModel;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.c0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0012\u0010\u001f\u001a\u00020\u00142\b\u0010 \u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010!\u001a\u00020\u00142\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001aH\u0002J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020$H\u0002J(\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0002J\u0006\u0010-\u001a\u00020\u001eJ\u0018\u0010.\u001a\u00020\u001e2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u001aH\u0002J\u0006\u0010/\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/OtherCarIntrudeMgr;", "", "()V", "RISK", "", "RISK_THRESHOLD", "SAFE", "TAG", "", "TIME_OUT", "", "TTS_TIP", "kotlin.jvm.PlatformType", "riskCars", "Ljava/util/HashSet;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;", "Lkotlin/collections/HashSet;", "timeoutTask", "Ljava/lang/Runnable;", "checkInRiskArea", "", "otherCarPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "yaw", "", "checkRiskAreaCars", "", "data", "Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;", "clearOtherCar", "", "deleteCacheRiskCar", "safeCarDeviceNum", "deleteUnExistRiskCar", "riskAreaCars", "getMyRectExt", "Lcn/mucang/android/jiakaoyi/signal/pos/Rectangle;", "direction", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;", "carRect", "getOtherRect", TtmlNode.CENTER, "carWith", "", "carLen", "init", "playTtsTip", "sendIntrudeSwitchState", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OtherCarIntrudeMgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OtherCarIntrudeMgr f8473a = new OtherCarIntrudeMgr();
    private static final String b = k0.a(R.string.teachbase_watch_out_cars_around);
    private static final HashSet<OtherCarPoseListModel.CarPosModel> c = new HashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Runnable f8474d = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.p
        @Override // java.lang.Runnable
        public final void run() {
            OtherCarIntrudeMgr.n();
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.c0$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8475a;

        static {
            int[] iArr = new int[CarModel.Direction.values().length];
            iArr[CarModel.Direction.None.ordinal()] = 1;
            iArr[CarModel.Direction.Stop.ordinal()] = 2;
            iArr[CarModel.Direction.Forward.ordinal()] = 3;
            iArr[CarModel.Direction.Back.ordinal()] = 4;
            f8475a = iArr;
        }
    }

    private OtherCarIntrudeMgr() {
    }

    private final boolean a(Pos pos, float f2) {
        try {
            e eVarT = d.t();
            CarPos carPosC = eVarT.c();
            CarModel.Direction direction = eVarT.d().F;
            if (carPosC.center.distanceSquare(pos) >= 490000.0d) {
                return false;
            }
            c myRect = carPosC.carRect;
            double dDistanceTo = myRect.c.distanceTo(myRect.b);
            double dDistanceTo2 = myRect.f5820a.distanceTo(myRect.b);
            r.d(direction, "direction");
            r.d(myRect, "myRect");
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.g(f(direction, myRect), g(pos, f2, dDistanceTo, dDistanceTo2));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private final List<OtherCarPoseListModel.CarPosModel> b(OtherCarPosListSocketModel otherCarPosListSocketModel) {
        ArrayList arrayList = new ArrayList();
        List<OtherCarPosListSocketModel.CarPosModel> list = otherCarPosListSocketModel.itemList;
        r.d(list, "data.itemList");
        for (OtherCarPosListSocketModel.CarPosModel carPosModel : list) {
            if (carPosModel.f9679g >= 4 && !carPosModel.n.equals(DeviceUtils.c())) {
                OtherCarPoseListModel.CarPosModel carPosModel2 = new OtherCarPoseListModel.CarPosModel();
                Pos pos = new Pos(carPosModel.x, carPosModel.y, carPosModel.z);
                carPosModel2.pos = pos;
                carPosModel2.deviceNum = carPosModel.n;
                carPosModel2.carNum = carPosModel.p;
                float f2 = carPosModel.f9678a / 100.0f;
                carPosModel2.yaw = f2;
                carPosModel2.state = f8473a.a(pos, f2) ? 1 : 0;
                arrayList.add(carPosModel2);
            }
        }
        return arrayList;
    }

    private final boolean d(String str) {
        HashSet<OtherCarPoseListModel.CarPosModel> hashSet = c;
        if ((!hashSet.isEmpty()) && !TextUtils.isEmpty(str)) {
            Iterator<OtherCarPoseListModel.CarPosModel> it = hashSet.iterator();
            r.d(it, "riskCars.iterator()");
            while (it.hasNext()) {
                OtherCarPoseListModel.CarPosModel next = it.next();
                r.d(next, "iterator.next()");
                if (t.q(str, next.deviceNum, false, 2, null)) {
                    it.remove();
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean e(List<? extends OtherCarPoseListModel.CarPosModel> list) {
        HashSet<OtherCarPoseListModel.CarPosModel> hashSet = c;
        if (!(!hashSet.isEmpty())) {
            return false;
        }
        Iterator<OtherCarPoseListModel.CarPosModel> it = hashSet.iterator();
        r.d(it, "riskCars.iterator()");
        while (it.hasNext()) {
            OtherCarPoseListModel.CarPosModel next = it.next();
            r.d(next, "iterator.next()");
            if (!list.contains(next)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    private final c f(CarModel.Direction direction, c cVar) {
        int i = a.f8475a[direction.ordinal()];
        double d2 = 200.0d;
        double d3 = 400.0d;
        if (i == 1 || i == 2) {
            d3 = 200.0d;
        } else if (i == 3 || i != 4) {
            d2 = 100.0d;
        } else {
            d2 = 400.0d;
            d3 = 100.0d;
        }
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5821d, cVar.f5820a, 100.0d);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.c, cVar.b, 100.0d);
        Pos posS3 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.b, cVar.c, 100.0d);
        Pos posS4 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5820a, cVar.f5821d, 100.0d);
        return new c(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS2, posS, d2), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, posS2, d3), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS4, posS3, d3), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS3, posS4, d2));
    }

    private final c g(Pos pos, float f2, double d2, double d3) {
        double d4 = 2;
        double d5 = d3 / d4;
        double d6 = d2 / d4;
        Pos pos2 = new Pos(pos.x - d5, pos.y - d6);
        Pos pos3 = new Pos(pos.x + d5, pos.y - d6);
        Pos pos4 = new Pos(pos.x + d5, pos.y + d6);
        Pos pos5 = new Pos(pos.x - d5, pos.y + d6);
        double d7 = f2;
        double dCos = Math.cos(Math.toRadians(d7));
        double dSin = Math.sin(Math.toRadians(d7));
        return new c(pos2.rotate(pos, dCos, dSin), pos3.rotate(pos, dCos, dSin), pos4.rotate(pos, dCos, dSin), pos5.rotate(pos, dCos, dSin));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(OtherCarPosListSocketModel it) {
        try {
            if (LocalConfigManager.f(LocalConfig.OtherCarIntrudeTip)) {
                Runnable runnable = f8474d;
                u.e(runnable);
                u.d(runnable, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                List<OtherCarPosListSocketModel.CarPosModel> list = it.itemList;
                if (list == null || list.isEmpty()) {
                    f8473a.c();
                    return;
                }
                if (d.t().getCurrentPosition().f5282h < 4) {
                    f8473a.c();
                    return;
                }
                OtherCarIntrudeMgr otherCarIntrudeMgr = f8473a;
                r.d(it, "it");
                List<OtherCarPoseListModel.CarPosModel> listB = otherCarIntrudeMgr.b(it);
                otherCarIntrudeMgr.l(listB);
                if (a0.i()) {
                    OtherCarPoseListModel otherCarPoseListModel = new OtherCarPoseListModel();
                    otherCarPoseListModel.itemList = listB;
                    cn.mucang.android.jiakaoyi.unity.c.d.f(otherCarPoseListModel, false);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o(r.m("OtherCarIntrudeMgr, ", q0.d(e2)));
        }
    }

    private final void l(List<? extends OtherCarPoseListModel.CarPosModel> list) {
        boolean z = false;
        if (list == null || list.isEmpty()) {
            c.clear();
            return;
        }
        for (OtherCarPoseListModel.CarPosModel carPosModel : list) {
            if (carPosModel.state == 1) {
                HashSet<OtherCarPoseListModel.CarPosModel> hashSet = c;
                if (!hashSet.contains(carPosModel)) {
                    hashSet.add(carPosModel);
                    f.o("OtherCarIntrudeMgr: newRiskCar: " + ((Object) JSON.toJSONString(carPosModel)) + ", myCar: " + ((Object) JSON.toJSONString(d.t().c().center)));
                    z = true;
                }
            } else {
                d(carPosModel.deviceNum);
            }
        }
        e(list);
        if (z) {
            String str = b;
            if (r.a(str, TtsManager.g(2))) {
                return;
            }
            RobotTips.Y(str, null, null, TtsGrade.ActiveRemember.getGrade(), null, 22, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n() {
        f.o("OtherCarIntrudeMgr, server msg timeout, sendEmptyData");
        f8473a.c();
    }

    public final void c() {
        c.clear();
        OtherCarPoseListModel otherCarPoseListModel = new OtherCarPoseListModel();
        otherCarPoseListModel.itemList = kotlin.collections.u.j();
        cn.mucang.android.jiakaoyi.unity.c.d.e(otherCarPoseListModel);
    }

    public final void h() {
        LiveBus.d(OtherCarPosListSocketModel.class).i(new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                OtherCarIntrudeMgr.i((OtherCarPosListSocketModel) obj);
            }
        });
    }

    public final void m() {
        if (LocalConfigManager.f(LocalConfig.OtherCarIntrudeTip)) {
            return;
        }
        c();
    }
}
