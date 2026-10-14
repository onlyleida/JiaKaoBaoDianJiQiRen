package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ2\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/OnlyJkyApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "forceUseJkyHost", "", "getAreaCode", "", "getRobotUpgradeInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "type", "", "localVersion", "reportUpgradeResult", "", "info", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "uuid", "updateProgress", "setHighGps", "isHighGps", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OnlyJkyApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n
    protected boolean c() {
        return true;
    }

    public final List<UpgradeInfoModel> m(UpgradeInfoModel upgradeInfoModel, UpgradeUploadModel extraInfo, String uuid, int i) throws ApiException, InternalException, HttpException {
        r.e(extraInfo, "extraInfo");
        r.e(uuid, "uuid");
        MucangNameValuePair[] mucangNameValuePairArr = new MucangNameValuePair[8];
        mucangNameValuePairArr[0] = new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(upgradeInfoModel == null ? null : Long.valueOf(upgradeInfoModel.getId())));
        mucangNameValuePairArr[1] = new MucangNameValuePair("hardwareVer", String.valueOf(upgradeInfoModel == null ? null : Integer.valueOf(upgradeInfoModel.getHardwareVer())));
        mucangNameValuePairArr[2] = new MucangNameValuePair("type", String.valueOf(upgradeInfoModel == null ? null : Integer.valueOf(upgradeInfoModel.getType())));
        mucangNameValuePairArr[3] = new MucangNameValuePair("version", String.valueOf(upgradeInfoModel == null ? null : Integer.valueOf(upgradeInfoModel.getVersion())));
        mucangNameValuePairArr[4] = new MucangNameValuePair("modelCode", String.valueOf(upgradeInfoModel != null ? Integer.valueOf(upgradeInfoModel.getModelCode()) : null));
        mucangNameValuePairArr[5] = new MucangNameValuePair("extraInfo", JSON.toJSONString(extraInfo));
        mucangNameValuePairArr[6] = new MucangNameValuePair("uuid", uuid);
        mucangNameValuePairArr[7] = new MucangNameValuePair("updateProgress", String.valueOf(i));
        List<UpgradeInfoModel> dataArray = httpPost("/api/open/update/sync-result-or-rollback.htm", u.m(mucangNameValuePairArr)).getDataArray(UpgradeInfoModel.class);
        r.d(dataArray, "httpPost(\n            \"/…adeInfoModel::class.java)");
        return dataArray;
    }
}
