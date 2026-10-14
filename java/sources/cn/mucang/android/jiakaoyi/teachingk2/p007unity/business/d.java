package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.HttpErrorModel;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    public static void a(Exception exc, String str) {
        HttpErrorModel httpErrorModel = new HttpErrorModel();
        if (exc instanceof HttpException) {
            httpErrorModel.code = ((HttpException) exc).getHttpStatusCode();
        } else if (exc instanceof ApiException) {
            httpErrorModel.code = ((ApiException) exc).getErrorCode();
            httpErrorModel.message = exc.getMessage();
        }
        if (n0.e(httpErrorModel.message)) {
            httpErrorModel.message = str;
        }
        cn.mucang.android.jiakaoyi.unity.c.d.e(httpErrorModel);
    }
}
