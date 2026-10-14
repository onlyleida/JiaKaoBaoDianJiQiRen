package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.d;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class v0 implements a0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ExecutorService f8665d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, b> f8666a;
    private final cn.mucang.android.jiakaoyi.framework.h.b<UnityRecordModel> b;
    private d c;

    public static abstract class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected boolean f8667a = false;

        @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
        public void a(boolean z) {
            this.f8667a = z;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
        public boolean isValid() {
            return this.f8667a;
        }
    }

    public interface b {
        void a(boolean z);

        OperateResultModel b(e eVar, String str);

        boolean isValid();
    }

    public v0() {
        HashMap map = new HashMap();
        this.f8666a = map;
        this.b = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.r
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f8651a.b((UnityRecordModel) obj);
            }
        };
        map.put("212", new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.a1.a());
        map.put("210", new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.a1.a());
        map.put("213", new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.e1.a());
        map.put("214", new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.z0.a());
        map.put("215", new cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.d1.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void e(e eVar) {
        OperateResultModel operateResultModelB;
        for (Map.Entry<String, b> entry : this.f8666a.entrySet()) {
            if (entry.getValue().isValid() && (operateResultModelB = entry.getValue().b(eVar, entry.getKey())) != null) {
                cn.mucang.android.jiakaoyi.unity.c.d.e(operateResultModelB);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(UnityRecordModel unityRecordModel) {
        int i = unityRecordModel.c;
        boolean z = i == 4000;
        boolean z2 = i == 4001;
        f.o("基础操作事件:" + unityRecordModel.toString());
        if (z) {
            for (Map.Entry<String, b> entry : this.f8666a.entrySet()) {
                if (entry.getValue().isValid() && !entry.getKey().equalsIgnoreCase(unityRecordModel.id)) {
                    entry.getValue().a(false);
                }
            }
        }
        b bVar = this.f8666a.get(unityRecordModel.id);
        if (bVar != null) {
            if (z) {
                bVar.a(true);
            } else if (z2) {
                bVar.a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(final e eVar) {
        if (eVar.getCurrentPosition().c() && eVar.d().h()) {
            f8665d.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8655a.e(eVar);
                }
            });
        }
    }

    private void i() {
        for (Map.Entry<String, b> entry : this.f8666a.entrySet()) {
            if (entry.getValue().isValid()) {
                entry.getValue().a(false);
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        this.c = new d();
        GlobalChecker.h(true);
        Tiger.j(this.b, UnityRecordModel.class);
        this.c.e(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.s
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f8653a.h((e) obj);
            }
        });
        CtrSpeedAssistMgr.f6128e.g();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        GlobalChecker.h(false);
        this.c.f();
        Tiger.l(this.b, UnityRecordModel.class);
        i();
        CtrSpeedAssistMgr.f6128e.o();
    }
}
