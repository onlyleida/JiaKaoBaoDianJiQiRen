package cn.mucang.android.jiakaoyi.signal.upgrade.model;

import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.upgrade.model.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", SocialConstants.PARAM_APP_DESC, "", "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getInfo", "()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "setInfo", "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V", "getState", "()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "setState", "(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;)V", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UpgradeStateModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UpgradeInfoModel f5826a;
    private UpgradeState b;
    private String c;

    public UpgradeStateModel(UpgradeInfoModel upgradeInfoModel, UpgradeState state, String desc) {
        r.e(state, "state");
        r.e(desc, "desc");
        this.f5826a = upgradeInfoModel;
        this.b = state;
        this.c = desc;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final UpgradeInfoModel getF5826a() {
        return this.f5826a;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final UpgradeState getB() {
        return this.b;
    }
}
