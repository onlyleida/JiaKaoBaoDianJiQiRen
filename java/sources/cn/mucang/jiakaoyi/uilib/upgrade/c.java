package cn.mucang.jiakaoyi.uilib.upgrade;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.jiakaoyi.uilib.upgrade.model.UpgradeParameter;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c extends BaseDeviceManagerApi {
    private List<UpgradeInfoModel> n(List<UpgradeParameter> list) throws ApiException, InternalException, HttpException {
        return httpPost("/api/open/upgrade/check-upgrade.htm", JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect).getBytes()).getDataArray(UpgradeInfoModel.class);
    }

    public UpgradeInfoModel m(int i, int i2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        UpgradeParameter upgradeParameter = new UpgradeParameter();
        upgradeParameter.type = i;
        upgradeParameter.version = i2;
        arrayList.add(upgradeParameter);
        List<UpgradeInfoModel> listN = n(arrayList);
        if (!g.d(listN)) {
            return null;
        }
        f.o("获取资源更新包，type：" + i + " version：" + i2 + " url：" + listN.get(0).getFilePath());
        return listN.get(0);
    }
}
