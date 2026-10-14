package cn.mucang.android.jiakaoyi.k3setting.teach;

import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachDataLoader;", "", "()V", "loadTeachData", "", "ruleExamSiteId", "", "finishCallback", "Lkotlin/Function0;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachDataLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3TeachDataLoader f4690a = new K3TeachDataLoader();

    private K3TeachDataLoader() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void d(K3TeachDataLoader k3TeachDataLoader, String str, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        k3TeachDataLoader.c(str, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(String ruleExamSiteId, final Function0 function0) {
        List<K3TeachEntity> listP;
        List<K3TeachEntity> listCreateDefault;
        kotlin.jvm.internal.r.e(ruleExamSiteId, "$ruleExamSiteId");
        try {
            listP = new K3TeachApi().p(ruleExamSiteId);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("拉取教学数据失败:", e2));
            listP = null;
        }
        if (com.blankj.utilcode.util.b.b(listP)) {
            K3TeachDataParser k3TeachDataParser = K3TeachDataParser.getInstance();
            kotlin.jvm.internal.r.c(listP);
            listCreateDefault = k3TeachDataParser.transformTeachData(listP);
        } else {
            listCreateDefault = K3TeachDataCreator.createDefault();
        }
        K3TeachDataCreator.saveTeachDataToLocal(ruleExamSiteId, listCreateDefault);
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.f
            @Override // java.lang.Runnable
            public final void run() {
                K3TeachDataLoader.f(function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Function0 function0) {
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    public final void c(final String ruleExamSiteId, final Function0<kotlin.v> function0) {
        kotlin.jvm.internal.r.e(ruleExamSiteId, "ruleExamSiteId");
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.g
            @Override // java.lang.Runnable
            public final void run() {
                K3TeachDataLoader.e(ruleExamSiteId, function0);
            }
        });
    }
}
