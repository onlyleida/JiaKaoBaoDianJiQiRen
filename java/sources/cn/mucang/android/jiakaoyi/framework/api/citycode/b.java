package cn.mucang.android.jiakaoyi.framework.api.citycode;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;

/* JADX INFO: loaded from: classes2.dex */
public class b extends BaseDeviceManagerApi {
    public String m() throws ApiException, InternalException, HttpException {
        return ((CityCodeModel) httpGet("/api/open/route/get-area-code.htm").getData(CityCodeModel.class)).areaCode;
    }
}
