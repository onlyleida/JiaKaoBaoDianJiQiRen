package cn.mucang.sundial.library.http;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.library.sign.EncryptAlgorithm;
import cn.mucang.sundial.library.sign.SignException;
import cn.mucang.sundial.library.sign.SignHelper;
import cn.mucang.sundial.library.util.ToastUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ:\u0010\f\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\t\u0018\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nH\u0084\b¢\u0006\u0004\b\f\u0010\rJN\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0010\"\u0006\b\u0000\u0010\t\u0018\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0084\b¢\u0006\u0004\b\u0011\u0010\u0012J?\u0010\f\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nH\u0004¢\u0006\u0004\b\f\u0010\u0015JS\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0010\"\u0004\b\u0000\u0010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0004¢\u0006\u0004\b\u0011\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcn/mucang/sundial/library/http/SundialApi;", "", "", "url", "Lokhttp3/Response;", "httpGet", "(Ljava/lang/String;)Lokhttp3/Response;", "getApiHost", "()Ljava/lang/String;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/LinkedHashMap;", "queryMaps", "httpGetData", "(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/Object;", "Ljava/lang/Class;", "cls", "", "httpGetDataList", "(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Class;)Ljava/util/List;", "Ljava/lang/reflect/Type;", "type", "(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/LinkedHashMap;Ljava/lang/Class;)Ljava/util/List;", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public class SundialApi {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String TAG = "SundialApi";

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/http/SundialApi$Companion;", "", "", "getHost", "()Ljava/lang/String;", "TAG", "Ljava/lang/String;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final String getHost() {
            DataManager dataManager = DataManager.getInstance();
            r.d(dataManager, "DataManager.getInstance()");
            DeviceInfo deviceInfo = dataManager.getDeviceInfo();
            r.d(deviceInfo, "DataManager.getInstance().deviceInfo");
            String platformHost = deviceInfo.getPlatformHost();
            r.d(platformHost, "DataManager.getInstance().deviceInfo.platformHost");
            return platformHost;
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    private final Response httpGet(String url) {
        try {
            t.h(TAG, url);
            Request requestBuild = new Request.Builder().get().url(url).build();
            r.d(requestBuild, "Request.Builder()\n      …\n                .build()");
            Call callNewCall = SundialHttpClient.INSTANCE.getClient().newCall(requestBuild);
            r.d(callNewCall, "SundialHttpClient.client.newCall(request)");
            return callNewCall.execute();
        } catch (Exception e2) {
            t.h(TAG, e2.toString());
            return null;
        }
    }

    public static /* synthetic */ Object httpGetData$default(SundialApi sundialApi, String url, LinkedHashMap linkedHashMap, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: httpGetData");
        }
        int i2 = i & 2;
        r.e(url, "url");
        r.j(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static /* synthetic */ List httpGetDataList$default(SundialApi sundialApi, String url, LinkedHashMap linkedHashMap, Class cls, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: httpGetDataList");
        }
        int i2 = i & 2;
        r.e(url, "url");
        r.e(cls, "cls");
        r.j(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public String getApiHost() {
        return INSTANCE.getHost();
    }

    protected final /* synthetic */ <T> T httpGetData(String url, LinkedHashMap<String, String> queryMaps) {
        r.e(url, "url");
        r.j(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    protected final /* synthetic */ <T> List<T> httpGetDataList(String url, LinkedHashMap<String, String> queryMaps, Class<T> cls) {
        r.e(url, "url");
        r.e(cls, "cls");
        r.j(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:14:0x0045 A[Catch: Exception -> 0x0119, SignException -> 0x013a, TryCatch #2 {SignException -> 0x013a, Exception -> 0x0119, blocks: (B:3:0x000e, B:5:0x002a, B:7:0x0030, B:9:0x0038, B:15:0x0047, B:17:0x0052, B:18:0x005a, B:20:0x0060, B:21:0x008f, B:23:0x009e, B:25:0x00a4, B:27:0x00a8, B:29:0x00ae, B:31:0x00df, B:33:0x00ec, B:38:0x00fc, B:12:0x003d, B:13:0x0044, B:14:0x0045), top: B:46:0x000e }] */
    public final <T> T httpGetData(String url, Type type, LinkedHashMap<String, String> queryMaps) {
        String[] strArr;
        ResponseBody responseBodyBody;
        Collection<String> collectionValues;
        r.e(url, "url");
        r.e(type, "type");
        try {
            SignHelper signHelperCreate = SignHelper.create(EncryptAlgorithm.E2);
            String str = getApiHost() + url;
            if (queryMaps == null || (collectionValues = queryMaps.values()) == null) {
                strArr = new String[0];
            } else {
                Object[] array = collectionValues.toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                strArr = (String[]) array;
                if (strArr == null) {
                    strArr = new String[0];
                }
            }
            StringBuilder sb = new StringBuilder(signHelperCreate.buildGetUrl(str, strArr));
            if (queryMaps != null) {
                for (Map.Entry<String, String> entry : queryMaps.entrySet()) {
                    sb.append('&' + entry.getKey() + '=' + entry.getValue());
                }
            }
            String string = sb.toString();
            r.d(string, "sb.toString()");
            Response responseHttpGet = httpGet(string);
            if (responseHttpGet != null && responseHttpGet.isSuccessful() && type != Void.TYPE && (responseBodyBody = responseHttpGet.body()) != null) {
                String strString = responseBodyBody.string();
                JSONObject object = JSON.parseObject(strString);
                t.h(TAG, "response=" + strString);
                String msg = object.getString(ErrorDialogParams.EXTRA_MESSAGE);
                Boolean bool = object.getBoolean("success");
                r.d(bool, "bodyJsonObj.getBoolean(\"success\")");
                if (bool.booleanValue()) {
                    return (T) JSON.parseObject(object.getString("data"), type, new Feature[0]);
                }
                r.d(msg, "msg");
                if (msg.length() > 0) {
                    return (T) JSON.parseObject("{\"errorMessage\": \"" + msg + "\"}", type, new Feature[0]);
                }
            }
        } catch (SignException e2) {
            SundialLog.normal("请先注册终端：" + e2.getLocalizedMessage());
            ToastUtil.INSTANCE.showToastOnce("请先注册终端");
        } catch (Exception e3) {
            SundialLog.normal("请求异常：" + e3.getLocalizedMessage());
            t.h(TAG, e3.getMessage());
        }
        SundialLog.normal("response=");
        t.h(TAG, "response=");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:15:0x004a A[Catch: Exception -> 0x013b, SignException -> 0x015c, TryCatch #2 {SignException -> 0x015c, Exception -> 0x013b, blocks: (B:3:0x0013, B:6:0x0031, B:8:0x0037, B:10:0x003f, B:16:0x004c, B:18:0x0057, B:19:0x005f, B:21:0x0065, B:22:0x0094, B:24:0x00a3, B:26:0x00a9, B:28:0x00ad, B:30:0x00b3, B:32:0x00de, B:34:0x00fb, B:36:0x0108, B:37:0x0116, B:39:0x012a, B:41:0x0135, B:42:0x013a, B:13:0x0044, B:14:0x0049, B:15:0x004a), top: B:49:0x0013 }] */
    public final <T> List<T> httpGetDataList(String url, Type type, LinkedHashMap<String, String> queryMaps, Class<T> cls) {
        String[] strArr;
        ResponseBody responseBodyBody;
        Collection<String> collectionValues;
        r.e(url, "url");
        r.e(type, "type");
        r.e(cls, "cls");
        try {
            SignHelper signHelperCreate = SignHelper.create(EncryptAlgorithm.E2);
            String str = getApiHost() + url;
            if (queryMaps == null || (collectionValues = queryMaps.values()) == null) {
                strArr = new String[0];
            } else {
                Object[] array = collectionValues.toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                strArr = (String[]) array;
                if (strArr == null) {
                    strArr = new String[0];
                }
            }
            StringBuilder sb = new StringBuilder(signHelperCreate.buildGetUrl(str, strArr));
            if (queryMaps != null) {
                for (Map.Entry<String, String> entry : queryMaps.entrySet()) {
                    sb.append('&' + entry.getKey() + '=' + entry.getValue());
                }
            }
            String string = sb.toString();
            r.d(string, "sb.toString()");
            Response responseHttpGet = httpGet(string);
            if (responseHttpGet != null && responseHttpGet.isSuccessful() && type != Void.TYPE && (responseBodyBody = responseHttpGet.body()) != null) {
                String strString = responseBodyBody.string();
                JSONObject bodyJsonObj = JSON.parseObject(strString);
                t.h(TAG, "response=" + strString);
                Boolean bool = bodyJsonObj.getBoolean("success");
                r.d(bool, "bodyJsonObj.getBoolean(\"success\")");
                if (bool.booleanValue()) {
                    ArrayList arrayList = new ArrayList();
                    Object[] array2 = StringsKt__StringsKt.p0("data.itemList", new String[]{"."}, false, 0, 6, null).toArray(new String[0]);
                    if (array2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    String[] strArr2 = (String[]) array2;
                    r.d(bodyJsonObj, "bodyJsonObj");
                    int length = strArr2.length - 1;
                    for (int i = 0; i < length; i++) {
                        bodyJsonObj = bodyJsonObj.getJSONObject(strArr2[i]);
                        r.d(bodyJsonObj, "json.getJSONObject(ss[i])");
                    }
                    JSONArray array3 = bodyJsonObj.getJSONArray(strArr2[strArr2.length - 1]);
                    r.d(array3, "array");
                    int size = array3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(array3.getObject(i2, cls));
                    }
                    return arrayList;
                }
            }
        } catch (SignException e2) {
            SundialLog.normal("请先注册终端：" + e2.getLocalizedMessage());
            ToastUtil.INSTANCE.showToastOnce("请先注册终端");
        } catch (Exception e3) {
            SundialLog.normal("请求异常：" + e3.getLocalizedMessage());
            t.h(TAG, e3.getMessage());
        }
        SundialLog.normal("response=");
        t.h(TAG, "response=");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object httpGetData$default(SundialApi sundialApi, String str, Type type, LinkedHashMap linkedHashMap, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                linkedHashMap = null;
            }
            return sundialApi.httpGetData(str, type, linkedHashMap);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: httpGetData");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List httpGetDataList$default(SundialApi sundialApi, String str, Type type, LinkedHashMap linkedHashMap, Class cls, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                linkedHashMap = null;
            }
            return sundialApi.httpGetDataList(str, type, linkedHashMap, cls);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: httpGetDataList");
    }
}
