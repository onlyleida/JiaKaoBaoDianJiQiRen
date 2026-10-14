package cn.mucang.android.jiakaoyi.teachingk2.config;

import android.app.Activity;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.jiakaoyi.uilib.api.DeviceConfigApi;
import cn.mucang.jiakaoyi.uilib.model.ConfigModel;
import com.alibaba.fastjson.JSON;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.t;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.s;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J*\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\b2\b\b\u0002\u0010\u0017\u001a\u00020\b2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\nH\u0007J'\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0007R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;", "", "()V", "configList", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "loadedSuccess", "", "retryCount", "", "changeConfig", "", "activity", "Landroid/app/Activity;", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "value", "onSuccess", "Lkotlin/Function0;", "getBoolean", "getConfig", "needRetry", "force", "onLoaded", "getInt", "default", "loadConfig", "serverList", "", "Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;", "(ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uploadConfig", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LocalConfigManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalConfigManager f6976a = new LocalConfigManager();
    private static final HashMap<String, String> b = new HashMap<>();
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f6977d;

    private LocalConfigManager() {
    }

    public static final void c(Activity activity, final LocalConfig config, final String str, final Function0<v> onSuccess) {
        r.e(activity, "activity");
        r.e(config, "config");
        r.e(onSuccess, "onSuccess");
        f.o("修改配置,code:" + config.getCode() + ",name:" + config.name() + ",value:" + ((Object) str));
        ConfigModel configModel = new ConfigModel();
        configModel.setCode(config.getCode());
        configModel.setValue(str);
        final List listD = t.d(configModel);
        new u(activity).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.config.a
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                LocalConfigManager.d(listD, config, str, onSuccess);
            }
        }, "修改中", "修改失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(List list, final LocalConfig config, final String str, final Function0 onSuccess) throws ApiException, InternalException, HttpException {
        r.e(list, "$list");
        r.e(config, "$config");
        r.e(onSuccess, "$onSuccess");
        DeviceConfigApi deviceConfigApi = new DeviceConfigApi();
        String jSONString = JSON.toJSONString(list);
        r.d(jSONString, "toJSONString(list)");
        DeviceConfigApi.o(deviceConfigApi, jSONString, false, 2, null);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.config.b
            @Override // java.lang.Runnable
            public final void run() {
                LocalConfigManager.e(config, str, onSuccess);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(LocalConfig config, String str, Function0 onSuccess) {
        r.e(config, "$config");
        r.e(onSuccess, "$onSuccess");
        HashMap<String, String> map = b;
        String code = config.getCode();
        r.c(str);
        map.put(code, str);
        config.setValue(str);
        onSuccess.invoke();
    }

    public static final boolean f(LocalConfig config) {
        r.e(config, "config");
        try {
            Result.Companion companion = Result.INSTANCE;
            return Boolean.parseBoolean(b.get(config.getCode()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
            return Boolean.parseBoolean(config.getValue());
        }
    }

    public static final void g(boolean z, Function0<v> function0) {
        i(z, false, function0, 2, null);
    }

    public static final void h(boolean z, boolean z2, Function0<v> function0) {
        if (!f6977d || z2) {
            c = 0;
            g.b(j0.b(), null, null, new LocalConfigManager$getConfig$1(function0, z, null), 3, null);
        } else {
            f.o("配置已经成功拉取过，直接返回");
            if (function0 == null) {
                return;
            }
            function0.invoke();
        }
    }

    public static /* synthetic */ void i(boolean z, boolean z2, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        h(z, z2, function0);
    }

    public static final int j(LocalConfig config, int i) {
        r.e(config, "config");
        String str = b.get(config.getCode());
        Integer numJ = str == null ? null : s.j(str);
        if (numJ != null) {
            return numJ.intValue();
        }
        Integer numJ2 = s.j(config.getValue());
        return numJ2 == null ? i : numJ2.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x0101 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(boolean z, List<ConfigModel> list, Continuation<? super v> continuation) throws Throwable {
        LocalConfigManager$loadConfig$1 localConfigManager$loadConfig$1;
        Object objM139constructorimpl;
        int i;
        Throwable th;
        Object objM139constructorimpl2;
        LocalConfigManager localConfigManager;
        if (continuation instanceof LocalConfigManager$loadConfig$1) {
            localConfigManager$loadConfig$1 = (LocalConfigManager$loadConfig$1) continuation;
            int i2 = localConfigManager$loadConfig$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                localConfigManager$loadConfig$1.label = i2 - Integer.MIN_VALUE;
            } else {
                localConfigManager$loadConfig$1 = new LocalConfigManager$loadConfig$1(this, continuation);
            }
        } else {
            localConfigManager$loadConfig$1 = new LocalConfigManager$loadConfig$1(this, continuation);
        }
        Object obj = localConfigManager$loadConfig$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i3 = localConfigManager$loadConfig$1.label;
        if (i3 == 0) {
            k.b(obj);
            if (n0.e(DeviceUtils.c())) {
                f.o("设备号为空，使用本地默认配置");
                return v.f15822a;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                List<ConfigModel> listM = new DeviceConfigApi().m();
                try {
                    objM139constructorimpl2 = Result.m139constructorimpl(JSON.toJSONString(listM));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(k.a(th2));
                }
                if (Result.m145isFailureimpl(objM139constructorimpl2)) {
                    objM139constructorimpl2 = null;
                }
                f.o(r.m("拉取服务端配置项:", (String) objM139constructorimpl2));
                if (cn.mucang.android.core.utils.g.d(listM)) {
                    list.addAll(listM);
                }
                f6977d = true;
                objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(k.a(th3));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                if (!z || (i = c) >= 10) {
                    f.o(r.m("拉取服务端配置项失败，使用本地配置。错误：", thM142exceptionOrNullimpl.getMessage()));
                } else {
                    c = i + 1;
                    localConfigManager$loadConfig$1.L$0 = list;
                    localConfigManager$loadConfig$1.L$1 = objM139constructorimpl;
                    localConfigManager$loadConfig$1.L$2 = thM142exceptionOrNullimpl;
                    localConfigManager$loadConfig$1.label = 1;
                    if (s0.a(1000L, localConfigManager$loadConfig$1) == objD) {
                        return objD;
                    }
                    th = thM142exceptionOrNullimpl;
                    f.o("拉取服务端配置项失败，重试:" + c + "。错误：" + ((Object) th.getMessage()));
                    localConfigManager = f6976a;
                    localConfigManager$loadConfig$1.L$0 = objM139constructorimpl;
                    localConfigManager$loadConfig$1.L$1 = null;
                    localConfigManager$loadConfig$1.L$2 = null;
                    localConfigManager$loadConfig$1.label = 2;
                    if (localConfigManager.n(true, list, localConfigManager$loadConfig$1) == objD) {
                        return objD;
                    }
                }
            }
        } else if (i3 == 1) {
            th = (Throwable) localConfigManager$loadConfig$1.L$2;
            Object obj2 = localConfigManager$loadConfig$1.L$1;
            List<ConfigModel> list2 = (List) localConfigManager$loadConfig$1.L$0;
            k.b(obj);
            objM139constructorimpl = obj2;
            list = list2;
            f.o("拉取服务端配置项失败，重试:" + c + "。错误：" + ((Object) th.getMessage()));
            localConfigManager = f6976a;
            localConfigManager$loadConfig$1.L$0 = objM139constructorimpl;
            localConfigManager$loadConfig$1.L$1 = null;
            localConfigManager$loadConfig$1.L$2 = null;
            localConfigManager$loadConfig$1.label = 2;
            if (localConfigManager.n(true, list, localConfigManager$loadConfig$1) == objD) {
                return objD;
            }
        } else {
            if (i3 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj3 = localConfigManager$loadConfig$1.L$0;
            k.b(obj);
        }
        return v.f15822a;
    }

    public static final void o(final LocalConfig config, final String value) {
        r.e(config, "config");
        r.e(value, "value");
        f.o("配置仅上报,code:" + config.getCode() + ",name:" + config.name() + ",value:" + value);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.config.c
            @Override // java.lang.Runnable
            public final void run() {
                LocalConfigManager.p(config, value);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LocalConfig config, String value) {
        r.e(config, "$config");
        r.e(value, "$value");
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigModel configModel = new ConfigModel();
            configModel.setCode(config.getCode());
            configModel.setValue(value);
            List listD = t.d(configModel);
            DeviceConfigApi deviceConfigApi = new DeviceConfigApi();
            String jSONString = JSON.toJSONString(listD);
            r.d(jSONString, "toJSONString(list)");
            DeviceConfigApi.o(deviceConfigApi, jSONString, false, 2, null);
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }
}
