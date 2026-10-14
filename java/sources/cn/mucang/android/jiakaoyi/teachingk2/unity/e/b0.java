package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.consts.Language;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityPreSettingModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class b0 implements c<UnityPreSettingModel> {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6365a;

        static {
            int[] iArr = new int[Language.values().length];
            f6365a = iArr;
            try {
                iArr[Language.ENGLISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6365a[Language.UYGUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityPreSettingModel> a(UnityMessage<UnityPreSettingModel> unityMessage, Activity activity) {
        int i = a.f6365a[f0.b().ordinal()];
        int i2 = 2;
        if (i == 1) {
            i2 = 1;
        } else if (i != 2) {
            i2 = 0;
        }
        T t = unityMessage.data;
        ((UnityPreSettingModel) t).languageCode = i2;
        ((UnityPreSettingModel) t).carType = RealCarSelectManager.a();
        return unityMessage;
    }
}
