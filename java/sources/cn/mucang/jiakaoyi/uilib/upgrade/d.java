package cn.mucang.jiakaoyi.uilib.upgrade;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceUpdateApi;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.jiakaoyi.uilib.upgrade.model.UpgradeParameterV2;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d extends BaseDeviceUpdateApi {
    private List<UpgradeInfoModel> o(List<UpgradeParameterV2> list, boolean z, boolean z2) throws ApiException, InternalException, HttpException {
        String str = "/api/open/update/check-update.htm";
        if (z) {
            str = "/api/open/update/check-update.htm?hardwareVersion=" + DeviceUtils.f() + "&modelCode=" + SelectCarManager.g() + "&stable=" + z2;
        }
        return httpPost(str, JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect).getBytes()).getDataArray(UpgradeInfoModel.class);
    }

    public List<UpgradeInfoModel> m(List<UpgradeParameterV2> list) throws ApiException, InternalException, HttpException {
        return o(list, true, false);
    }

    public List<UpgradeInfoModel> n(List<UpgradeParameterV2> list) throws ApiException, InternalException, HttpException {
        return o(list, true, true);
    }
}
