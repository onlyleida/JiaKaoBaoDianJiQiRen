package cn.mucang.jiakaoyi.uilib.ui.login.p008j;

import androidx.lifecycle.z;
import cn.mucang.android.account.AccountManager;
import cn.mucang.jiakaoyi.uilib.ui.login.account.model.UserModel;
import cn.mucang.jiakaoyi.uilib.ui.login.h;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.j.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\b\u0010\f\u001a\u00020\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\u000f\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\rH\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0007R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/login/account/AccountUtils;", "", "()V", "coachModelLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/jiakaoyi/uilib/ui/login/account/model/UserModel;", "getCoachModelLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setCoachModelLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "authToken", "", "checkCoachLogin", "", "getCoachModel", "isCoachLogin", "isLogin", "userId", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AccountUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AccountUtils f9870a = new AccountUtils();
    private static z<UserModel> b;

    static {
        z<UserModel> zVar = new z<>();
        b = zVar;
        zVar.l(h.a());
    }

    private AccountUtils() {
    }

    public static final boolean b() {
        return AccountManager.h().l();
    }

    public static final String c() {
        if (b()) {
            return AccountManager.h().g().getMucangId();
        }
        return null;
    }

    public final z<UserModel> a() {
        return b;
    }
}
