package cn.mucang.android.core.config;

import android.os.Looper;
import cn.mucang.android.core.config.db.RemoteConfigEntity;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.n0;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class v {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2503a;

        a(String str) {
            this.f2503a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.c(this.f2503a);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.misc.a f2504a;

        b(cn.mucang.android.core.misc.a aVar) {
            this.f2504a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                List<RemoteConfigEntity> listY = cn.mucang.android.core.config.db.a.G().y(RemoteConfigEntity.class, new cn.mucang.android.core.db.e("select * from t_remote_config"));
                if (cn.mucang.android.core.utils.g.b(listY)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                for (RemoteConfigEntity remoteConfigEntity : listY) {
                    jSONObject.put(remoteConfigEntity.getRemoteKey(), remoteConfigEntity.getRemoteKeyCount());
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MucangNameValuePair("countMap", jSONObject.toString()));
                if (s.b.d().h(arrayList)) {
                    cn.mucang.android.core.config.db.a.G().k("t_remote_config", "1=1", new String[0]);
                    this.f2504a.a();
                }
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("UploadRemoteConfigManger", e2);
            }
        }
    }

    public static void b(String str) {
        if (n0.e(str)) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            MucangConfig.f(new a(str));
        } else {
            c(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(String str) {
        cn.mucang.android.core.config.db.a aVarG = cn.mucang.android.core.config.db.a.G();
        RemoteConfigEntity remoteConfigEntity = (RemoteConfigEntity) aVarG.n(RemoteConfigEntity.class, cn.mucang.android.core.db.e.d("select * from t_remote_config where remote_key = ?", str));
        if (remoteConfigEntity != null) {
            remoteConfigEntity.setRemoteKeyCount(remoteConfigEntity.getRemoteKeyCount() + 1);
            aVarG.w(remoteConfigEntity);
        } else {
            RemoteConfigEntity remoteConfigEntity2 = new RemoteConfigEntity();
            remoteConfigEntity2.setRemoteKey(str);
            remoteConfigEntity2.setRemoteKeyCount(1);
            aVarG.u(remoteConfigEntity2);
        }
    }

    public static void d() {
        a0.a();
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("uploadRemoteConfig");
            return;
        }
        cn.mucang.android.core.misc.a aVarE = cn.mucang.android.core.misc.a.e(MucangConfig.getContext(), "UploadRemoteConfigManger.dayRunnerName");
        if (aVarE == null || aVarE.b()) {
            return;
        }
        MucangConfig.f(new b(aVarE));
    }
}
