package cn.mucang.android.core.webview.protocol.bridge.http;

import android.net.Uri;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.api.url.BasicParamsBuilder;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeBaseParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeGetParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgePostFormParams;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgePostMultiPartParams;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.iflytek.cloud.SpeechConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JV\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0002J(\u0010\u0018\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0018\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010!\u001a\u0004\u0018\u00010\u0004H\u0002J`\u0010\"\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001b2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\b\u0010#\u001a\u00020$H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;", "", "()V", "BAD_KEY_FROM_H5_R", "", "BAD_KEY_FROM_H5_V", "formParams", "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostFormParams;", "path", "formList", "", "Lcn/mucang/android/core/http/MucangNameValuePair;", "host", "headerList", "", "signKey", "appendBasicParams", "", "timeout", "", "encrypt", "formatUrl", "Lkotlin/Pair;", "fullUrl", "get", "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;", "h5RequestData", "", "httpMethod", "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;", "parseHeaderFromH5", "header", "parseParams", SpeechConstant.PARAMS, "parsePostParams", "throwBadKey", "", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgeParamsFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HttpJsBridgeParamsFactory f2840a = new HttpJsBridgeParamsFactory();

    private HttpJsBridgeParamsFactory() {
    }

    private final HttpJsBridgePostFormParams a(String str, List<MucangNameValuePair> list, String str2, List<? extends MucangNameValuePair> list2, String str3, boolean z, long j, boolean z2) throws UnsupportedEncodingException {
        Object next;
        MucangNameValuePair mucangNameValuePair;
        Uri uri = Uri.parse(r.m(str2, str));
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        List listM0 = CollectionsKt___CollectionsKt.M0(list);
        if (!list.isEmpty()) {
            Iterator<MucangNameValuePair> it = list.iterator();
            while (it.hasNext()) {
                MucangNameValuePair next2 = it.next();
                String name = next2.getName();
                if (name == null || name.length() == 0) {
                    it.remove();
                } else {
                    String name2 = next2.getName();
                    Charset charset = Charsets.f15811a;
                    String name3 = URLDecoder.decode(name2, charset.name());
                    String value = next2.getValue();
                    String value2 = value == null || value.length() == 0 ? next2.getValue() : URLDecoder.decode(next2.getValue(), charset.name());
                    BasicParamsBuilder.a aVar = BasicParamsBuilder.i;
                    r.d(name3, "name");
                    if (aVar.f(name3)) {
                        if (uri.getQueryParameter(name3) == null) {
                            builderBuildUpon.appendQueryParameter(name3, value2);
                        }
                        it.remove();
                    }
                }
            }
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException(r.m(CollectionsKt___CollectionsKt.m0(listM0, ",", null, null, 0, null, new Function1<MucangNameValuePair, CharSequence>() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.HttpJsBridgeParamsFactory$formParams$friendlyString$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(MucangNameValuePair it2) {
                    r.e(it2, "it");
                    String name4 = it2.getName();
                    r.d(name4, "it.name");
                    return name4;
                }
            }, 30, null), "参数与URL上重复被移除，导致Post体为空，无法发送请求"));
        }
        Iterator<T> it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            mucangNameValuePair = (MucangNameValuePair) next;
        } while (!(r.a(mucangNameValuePair.getName(), "_r") || r.a(mucangNameValuePair.getName(), "_v")));
        if (next != null) {
            g();
            throw null;
        }
        String string = builderBuildUpon.toString();
        r.d(string, "pathBuilder.toString()");
        return new HttpJsBridgePostFormParams(str2, string, list2, str3, z, j, z2, list);
    }

    private final Pair<String, String> b(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(r.m("bad url:", str));
        }
        Uri uri = Uri.parse(str);
        String strSubstring = ((Object) uri.getScheme()) + "://" + ((Object) uri.getHost());
        String path = uri.getPath();
        if (uri.getQuery() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) path);
            sb.append('?');
            sb.append((Object) uri.getQuery());
            path = sb.toString();
        }
        if (path == null || path.length() == 0) {
            throw new IllegalArgumentException(r.m("bad path of url:", str));
        }
        if (t.o(strSubstring, "/", false, 2, null)) {
            int length = strSubstring.length() - 1;
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            strSubstring = strSubstring.substring(0, length);
            r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        if (!t.B(path, "/", false, 2, null)) {
            path = r.m("/", path);
        }
        return new Pair<>(strSubstring, path);
    }

    public static final HttpJsBridgeBaseParams c(Map<String, String> h5RequestData, MucangRequest.HttpMethod httpMethod) throws RuntimeException {
        Float fI;
        r.e(h5RequestData, "h5RequestData");
        r.e(httpMethod, "httpMethod");
        String str = h5RequestData.get("url");
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(r.m("bad url:", str));
        }
        String str2 = h5RequestData.get("signKey");
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        boolean zK = cn.mucang.android.core.webview.protocol.e.a.k(h5RequestData.get("basicParams"), true);
        boolean zK2 = cn.mucang.android.core.webview.protocol.e.a.k(h5RequestData.get("needCache"), false);
        boolean zK3 = cn.mucang.android.core.webview.protocol.e.a.k(h5RequestData.get("needEncrypted"), true);
        String str4 = h5RequestData.get("timeout");
        float fFloatValue = 10.0f;
        if (str4 != null && (fI = kotlin.text.r.i(str4)) != null) {
            fFloatValue = fI.floatValue();
        }
        long j = (long) (fFloatValue * 1000);
        HttpJsBridgeParamsFactory httpJsBridgeParamsFactory = f2840a;
        Pair<String, String> pairB = httpJsBridgeParamsFactory.b(str);
        String strComponent1 = pairB.component1();
        String strComponent2 = pairB.component2();
        List<MucangNameValuePair> listD = httpJsBridgeParamsFactory.d(h5RequestData.get("headers"));
        if (!StringsKt__StringsKt.G(str, r.m("_r", "="), false, 2, null) && !StringsKt__StringsKt.G(str, r.m("_v", "="), false, 2, null)) {
            return httpMethod == MucangRequest.HttpMethod.GET ? new HttpJsBridgeGetParams(strComponent1, strComponent2, listD, str3, zK, j, zK3, zK2) : httpJsBridgeParamsFactory.f(h5RequestData, strComponent2, strComponent1, listD, str3, zK, j, zK3);
        }
        httpJsBridgeParamsFactory.g();
        throw null;
    }

    private final List<MucangNameValuePair> d(String str) {
        Set<String> setKeySet;
        String string;
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject object = JSON.parseObject(str);
            if (!((object == null || (setKeySet = object.keySet()) == null || !(setKeySet.isEmpty() ^ true)) ? false : true)) {
                return arrayList;
            }
            for (String str2 : object.keySet()) {
                if (str2 != null) {
                    if (!(str2.length() == 0) && (string = object.getString(str2)) != null) {
                        if (!(string.length() == 0)) {
                            arrayList.add(new MucangNameValuePair(str2, string));
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    private final List<MucangNameValuePair> e(String str) {
        Set<String> setKeySet;
        String string;
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject object = JSON.parseObject(str);
            if (!((object == null || (setKeySet = object.keySet()) == null || !(setKeySet.isEmpty() ^ true)) ? false : true)) {
                return arrayList;
            }
            for (String str2 : object.keySet()) {
                if (str2 != null) {
                    if (!(str2.length() == 0) && (string = object.getString(str2)) != null) {
                        if (!(string.length() == 0)) {
                            arrayList.add(new MucangNameValuePair(str2, URLDecoder.decode(string, Charsets.f15811a.name())));
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    private final HttpJsBridgeBaseParams f(Map<String, String> map, String str, String str2, List<? extends MucangNameValuePair> list, String str3, boolean z, long j, boolean z2) {
        List<MucangNameValuePair> listE = e(map.get("postForm"));
        String str4 = map.get("postString");
        if (!(listE == null || listE.isEmpty())) {
            return a(str, listE, str2, list, str3, z, j, z2);
        }
        if (str4 == null || str4.length() == 0) {
            throw new IllegalArgumentException("Post体为空无法提交数据.");
        }
        return new HttpJsBridgePostMultiPartParams(str2, str, list, str3, z, j, z2, str4);
    }

    private final void g() {
        throw new IllegalArgumentException("'_r' or '_v' should not pass from h5.");
    }
}
