package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.app.Activity;
import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.consts.Language;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AbsApiLangDataProvider;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.teachingk2.RobotInterceptor;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotApiLangProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getApiLang", "Lcn/mucang/android/jiakaoyi/framework/consts/Language;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class RobotApiLangProvider extends AbsApiLangDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RobotApiLangProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    @Override // cn.mucang.android.jiakaoyi.framework.dataprovider.AbsApiLangDataProvider
    public Language getApiLang() {
        if (!f0.c()) {
            return Language.CHINESE;
        }
        Activity activityI = MucangConfig.i();
        if (activityI == null || !RobotInterceptor.c.a(activityI)) {
            return super.getApiLang();
        }
        Language languageB = f0.b();
        r.d(languageB, "getCurrentLanguage()");
        return languageB;
    }
}
