package cn.mucang.android.core.webview.protocol.bridge;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.protocol.InvalidUrlException;
import cn.mucang.android.core.webview.protocol.bridge.http.H5HttpRequestParams;
import cn.mucang.android.core.webview.protocol.bridge.http.H5JsBridgeApi;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.maps.model.MyLocationStyle;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpJsBridge extends k0 {
    private static final String HTTP_GET = "/http/get";
    private static final String HTTP_POST = "/http/post";
    private static final String TAG = "HttpJsBridge";

    public HttpJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String b(Map map) {
        try {
            return httpRequest(map, MucangRequest.HttpMethod.GET);
        } catch (InvalidUrlException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String buildFailResponse(Throwable th) {
        JSONObject jSONObject = new JSONObject();
        buildCallbackData(jSONObject, "", false, th instanceof ApiException ? ((ApiException) th).getErrorCode() : 0, th.getMessage());
        return jSONObject.toString();
    }

    private String buildLocalData(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            buildCallbackData(jSONObject, str, true, 0, "");
            return jSONObject.toString();
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
            return null;
        }
    }

    private String buildSuccessResponse(String str, H5HttpRequestParams h5HttpRequestParams) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = null;
        try {
            cn.mucang.android.core.utils.t.h(TAG, "result content: " + str);
            JSONObject object = JSON.parseObject(str);
            try {
                if (h5HttpRequestParams.getF2852h()) {
                    buildCallbackData(jSONObject, str, true, 0, "");
                } else {
                    buildCallbackData(jSONObject, object.getJSONObject("data"), object.getBooleanValue("success"), object.getIntValue(MyLocationStyle.ERROR_CODE), object.getString(ErrorDialogParams.EXTRA_MESSAGE));
                }
                return jSONObject.toString();
            } catch (Exception e2) {
                e = e2;
                jSONObject2 = object;
                cn.mucang.android.core.utils.t.c("默认替换", e);
                if (jSONObject2 == null) {
                    buildCallbackData(jSONObject, "", false, 0, e.getMessage());
                } else {
                    buildCallbackData(jSONObject, "", jSONObject2.getBooleanValue("success"), jSONObject2.getIntValue(MyLocationStyle.ERROR_CODE), jSONObject2.getString(ErrorDialogParams.EXTRA_MESSAGE));
                }
                return jSONObject.toString();
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String d(Map map) {
        try {
            return httpRequest(map, MucangRequest.HttpMethod.POST);
        } catch (InvalidUrlException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getLocalData(String str) {
        String strE;
        if (str == null || !str.contains(".asteroid.mucang.cn") || (strE = cn.mucang.android.core.webview.core.page.e.e(str)) == null) {
            return null;
        }
        return buildLocalData(strE);
    }

    private String httpRequest(Map<String, String> map, MucangRequest.HttpMethod httpMethod) throws InvalidUrlException {
        H5HttpRequestParams h5HttpRequestParamsA = H5HttpRequestParams.a(map);
        String localData = getLocalData(h5HttpRequestParamsA.getF2847a());
        if (localData != null) {
            return localData;
        }
        H5JsBridgeApi h5JsBridgeApi = new H5JsBridgeApi(h5HttpRequestParamsA);
        try {
            return buildSuccessResponse(httpMethod == MucangRequest.HttpMethod.GET ? h5JsBridgeApi.d() : h5JsBridgeApi.e(), h5HttpRequestParamsA);
        } catch (Throwable th) {
            return buildFailResponse(th);
        }
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(HTTP_GET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.i
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2866a.b(map);
            }
        });
        this.bridge.a(HTTP_POST, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.h
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2837a.d(map);
            }
        });
    }
}
