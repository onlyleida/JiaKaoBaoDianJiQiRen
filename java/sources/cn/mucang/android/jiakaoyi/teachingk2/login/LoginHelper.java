package cn.mucang.android.jiakaoyi.teachingk2.login;

import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.jiakaoyi.uilib.login.model.ConfigLoginType;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.s;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0012H\u0007J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;", "", "()V", "<set-?>", "", "agreeNonPerceiveRegister", "getAgreeNonPerceiveRegister", "()Z", "agreeRecord", "Landroidx/lifecycle/MutableLiveData;", "getAgreeRecord", "()Landroidx/lifecycle/MutableLiveData;", "loginType", "", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "getLoginTypeConfig", "", "initLoginPage", "", "setAgreeNonPerceiveRegister", "value", "setAgreeRecord", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginHelper {
    private static boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LoginHelper f7296a = new LoginHelper();
    private static final List<LoginType> b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final z<Boolean> f7297d = new z<>();

    private LoginHelper() {
    }

    public static final void d() {
        kotlinx.coroutines.g.b(j0.b(), null, null, new LoginHelper$getLoginTypeConfig$1(null), 3, null);
    }

    public static final List<LoginType> e() {
        String strG;
        Throwable th;
        Object objM139constructorimpl;
        v vVar;
        if (b.isEmpty()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                strG = i0.g("keyLoginType", "");
                r.d(strG, "getString(PreKeys.KEY_LOGIN_TYPE, \"\")");
                try {
                    List<ConfigLoginType> array = JSON.parseArray(strG, ConfigLoginType.class);
                    if (array == null) {
                        vVar = null;
                    } else {
                        for (ConfigLoginType configLoginType : array) {
                            if (configLoginType.getEnabled() && configLoginType.getLoginMethod() != null) {
                                List<LoginType> list = b;
                                LoginType loginMethod = configLoginType.getLoginMethod();
                                r.c(loginMethod);
                                list.add(loginMethod);
                            }
                        }
                        vVar = v.f15822a;
                    }
                    objM139constructorimpl = Result.m139constructorimpl(vVar);
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                }
            } catch (Throwable th3) {
                strG = "empty";
                th = th3;
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("服务器配置方式可用列表为空，取本地的也失败了：" + strG + " message:" + ((Object) thM142exceptionOrNullimpl.getMessage()));
            }
        }
        List<LoginType> list2 = b;
        if (list2.isEmpty() || (list2.size() == 1 && s.c0(list2) == LoginType.COACH_QR_CODE)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("登录方式最后还为空，添加默认登录方式");
            list2.add(LoginType.QR_CODE);
            list2.add(LoginType.ID_CARD);
        }
        if (LocalConfigManager.f(LocalConfig.TimingLogin)) {
            LoginType loginType = LoginType.TAIZHOU;
            if (!list2.contains(loginType)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("登录方式配置了三方计时，添加进来");
                list2.add(0, loginType);
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("最终有效登录方式：", JSON.toJSONString(list2)));
        return list2;
    }

    public final boolean b() {
        return c;
    }

    public final z<Boolean> c() {
        return f7297d;
    }

    public final void f(boolean z) {
        cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("设置无感隐私同意状态：", Boolean.valueOf(z)));
        c = z;
    }

    public final void g(boolean z) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("设置学员录像授权：", Boolean.valueOf(z)));
        f7297d.l(Boolean.valueOf(z));
    }
}
