package cn.mucang.android.jiakaoyi.teachingk2.collectsite.v;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModelWrap;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends BaseDeviceManagerApi {
    public boolean m(PolygonModel polygonModel, int i) throws ApiException, InternalException, HttpException {
        String str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, polygonModel.id));
        if (i == 1) {
            str = "/api/open/owner/electric-fence/delete.htm";
        } else {
            str = i == 2 ? "/api/open/owner/site-special-region/delete.htm" : "/api/open/owner/site-object/delete.htm";
        }
        if (httpPost(str, arrayList).isSuccess()) {
            return true;
        }
        throw new RuntimeException("删除失败");
    }

    public List<PolygonModel> n(String str, int i) throws Exception {
        String str2;
        if (i == 1) {
            str2 = "/api/open/owner/electric-fence/list.htm";
        } else {
            str2 = i == 2 ? "/api/open/owner/site-special-region/list.htm" : "/api/open/owner/site-object/list.htm";
        }
        List listHttpGetDataList = httpGetDataList(str2 + "?examSiteId=" + str, PolygonModelWrap.class);
        if (!g.d(listHttpGetDataList)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listHttpGetDataList.iterator();
        while (it.hasNext()) {
            arrayList.add(((PolygonModelWrap) it.next()).toPolygon());
        }
        return arrayList;
    }

    public boolean o(PolygonModel polygonModel, int i) throws ApiException, InternalException, HttpException {
        String str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", polygonModel.examSiteId));
        arrayList.add(new MucangNameValuePair(Constant.PROTOCOL_WEBVIEW_NAME, polygonModel.name));
        arrayList.add(new MucangNameValuePair(SocialConstants.PARAM_APP_DESC, polygonModel.desc));
        arrayList.add(new MucangNameValuePair("gpsData", JSON.toJSONString(polygonModel.gpsData)));
        if (i == 1) {
            str = "/api/open/owner/electric-fence/save.htm";
        } else {
            str = i == 2 ? "/api/open/owner/site-special-region/save.htm" : "/api/open/owner/site-object/save.htm";
        }
        ApiResponse apiResponseHttpPost = httpPost(str, arrayList);
        JSONObject jsonObject = apiResponseHttpPost.getJsonObject();
        polygonModel.id = jsonObject.getString(TtmlNode.ATTR_ID);
        polygonModel.qrCode = jsonObject.getString("qrCode");
        if (apiResponseHttpPost.isSuccess()) {
            return true;
        }
        throw new RuntimeException("保存失败");
    }

    public boolean p(PolygonModel polygonModel, String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, polygonModel.id));
        arrayList.add(new MucangNameValuePair("safeData", str));
        return httpPost("/api/open/owner/site-special-region/update-safe-data.htm", arrayList).isSuccess();
    }
}
