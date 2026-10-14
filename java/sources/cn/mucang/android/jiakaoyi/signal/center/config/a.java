package cn.mucang.android.jiakaoyi.signal.center.config;

import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.handle.gear.GearLinearResult;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile a f5260g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<CarSignal> f5261a;
    private final Map<SerialExtension, CarSignal> c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Gear, GearLinearResult> f5263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f5264f;
    private int b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SerialExtension[] f5262d = new SerialExtension[SerialExtension.extensions.length];

    private static class b {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.center.config.a$b$a, reason: collision with other inner class name */
        class C0121a extends TypeReference<Map<Integer, Integer>> {
            C0121a(b bVar) {
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.center.config.a$b$b, reason: collision with other inner class name */
        class C0122b extends TypeReference<Map<Integer, GearLinearResult>> {
            C0122b(b bVar) {
            }
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<SerialExtension, CarSignal> h() {
            HashMap map = new HashMap();
            String strF = j0.f("signal_config", "extend_config", "");
            if (n0.g(strF)) {
                f.o("扩展信号 = " + strF);
                try {
                    Map map2 = (Map) JSON.parseObject(strF, new C0121a(this), new Feature[0]);
                    if (map2 != null) {
                        for (Integer num : map2.keySet()) {
                            SerialExtension serialExtension = SerialExtension.parse(num.intValue());
                            CarSignal carSignal = CarSignal.parse(((Integer) map2.get(num)).intValue());
                            if (serialExtension != null && carSignal != null) {
                                map.put(serialExtension, carSignal);
                            }
                        }
                    }
                } catch (Throwable th) {
                    t.d("TAG", "获取扩展失败 : " + th);
                    f.o("扩展信息获取失败:" + th);
                }
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<Gear, GearLinearResult> i() {
            HashMap map = new HashMap();
            String strF = j0.f("signal_config", "gear_learn_config", "");
            if (n0.g(strF)) {
                f.o("传动比挡位学习:" + strF);
                try {
                    Map map2 = (Map) JSON.parseObject(strF, new C0122b(this), new Feature[0]);
                    if (map2 != null) {
                        for (Integer num : map2.keySet()) {
                            Gear gear = Gear.parse(num.intValue());
                            GearLinearResult gearLinearResult = (GearLinearResult) map2.get(num);
                            if (gear != null && gearLinearResult != null) {
                                map.put(gear, gearLinearResult);
                            }
                        }
                    }
                } catch (Throwable th) {
                    t.d("TAG", "获取挡位失败 : " + th);
                    f.o("挡位信息获取失败:" + th);
                }
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Set<CarSignal> j() {
            HashSet hashSet = new HashSet();
            String strF = j0.f("signal_config", "reverse_config", "");
            if (strF != null) {
                f.o("反转信号 = " + strF);
                List array = JSON.parseArray(strF, Integer.class);
                if (array != null) {
                    Iterator it = array.iterator();
                    while (it.hasNext()) {
                        CarSignal carSignal = CarSignal.parse(((Integer) it.next()).intValue());
                        if (carSignal != null) {
                            hashSet.add(carSignal);
                        }
                    }
                }
            }
            return hashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean k() {
            return n0.g(j0.f("signal_config", "reverse_config", ""));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(Map<SerialExtension, CarSignal> map) {
            HashMap map2 = new HashMap();
            if (map != null && !map.isEmpty()) {
                for (SerialExtension serialExtension : map.keySet()) {
                    map2.put(Integer.valueOf(serialExtension.id), Integer.valueOf(map.get(serialExtension).id));
                }
            }
            String jSONString = JSON.toJSONString(map2);
            f.o("saveExtendConfig = " + jSONString);
            j0.k("signal_config", "extend_config", jSONString);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(Map<Gear, GearLinearResult> map) {
            HashMap map2 = new HashMap();
            if (map != null && !map.isEmpty()) {
                for (Gear gear : map.keySet()) {
                    map2.put(Integer.valueOf(gear.gear), map.get(gear));
                }
            }
            String jSONString = JSON.toJSONString(map2);
            f.o("保存传动比挡位学习:" + jSONString);
            j0.k("signal_config", "gear_learn_config", jSONString);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(Set<CarSignal> set) {
            ArrayList arrayList = new ArrayList(set.size());
            if (!set.isEmpty()) {
                Iterator<CarSignal> it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(it.next().id));
                }
            }
            String jSONString = JSON.toJSONString(arrayList);
            f.o("saveReverseConfig = " + jSONString);
            j0.k("signal_config", "reverse_config", jSONString);
        }
    }

    private a() {
        b bVar = new b();
        this.f5264f = bVar;
        this.f5261a = bVar.j();
        this.c = this.f5264f.h();
        this.f5263e = this.f5264f.i();
        p();
        o();
    }

    public static a h() {
        if (f5260g == null) {
            synchronized (a.class) {
                if (f5260g == null) {
                    f5260g = new a();
                }
            }
        }
        return f5260g;
    }

    private void o() {
        Map<SerialExtension, CarSignal> map = this.c;
        if (map.isEmpty()) {
            return;
        }
        for (Map.Entry<SerialExtension, CarSignal> entry : map.entrySet()) {
            this.f5262d[entry.getValue().id] = entry.getKey();
        }
    }

    private void p() {
        Iterator<CarSignal> it = this.f5261a.iterator();
        while (it.hasNext()) {
            this.b = cn.mucang.android.jiakaoyi.signal.d.j.a.h(this.b, it.next().id);
        }
    }

    public synchronized void a(SerialExtension serialExtension, CarSignal carSignal) {
        if (carSignal == null) {
            return;
        }
        CarSignal carSignal2 = this.c.get(serialExtension);
        if (carSignal == carSignal2) {
            this.f5262d[carSignal2.id] = null;
            this.c.remove(serialExtension);
            this.f5264f.l(this.c);
            ActionLog.f3431a.m("取消映射" + carSignal.signalName + "信号扩展 " + serialExtension.extensionName);
            return;
        }
        if (this.c.containsValue(carSignal)) {
            u.h(carSignal.signalName + "信号已绑定扩展口，请重新选择");
            return;
        }
        String str = "";
        if (carSignal2 != null) {
            this.f5262d[carSignal2.id] = null;
            this.c.remove(serialExtension);
            str = "取消" + carSignal.signalName + "映射扩展 " + serialExtension.extensionName + "; 并";
        }
        this.c.put(serialExtension, carSignal);
        this.f5262d[carSignal.id] = serialExtension;
        this.f5264f.l(this.c);
        ActionLog.f3431a.m(str + "设置扩展 " + carSignal.signalName + "为" + serialExtension.extensionName);
    }

    public synchronized void b(Gear gear, GearLinearResult gearLinearResult) {
        this.f5263e.put(gear, gearLinearResult);
    }

    public synchronized void c(CarSignal carSignal) {
        if (this.f5261a.contains(carSignal)) {
            this.f5261a.remove(carSignal);
            this.b = cn.mucang.android.jiakaoyi.signal.d.j.a.g(this.b, carSignal.id);
        } else {
            this.f5261a.add(carSignal);
            this.b = cn.mucang.android.jiakaoyi.signal.d.j.a.h(this.b, carSignal.id);
        }
        this.f5264f.n(this.f5261a);
    }

    public synchronized void d() {
        this.c.clear();
        this.f5264f.l(this.c);
    }

    public CarSignal e(SerialExtension serialExtension) {
        return this.c.get(serialExtension);
    }

    public synchronized SerialExtension f(CarSignal carSignal) {
        return this.f5262d[carSignal.id];
    }

    public synchronized Map<Gear, GearLinearResult> g() {
        return this.f5263e;
    }

    public synchronized Set<CarSignal> i() {
        return this.f5261a;
    }

    public final boolean j(long j, CarSignal carSignal, boolean z) {
        SerialExtension serialExtension = this.f5262d[carSignal.id];
        if (serialExtension != null) {
            z = cn.mucang.android.jiakaoyi.signal.d.j.a.e(j, serialExtension.id);
        }
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.b, carSignal.id) != z;
    }

    public final boolean k() {
        return this.f5264f.k();
    }

    public final boolean l(CarSignal carSignal) {
        return this.f5262d[carSignal.id] != null;
    }

    public boolean m(CarSignal carSignal) {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.b, carSignal.id);
    }

    public synchronized void n() {
        this.f5264f.m(this.f5263e);
    }
}
