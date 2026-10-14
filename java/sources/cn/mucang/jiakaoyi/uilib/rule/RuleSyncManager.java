package cn.mucang.jiakaoyi.uilib.rule;

import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0002J \u0010\u000b\u001a\u00020\n2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\bH\u0007J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleSyncManager;", "", "()V", "retrySyncMyData", "", "examSiteId", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "recordActionLog", "", "syncBatch", "list", "", "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;", "syncMyData", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleSyncManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RuleSyncManager f9550a = new RuleSyncManager();

    private RuleSyncManager() {
    }

    private final void b(long j, KeMu keMu, boolean z) {
        try {
            SystemClock.sleep(500L);
            cn.mucang.jiakaoyi.uilib.m.b.u(Long.valueOf(j), z, keMu);
        } catch (Throwable th) {
            th.printStackTrace();
            cn.mucang.android.core.utils.u.h("同步我的规则失败");
        }
    }

    static /* synthetic */ void c(RuleSyncManager ruleSyncManager, long j, KeMu keMu, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        ruleSyncManager.b(j, keMu, z);
    }

    public static /* synthetic */ void f(RuleSyncManager ruleSyncManager, long j, KeMu keMu, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        ruleSyncManager.e(j, keMu, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(long j, KeMu keMu, boolean z) {
        kotlin.jvm.internal.r.e(keMu, "$keMu");
        try {
            cn.mucang.android.jiakaoyi.framework.log.f.o("开始拉个人规则：" + j + ", 科目：" + ((Object) keMu.name));
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("规则拉取是否成功：", Boolean.valueOf(cn.mucang.jiakaoyi.uilib.m.b.u(Long.valueOf(j), z, keMu))));
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("RuleSyncManager : 同步我的规则异常:" + ((Object) e2.getLocalizedMessage()) + ' ' + Log.getStackTraceString(e2));
            if (z) {
                ActionLog.f3431a.m("记录一次重置拉取服务器规则操作失败");
            }
            cn.mucang.android.core.utils.u.h("同步我的规则失败");
            c(f9550a, j, keMu, false, 4, null);
        }
    }

    public final boolean d(List<? extends RuleConfigEntity> list, KeMu keMu) {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        if (cn.mucang.android.core.utils.g.b(list)) {
            return true;
        }
        if (!AppUtils.k() && !AccountUtils.b() && !SchoolDeviceUtil.f3622a.a()) {
            return true;
        }
        try {
            new cn.mucang.jiakaoyi.uilib.api.n(keMu).p(list);
            return true;
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("syncBatch rule ： ", e2.getLocalizedMessage()));
            return false;
        }
    }

    public final void e(final long j, final KeMu keMu, final boolean z) {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.rule.v
            @Override // java.lang.Runnable
            public final void run() {
                RuleSyncManager.g(j, keMu, z);
            }
        });
    }
}
