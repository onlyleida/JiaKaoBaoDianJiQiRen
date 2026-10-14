package f.a.a.a.p010s;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import f.a.a.a.storage.ShareMultiProcessStorage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: f.a.a.a.s.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000A\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0012\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u0012\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0012H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/core/ui/PrivacyAgreementSetting;", "", "()V", "defaultData", "Lcn/mucang/android/core/ui/AppDefaultDataProvider;", "listeners", "", "Lcn/mucang/android/core/ui/PrivacyAgreementSettingListener;", "storage", "cn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1", "Lcn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1;", "addPrivacyAgreementListener", "", "l", "debugInvokeStack", Constant.PROTOCOL_WEBVIEW_NAME, "", "isUserAcceptPrivacyAgreement", "", "removePrivacyAgreementListener", "runOnceAgree", "runnable", "Ljava/lang/Runnable;", "setAppDefaultDataProvider", TtmlNode.TAG_P, "setUserAcceptPrivacyAgreement", "accept", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrivacyAgreementSetting {
    private static AppDefaultDataProvider c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PrivacyAgreementSetting f14495a = new PrivacyAgreementSetting();
    private static final List<PrivacyAgreementSettingListener> b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f14496d = new b();

    /* JADX INFO: renamed from: f.a.a.a.s.e$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/core/ui/PrivacyAgreementSetting$runOnceAgree$1", "Lcn/mucang/android/core/ui/PrivacyAgreementSettingListener;", "onHandlePrivacyAgreementStatus", "", "accept", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements PrivacyAgreementSettingListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Runnable f14497a;

        a(Runnable runnable) {
            this.f14497a = runnable;
        }

        @Override // f.a.a.a.p010s.PrivacyAgreementSettingListener
        public void a(boolean z) {
            if (z) {
                PrivacyAgreementSetting.h(this);
                this.f14497a.run();
            }
        }
    }

    /* JADX INFO: renamed from: f.a.a.a.s.e$b */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/core/ui/PrivacyAgreementSetting$storage$1", "Lcn/mucang/android/core/storage/ShareMultiProcessStorage;", "get", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ShareMultiProcessStorage {
        b() {
            super("_agreement_", false, 2, null);
        }

        @Override // f.a.a.a.storage.ShareMultiProcessStorage, f.a.a.a.storage.Storage
        public String get() {
            String str = super.get();
            if (r.a(str, "true")) {
                i();
            }
            return str;
        }
    }

    private PrivacyAgreementSetting() {
    }

    public static final void a(final PrivacyAgreementSettingListener l) {
        r.e(l, "l");
        u.f(new Runnable() { // from class: f.a.a.a.s.b
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyAgreementSetting.b(l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(PrivacyAgreementSettingListener l) {
        r.e(l, "$l");
        List<PrivacyAgreementSettingListener> list = b;
        if (list.contains(l)) {
            return;
        }
        list.add(l);
    }

    public static final void c(String name) {
        r.e(name, "name");
        if (!MucangConfig.v() || d()) {
            return;
        }
        if (t.r(name)) {
            name = "invoke stack";
        }
        new RuntimeException(r.m("core invoke ", name)).printStackTrace();
    }

    public static final boolean d() {
        String string = f14496d.get();
        if (string == null) {
            AppDefaultDataProvider appDefaultDataProvider = c;
            if (appDefaultDataProvider == null) {
                if (MucangConfig.v()) {
                    cn.mucang.android.core.utils.t.m("core", "AppDefaultDataProvider not set");
                }
                return false;
            }
            string = appDefaultDataProvider == null ? null : Boolean.valueOf(appDefaultDataProvider.a()).toString();
            if (string != null) {
                f14496d.b(string);
            }
        }
        if (string == null) {
            return false;
        }
        return Boolean.parseBoolean(string);
    }

    public static final void h(final PrivacyAgreementSettingListener l) {
        r.e(l, "l");
        u.f(new Runnable() { // from class: f.a.a.a.s.a
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyAgreementSetting.i(l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(PrivacyAgreementSettingListener l) {
        r.e(l, "$l");
        b.remove(l);
    }

    public static final void j(Runnable runnable) {
        r.e(runnable, "runnable");
        if (d()) {
            runnable.run();
        } else {
            a(new a(runnable));
        }
    }

    public static final synchronized void k(final boolean z) {
        f14496d.b(String.valueOf(z));
        u.f(new Runnable() { // from class: f.a.a.a.s.c
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyAgreementSetting.l(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(boolean z) {
        Iterator it = new ArrayList(b).iterator();
        while (it.hasNext()) {
            ((PrivacyAgreementSettingListener) it.next()).a(z);
        }
    }
}
