package cn.mucang.android.jiakaoyi.teachingk2.teachplan.b;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;

/* JADX INFO: loaded from: classes4.dex */
public class a extends n {
    public boolean m(long j) throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/car/set-teach-program-id.htm?teachProgramId=" + j).isSuccess();
    }
}
