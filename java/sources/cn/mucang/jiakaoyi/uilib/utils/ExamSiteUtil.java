package cn.mucang.jiakaoyi.uilib.utils;

import androidx.appcompat.app.d;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.p0;
import cn.mucang.android.jiakaoyi.framework.utils.w;
import cn.mucang.jiakaoyi.uilib.mapupdate.h;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.socket.s;
import cn.mucang.jiakaoyi.uilib.socket.t;
import com.alibaba.fastjson.JSON;
import com.tencent.tauth.AuthActivity;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ6\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u0013H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u001a\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0007H\u0007J\u0018\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0007H\u0007J\u0018\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\u0007H\u0007J\u001a\u0010#\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007J\u0016\u0010$\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0007J\u0010\u0010%\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J\"\u0010&\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00072\b\u0010'\u001a\u0004\u0018\u00010\u001cH\u0007J\"\u0010(\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00072\b\u0010)\u001a\u0004\u0018\u00010\u001cH\u0007J\u0016\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0005\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0006j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/ExamSiteUtil;", "", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "ruleExamSiteMap", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "Lkotlin/collections/HashMap;", "clear", "", "clearMemory", "doLoadMap", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "model", "onMainThread", "", AuthActivity.ACTION_KEY, "Lkotlin/Function1;", "getExamSite", "getExamSiteId", "", "default", "getGpsBaseId", "getK3RuleExamSite", "getK3RuleExamSiteId", "getMapCode", "", "examSiteId", "keMu", "getMapCodeKey", "getMapMd5", "getMd5Key", "getRuleExamSite", "getRuleExamSiteId", "resetRuleExamSite", "saveExamSite", "saveMapCode", "mapCode", "saveMapMd5", "mapMd5", "saveRuleExamSite", "ruleExamSite", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamSiteUtil {
    private static ExamSiteModel b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExamSiteUtil f9582a = new ExamSiteUtil();
    private static final HashMap<KeMu, ExamSiteModel> c = new HashMap<>();

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.j$a */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H\u0016J\u001a\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/jiakaoyi/uilib/utils/ExamSiteUtil$doLoadMap$1$1", "Lcn/mucang/jiakaoyi/uilib/mapupdate/UpdateMapHelper$GetMapDataCallback;", "progress", "", "", "success", "isServerUpdate", "", "file", "Ljava/io/File;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements h.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ExamSiteModel f9583a;
        final /* synthetic */ boolean b;
        final /* synthetic */ Function1<ExamSiteModel, v> c;

        /* JADX WARN: Multi-variable type inference failed */
        a(ExamSiteModel examSiteModel, boolean z, Function1<? super ExamSiteModel, v> function1) {
            this.f9583a = examSiteModel;
            this.b = z;
            this.c = function1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(Function1 action, ExamSiteModel model) {
            r.e(action, "$action");
            r.e(model, "$model");
            action.invoke(model);
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void a(float f2) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.q.h.b
        public void b(boolean z, File file) {
            try {
                String strL = h.l(this.f9583a.examSiteId);
                final ExamSiteModel examSiteModel = this.f9583a;
                examSiteModel.mapData = strL;
                if (this.b) {
                    final Function1<ExamSiteModel, v> function1 = this.c;
                    u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.s.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            ExamSiteUtil.a.d(function1, examSiteModel);
                        }
                    });
                } else {
                    this.c.invoke(examSiteModel);
                }
            } catch (Throwable unused) {
                u.h("地图加载失败");
            }
        }
    }

    private ExamSiteUtil() {
    }

    public static final void b(final d activity, final ExamSiteModel model, final boolean z, final Function1<? super ExamSiteModel, v> action) {
        r.e(activity, "activity");
        r.e(model, "model");
        r.e(action, "action");
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.s.d
            @Override // java.lang.Runnable
            public final void run() {
                ExamSiteUtil.c(activity, model, z, action);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(d activity, ExamSiteModel model, boolean z, Function1 action) {
        r.e(activity, "$activity");
        r.e(model, "$model");
        r.e(action, "$action");
        new h().c(activity, model, new a(model, z, action));
    }

    public static final synchronized ExamSiteModel d() {
        ExamSiteModel examSiteModel = b;
        if (examSiteModel != null) {
            return examSiteModel;
        }
        ExamSiteModel examSiteModel2 = (ExamSiteModel) JSON.parseObject(i0.g(w.d(), ""), ExamSiteModel.class);
        b = examSiteModel2;
        return examSiteModel2;
    }

    public static final long e(long j) {
        ExamSiteModel examSiteModelD = d();
        return examSiteModelD == null ? j : examSiteModelD.examSiteId;
    }

    public static final long f(long j) {
        ExamSiteModel examSiteModelD = d();
        return examSiteModelD == null ? j : examSiteModelD.gpsBaseId;
    }

    public static final synchronized ExamSiteModel g() {
        HashMap<KeMu, ExamSiteModel> map = c;
        KeMu keMu = KeMu.K3;
        ExamSiteModel examSiteModel = map.get(keMu);
        if (examSiteModel != null) {
            return examSiteModel;
        }
        ExamSiteModel examSiteModelM = m(keMu);
        if (examSiteModelM == null) {
            examSiteModelM = b;
        }
        return examSiteModelM;
    }

    public static final long h(long j) {
        ExamSiteModel examSiteModelG = g();
        return examSiteModelG == null ? j : examSiteModelG.examSiteId;
    }

    public static final String i(long j, KeMu keMu) {
        r.e(keMu, "keMu");
        String strG = i0.g(f9582a.j(j, keMu), "");
        r.d(strG, "getString(mapCode, \"\")");
        return strG;
    }

    private final String j(long j, KeMu keMu) {
        return "mapCode_" + ((Object) keMu.serverKeMu) + '_' + j;
    }

    public static final String k(KeMu keMu) {
        String str;
        r.e(keMu, "keMu");
        ExamSiteUtil examSiteUtil = f9582a;
        ExamSiteModel examSiteModelD = d();
        if (examSiteModelD == null) {
            return "";
        }
        String strL = examSiteUtil.l(examSiteModelD.examSiteId, keMu);
        if (!i0.a(strL)) {
            ExamSiteModel examSiteModelD2 = d();
            return (examSiteModelD2 == null || (str = examSiteModelD2.mapDataMd5) == null) ? "" : str;
        }
        String strG = i0.g(strL, "");
        r.d(strG, "{\n            PreUtils.g…ing(md5Key, \"\")\n        }");
        return strG;
    }

    private final String l(long j, KeMu keMu) {
        return "mapMd5_" + ((Object) keMu.serverKeMu) + '_' + j;
    }

    public static final synchronized ExamSiteModel m(KeMu keMu) {
        ExamSiteModel examSiteModelD;
        r.e(keMu, "keMu");
        HashMap<KeMu, ExamSiteModel> map = c;
        ExamSiteModel examSiteModel = map.get(keMu);
        if (examSiteModel != null) {
            return examSiteModel;
        }
        if (keMu == KeMu.K3) {
            examSiteModelD = d();
            String strG = i0.g(w.c(examSiteModelD == null ? 0L : examSiteModelD.examSiteId), "");
            f.o(r.m("缓存的json：", strG));
            if (AppUtils.k()) {
                examSiteModelD = (ExamSiteModel) JSON.parseObject(strG, ExamSiteModel.class);
            } else {
                ExamSiteModel examSiteModel2 = (ExamSiteModel) JSON.parseObject(strG, ExamSiteModel.class);
                if (examSiteModel2 != null) {
                    examSiteModelD = examSiteModel2;
                }
            }
        } else {
            String strG2 = i0.g(w.b(), "");
            f.o(r.m("缓存的json：", strG2));
            examSiteModelD = (ExamSiteModel) JSON.parseObject(strG2, ExamSiteModel.class);
        }
        map.put(keMu, examSiteModelD);
        f.o(r.m("ruleExamSite：", examSiteModelD));
        return examSiteModelD;
    }

    public static final long n(KeMu keMu, long j) {
        r.e(keMu, "keMu");
        ExamSiteModel examSiteModelM = m(keMu);
        return examSiteModelM == null ? j : examSiteModelM.examSiteId;
    }

    public static /* synthetic */ long o(KeMu keMu, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return n(keMu, j);
    }

    public static final synchronized void r(final ExamSiteModel examSite) {
        r.e(examSite, "examSite");
        LiveBus.c(examSite);
        i0.m(w.d(), JSON.toJSONString(examSite));
        b = examSite;
        p0.c(String.valueOf(examSite.examSiteId));
        n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.s.e
            @Override // java.lang.Runnable
            public final void run() {
                ExamSiteUtil.s(examSite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ExamSiteModel examSite) {
        r.e(examSite, "$examSite");
        HPGpsManager.k(examSite.examSiteId, (int) examSite.gpsBaseId);
    }

    public static final void t(long j, KeMu keMu, String str) {
        r.e(keMu, "keMu");
        i0.m(f9582a.j(j, keMu), str);
    }

    public static final void u(long j, KeMu keMu, String str) {
        r.e(keMu, "keMu");
        i0.m(f9582a.l(j, keMu), str);
    }

    public final void a() {
        p0.a();
        i0.h(w.d());
        b = null;
    }

    public final void v(ExamSiteModel ruleExamSite, KeMu keMu) {
        r.e(ruleExamSite, "ruleExamSite");
        r.e(keMu, "keMu");
        if (keMu == KeMu.K3) {
            ExamSiteModel examSiteModelD = d();
            i0.m(w.c(examSiteModelD == null ? 0L : examSiteModelD.examSiteId), JSON.toJSONString(ruleExamSite));
        } else {
            i0.m(w.b(), JSON.toJSONString(ruleExamSite));
        }
        p0.c(String.valueOf(ruleExamSite.examSiteId));
        c.put(keMu, ruleExamSite);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(9);
        String str = keMu.serverKeMu;
        r.d(str, "keMu.serverKeMu");
        byteBufferAllocate.put((byte) Integer.parseInt(str));
        byteBufferAllocate.putLong(ruleExamSite.examSiteId);
        t.a().K(s.c(byteBufferAllocate.array(), (byte) -125));
    }
}
