package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<Byte, List<BrakeModel>> f7899a = new HashMap<>();

    static class a extends TypeReference<Map<Byte, List<BrakeModel>>> {
        a() {
        }
    }

    static class b extends TypeReference<Map<Byte, List<String>>> {
        b() {
        }
    }

    public static synchronized boolean a(BrakeReason brakeReason) {
        Iterator<Map.Entry<Byte, List<BrakeModel>>> it = f7899a.entrySet().iterator();
        while (it.hasNext()) {
            List<BrakeModel> value = it.next().getValue();
            if (!cn.mucang.android.core.utils.g.b(value)) {
                Iterator<BrakeModel> it2 = value.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getReason() == brakeReason) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static synchronized void b() {
        try {
            f7899a.clear();
            CarBrakeState carBrakeState = CarBrakeState.STATE_NONE;
            if ((cn.mucang.android.jiakaoyi.signal.c.d.t().d().G != null ? cn.mucang.android.jiakaoyi.signal.c.d.t().d().G.safeBoardBrakeState : carBrakeState) == carBrakeState) {
                i0.m("key.newBrakeCache", "");
                i0.m("key.brakeCache", "");
                cn.mucang.android.jiakaoyi.framework.log.f.d("刹车缓存初始化，不是刹车状态，直接返回");
                return;
            }
            String strG = i0.g("key.newBrakeCache", "");
            cn.mucang.android.jiakaoyi.framework.log.f.d("刹车缓存初始化:" + strG);
            Map<? extends Byte, ? extends List<BrakeModel>> map = null;
            if (n0.g(strG)) {
                map = (Map) JSON.parseObject(strG, new a(), new Feature[0]);
            } else {
                String strG2 = i0.g("key.brakeCache", "");
                cn.mucang.android.jiakaoyi.framework.log.f.d("刹车缓存初始化，新数据为空，旧数据：" + strG2);
                if (n0.g(strG2)) {
                    i0.m("key.brakeCache", "");
                    Map map2 = (Map) JSON.parseObject(strG2, new b(), new Feature[0]);
                    if (cn.mucang.android.core.utils.g.e(map2)) {
                        HashMap map3 = new HashMap();
                        for (Map.Entry entry : map2.entrySet()) {
                            ArrayList arrayList = new ArrayList();
                            Iterator it = ((List) entry.getValue()).iterator();
                            while (it.hasNext()) {
                                BrakeModel.createBrakeModel(BrakeReason.valueOf((String) it.next()), null, true);
                            }
                            map3.put(entry.getKey(), arrayList);
                        }
                        i0.m("key.newBrakeCache", JSON.toJSONString(map3));
                        map = map3;
                    }
                }
            }
            if (cn.mucang.android.core.utils.g.e(map)) {
                HashMap<Byte, List<BrakeModel>> map4 = f7899a;
                map4.putAll(map);
                List<BrakeModel> list = map4.get((byte) 2);
                if (cn.mucang.android.core.utils.g.d(list)) {
                    BrakeModel brakeModel = list.get(list.size() - 1);
                    brakeModel.setTeachBrake();
                    BrakeGlobalMonitor.r(brakeModel);
                } else {
                    List<BrakeModel> list2 = map4.get((byte) 1);
                    if (cn.mucang.android.core.utils.g.d(list2)) {
                        BrakeModel brakeModel2 = list2.get(list2.size() - 1);
                        brakeModel2.setTeachBrake();
                        BrakeGlobalMonitor.r(brakeModel2);
                    }
                }
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.d("刹车缓存初始化失败:" + q0.d(th));
        }
    }

    public static synchronized void c(byte b2) {
        HashMap<Byte, List<BrakeModel>> map = f7899a;
        map.remove(Byte.valueOf(b2));
        i0.m("key.newBrakeCache", JSON.toJSONString(map));
    }

    public static synchronized void d(BrakeModel brakeModel, byte b2) {
        HashMap<Byte, List<BrakeModel>> map = f7899a;
        List<BrakeModel> arrayList = map.get(Byte.valueOf(b2));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(Byte.valueOf(b2), arrayList);
        }
        arrayList.add(brakeModel);
        i0.m("key.newBrakeCache", JSON.toJSONString(map));
    }
}
