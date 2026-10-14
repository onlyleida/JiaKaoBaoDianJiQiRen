package cn.mucang.android.jiakaoyi.teachingk2.login.api;

import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.teachingk2.login.model.BaseOperatorModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.q.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/api/ConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getOperatorConfig", "", "Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConfigApi extends n {
    public final List<BaseOperatorModel> m() throws Exception {
        List<BaseOperatorModel> listHttpGetDataList = httpGetDataList("/api/open/train-program-config/list.htm", BaseOperatorModel.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…peratorModel::class.java)");
        return listHttpGetDataList;
    }
}
