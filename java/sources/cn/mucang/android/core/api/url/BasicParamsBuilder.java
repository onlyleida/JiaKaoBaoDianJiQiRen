package cn.mucang.android.core.api.url;

import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.api.g.b;
import cn.mucang.android.core.api.url.impl.DefaultPrivacyAgreementSettingProvider;
import cn.mucang.android.core.api.url.impl.DefaultPrivacyBasicParamsProvider;
import cn.mucang.android.core.api.url.impl.DefaultSafeBasicParamsProvider;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.w;
import cn.mucang.android.core.location.c;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.r0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.selectcity.CityNameCodeMapping;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;
import f.a.a.a.d;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u001f\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007J\u0014\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0007J\u001c\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\"\u001a\u00020\u0004H\u0003J\u0014\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007H\u0003J\u0006\u0010$\u001a\u00020\u0000J\u0006\u0010%\u001a\u00020\u0000J \u0010&\u001a\u00020\u00002\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0007J\u0006\u0010'\u001a\u00020\u0000J,\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00072\u0016\u0010)\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\nj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b`\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006+"}, d2 = {"Lcn/mucang/android/core/api/url/BasicParamsBuilder;", "", "()V", "encryptPrivacyParamsKey", "", "encryptPrivacyParamsToV", "extraParamAddedToV", "", "", "highPriorityBasicParams", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "includePrivacyParams", "privacyAgreementSettingProvider", "Lcn/mucang/android/core/api/url/PrivacyAgreementSettingProvider;", "getPrivacyAgreementSettingProvider", "()Lcn/mucang/android/core/api/url/PrivacyAgreementSettingProvider;", "setPrivacyAgreementSettingProvider", "(Lcn/mucang/android/core/api/url/PrivacyAgreementSettingProvider;)V", "privacyBasicParamsProvider", "Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;", "getPrivacyBasicParamsProvider", "()Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;", "setPrivacyBasicParamsProvider", "(Lcn/mucang/android/core/api/url/PrivacyBasicParamsProvider;)V", "safeBasicParamsProvider", "Lcn/mucang/android/core/api/url/SafeBasicParamsProvider;", "getSafeBasicParamsProvider", "()Lcn/mucang/android/core/api/url/SafeBasicParamsProvider;", "setSafeBasicParamsProvider", "(Lcn/mucang/android/core/api/url/SafeBasicParamsProvider;)V", "appendHighPriorityBasicParams", "build", "createUrlPrivacyParams", "keyEncode", "createUrlSafeParams", "excludePrivacyParams", "includeOriginPrivacyParams", "includePrivacyEncodeAsV", "includePrivacyEncodeOnlyKey", "trimNull", "map", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BasicParamsBuilder {
    public static final a i = new a(null);
    private static final HashMap<String, String> j;
    private static final ArrayList<String> k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f2380a;
    private HashMap<String, String> b = new HashMap<>();
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2381d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2382e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SafeBasicParamsProvider f2383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PrivacyBasicParamsProvider f2384g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PrivacyAgreementSettingProvider f2385h;

    /* JADX INFO: renamed from: cn.mucang.android.core.api.f.b$a */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000400Jh\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040+j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`,2\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u0002052\u0016\b\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u000103H\u0007J\b\u00109\u001a\u00020:H\u0007J\u0018\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u000205H\u0002J\u000e\u0010>\u001a\u0002052\u0006\u0010?\u001a\u00020\u0004J\u000e\u0010@\u001a\u0002052\u0006\u0010?\u001a\u00020\u0004J\u000e\u0010A\u001a\u0002052\u0006\u0010?\u001a\u00020\u0004J\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u000400J\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u000400J\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000400R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R*\u0010*\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040+j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`,X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040.X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006E"}, d2 = {"Lcn/mucang/android/core/api/url/BasicParamsBuilder$Companion;", "", "()V", "PRIVATE_ANDROID_ID", "", "PRIVATE_API_LEVEL", "PRIVATE_APP_USER", "PRIVATE_BR", "PRIVATE_CITY_CODE", "PRIVATE_CITY_NAME", "PRIVATE_DEVICE", "PRIVATE_DEVICE_ID", "PRIVATE_FIRST_TIME", "PRIVATE_GPS_CITY", "PRIVATE_GPS_TYPE", "PRIVATE_IT", "PRIVATE_LATITUDE", "PRIVATE_LONGITUDE", "PRIVATE_MD", "PRIVATE_OAID", "PRIVATE_RN", "PRIVATE_RV", "PRIVATE_SCREEN_DPI", "PRIVATE_SCREEN_HEIGHT", "PRIVATE_SCREEN_WIDTH", "PRIVATE_USER_CITY", "PRIVATE_UT", "PUBLIC_API_VERSION", "PUBLIC_APP_NAME", "PUBLIC_LAUNCH", "PUBLIC_MANUFACTURER", "PUBLIC_NETWORK", "PUBLIC_OPERATOR", "PUBLIC_PKG_NAME", "PUBLIC_PLATFORM", "PUBLIC_PRODUCT", "PUBLIC_PRODUCT_CATEGORY", "PUBLIC_REN_YUAN", "PUBLIC_SYSTEM", "PUBLIC_SYSTEM_VERSION", "PUBLIC_VENDOR", "PUBLIC_VERSION", "privacyKeys", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "publicKeys", "Ljava/util/ArrayList;", "allParamKeys", "", "buildFromMap", "basicParams", "", "includePrivacyParams", "", "encryptPrivacyParamsKey", "encryptPrivacyParamsToV", "extraParamAddedToV", "create", "Lcn/mucang/android/core/api/url/BasicParamsBuilder;", "getPrivacyKey", "originalKey", "keyEncode", "isBasicParamKey", "key", "isPrivateParamKey", "isPublicParamKey", "privateParamEncodedKeys", "privateParamKeys", "publicParamKeys", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String e(String str, boolean z) {
            if (z) {
                String str2 = (String) BasicParamsBuilder.j.get(str);
                if (str2 != null) {
                    str = str2;
                }
                r.d(str, "{\n                privac…originalKey\n            }");
            }
            return str;
        }

        public final List<String> b() {
            return CollectionsKt___CollectionsKt.x0(j(), i());
        }

        public final HashMap<String, String> c(Map<String, String> basicParams, boolean z, boolean z2, boolean z3, Map<String, String> map) {
            r.e(basicParams, "basicParams");
            HashMap<String, String> map2 = new HashMap<>();
            HashMap map3 = new HashMap();
            Iterator<T> it = basicParams.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                a aVar = BasicParamsBuilder.i;
                if (aVar.g(str)) {
                    map3.put(str, str2);
                } else if (aVar.h(str)) {
                    map2.put(str, str2);
                } else {
                    if (MucangConfig.v()) {
                        t.k("core", r.m(str, " not one of basic params,treat it as public params"));
                    }
                    map2.put(str, str2);
                }
            }
            String r = r0.b(16);
            r.d(r, "r");
            map2.put("_r", r);
            if (z) {
                boolean zE = d.e();
                if (z2 && zE) {
                    Set setEntrySet = map3.entrySet();
                    r.d(setEntrySet, "privateParams.entries");
                    for (Map.Entry entry2 : CollectionsKt___CollectionsKt.M0(setEntrySet)) {
                        String str3 = (String) map3.remove(entry2.getKey());
                        a aVar2 = BasicParamsBuilder.i;
                        Object key = entry2.getKey();
                        r.d(key, "it.key");
                        String strE = aVar2.e((String) key, true);
                        if (str3 == null) {
                            str3 = "";
                        }
                        map3.put(strE, str3);
                    }
                }
                if (z3 && zE) {
                    if (map != null) {
                        map3.putAll(map);
                    }
                    Uri.Builder builderBuildUpon = Uri.parse("").buildUpon();
                    for (Map.Entry entry3 : map3.entrySet()) {
                        builderBuildUpon.appendQueryParameter((String) entry3.getKey(), (String) entry3.getValue());
                    }
                    try {
                        String strA = b.a(builderBuildUpon.build().getQuery(), r);
                        r.d(strA, "encode(params, r)");
                        map2.put("_v", strA);
                    } catch (Exception unused) {
                    }
                } else {
                    map2.putAll(map3);
                }
            }
            return map2;
        }

        public final BasicParamsBuilder d() {
            return new BasicParamsBuilder();
        }

        public final boolean f(String key) {
            r.e(key, "key");
            return b().contains(key);
        }

        public final boolean g(String key) {
            r.e(key, "key");
            return i().contains(key);
        }

        public final boolean h(String key) {
            r.e(key, "key");
            return j().contains(key);
        }

        public final List<String> i() {
            HashMap map = BasicParamsBuilder.j;
            ArrayList arrayList = new ArrayList(map.size());
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add((String) ((Map.Entry) it.next()).getKey());
            }
            return arrayList;
        }

        public final List<String> j() {
            return CollectionsKt___CollectionsKt.M0(BasicParamsBuilder.k);
        }
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        j = map;
        ArrayList<String> arrayList = new ArrayList<>();
        k = arrayList;
        arrayList.add("_platform");
        arrayList.add("_appName");
        arrayList.add("_product");
        arrayList.add("_productCategory");
        arrayList.add("_vendor");
        arrayList.add("_renyuan");
        arrayList.add("_version");
        arrayList.add("_system");
        arrayList.add("_manufacturer");
        arrayList.add("_systemVersion");
        arrayList.add("_operator");
        arrayList.add("_pkgName");
        arrayList.add("_network");
        arrayList.add("_launch");
        arrayList.add("_clv");
        map.put("_device", "b");
        map.put("_androidId", "1");
        map.put("_deviceId", "z");
        map.put("_appUser", "3");
        map.put("_screenDpi", "l");
        map.put("_screenWidth", "n");
        map.put("_screenHeight", "m");
        map.put("_firstTime", "w");
        map.put("_apiLevel", "H");
        map.put("_rV", "I");
        map.put("_rN", "J");
        map.put("_br", "K");
        map.put("_md", "L");
        map.put("_oaid", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
        map.put("_it", "B");
        map.put("_ut", "C");
        map.put("_userCity", "7");
        map.put("_gpsType", "v");
        map.put("_cityName", "a");
        map.put("_cityCode", Constants.VIA_SHARE_TYPE_MINI_PROGRAM);
        map.put("_gpsCity", Constants.VIA_TO_TYPE_QZONE);
        map.put("_longitude", "5");
        map.put("_latitude", Constants.VIA_SHARE_TYPE_INFO);
    }

    public static final BasicParamsBuilder e() {
        return i.d();
    }

    private final Map<String, String> f(boolean z) {
        String strM;
        String strH;
        String strC;
        String strI;
        String string;
        String string2;
        String string3;
        String strE;
        String strD;
        String strA;
        String strJ;
        String strO;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f2385h == null) {
            this.f2385h = DefaultPrivacyAgreementSettingProvider.f2390a;
        }
        PrivacyAgreementSettingProvider privacyAgreementSettingProvider = this.f2385h;
        if (!(privacyAgreementSettingProvider != null && privacyAgreementSettingProvider.a())) {
            return m(linkedHashMap);
        }
        if (this.f2384g == null) {
            this.f2384g = DefaultPrivacyBasicParamsProvider.f2391a;
        }
        a aVar = i;
        String strE2 = aVar.e("_device", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider = this.f2384g;
        String str = "";
        if (privacyBasicParamsProvider == null || (strM = privacyBasicParamsProvider.m()) == null) {
            strM = "";
        }
        linkedHashMap.put(strE2, strM);
        String strE3 = aVar.e("_androidId", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider2 = this.f2384g;
        if (privacyBasicParamsProvider2 == null || (strH = privacyBasicParamsProvider2.h()) == null) {
            strH = "";
        }
        linkedHashMap.put(strE3, strH);
        String strE4 = aVar.e("_deviceId", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider3 = this.f2384g;
        if (privacyBasicParamsProvider3 == null || (strC = privacyBasicParamsProvider3.c()) == null) {
            strC = "";
        }
        linkedHashMap.put(strE4, strC);
        String strE5 = aVar.e("_appUser", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider4 = this.f2384g;
        if (privacyBasicParamsProvider4 == null || (strI = privacyBasicParamsProvider4.i()) == null) {
            strI = "";
        }
        linkedHashMap.put(strE5, strI);
        String strE6 = aVar.e("_screenDpi", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider5 = this.f2384g;
        if (privacyBasicParamsProvider5 == null || (string = Float.valueOf(privacyBasicParamsProvider5.q()).toString()) == null) {
            string = "";
        }
        linkedHashMap.put(strE6, string);
        String strE7 = aVar.e("_screenWidth", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider6 = this.f2384g;
        if (privacyBasicParamsProvider6 == null || (string2 = Integer.valueOf(privacyBasicParamsProvider6.l()).toString()) == null) {
            string2 = "";
        }
        linkedHashMap.put(strE7, string2);
        String strE8 = aVar.e("_screenHeight", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider7 = this.f2384g;
        if (privacyBasicParamsProvider7 == null || (string3 = Integer.valueOf(privacyBasicParamsProvider7.f()).toString()) == null) {
            string3 = "";
        }
        linkedHashMap.put(strE8, string3);
        String strE9 = aVar.e("_firstTime", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider8 = this.f2384g;
        if (privacyBasicParamsProvider8 == null || (strE = privacyBasicParamsProvider8.e()) == null) {
            strE = "";
        }
        linkedHashMap.put(strE9, strE);
        String strE10 = aVar.e("_apiLevel", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider9 = this.f2384g;
        linkedHashMap.put(strE10, String.valueOf(privacyBasicParamsProvider9 == null ? null : Integer.valueOf(privacyBasicParamsProvider9.getApiLevel())));
        String strE11 = aVar.e("_rV", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider10 = this.f2384g;
        if (privacyBasicParamsProvider10 == null || (strD = privacyBasicParamsProvider10.d()) == null) {
            strD = "";
        }
        linkedHashMap.put(strE11, strD);
        String strE12 = aVar.e("_rN", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider11 = this.f2384g;
        if (privacyBasicParamsProvider11 == null || (strA = privacyBasicParamsProvider11.a()) == null) {
            strA = "";
        }
        linkedHashMap.put(strE12, strA);
        String strE13 = aVar.e("_br", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider12 = this.f2384g;
        if (privacyBasicParamsProvider12 == null || (strJ = privacyBasicParamsProvider12.j()) == null) {
            strJ = "";
        }
        linkedHashMap.put(strE13, strJ);
        String strE14 = aVar.e("_md", z);
        PrivacyBasicParamsProvider privacyBasicParamsProvider13 = this.f2384g;
        if (privacyBasicParamsProvider13 == null || (strO = privacyBasicParamsProvider13.o()) == null) {
            strO = "";
        }
        linkedHashMap.put(strE14, strO);
        PrivacyBasicParamsProvider privacyBasicParamsProvider14 = this.f2384g;
        String strP = privacyBasicParamsProvider14 == null ? null : privacyBasicParamsProvider14.p();
        if (!(strP == null || kotlin.text.t.r(strP))) {
            linkedHashMap.put(aVar.e("_oaid", z), strP);
        }
        PrivacyBasicParamsProvider privacyBasicParamsProvider15 = this.f2384g;
        long jN = privacyBasicParamsProvider15 == null ? 0L : privacyBasicParamsProvider15.n();
        if (jN != 0) {
            linkedHashMap.put(aVar.e("_it", z), p0.f(new Date(jN)));
        }
        PrivacyBasicParamsProvider privacyBasicParamsProvider16 = this.f2384g;
        long jK = privacyBasicParamsProvider16 == null ? 0L : privacyBasicParamsProvider16.k();
        if (jK != 0) {
            linkedHashMap.put(aVar.e("_ut", z), p0.f(new Date(jK)));
        }
        PrivacyBasicParamsProvider privacyBasicParamsProvider17 = this.f2384g;
        w wVarG = privacyBasicParamsProvider17 == null ? null : privacyBasicParamsProvider17.g();
        if (wVarG != null) {
            linkedHashMap.put(aVar.e("_userCity", z), CityNameCodeMapping.b(wVarG.h()));
        }
        PrivacyBasicParamsProvider privacyBasicParamsProvider18 = this.f2384g;
        c cVarB = privacyBasicParamsProvider18 != null ? privacyBasicParamsProvider18.b(true) : null;
        if (cVarB != null) {
            linkedHashMap.put(aVar.e("_gpsType", z), "gcj");
            String strE15 = aVar.e("_cityName", z);
            String strC2 = cVarB.c();
            if (strC2 == null) {
                strC2 = "";
            }
            linkedHashMap.put(strE15, strC2);
            String strB = cVarB.b();
            if (strB != null && !kotlin.text.t.p(BuildConfig.COMMON_MODULE_COMMIT_ID, strB, true)) {
                str = strB;
            }
            linkedHashMap.put(aVar.e("_cityCode", z), str);
            linkedHashMap.put(aVar.e("_gpsCity", z), str);
            linkedHashMap.put(aVar.e("_longitude", z), String.valueOf(cVarB.f()));
            linkedHashMap.put(aVar.e("_latitude", z), String.valueOf(cVarB.e()));
        }
        return m(linkedHashMap);
    }

    private final Map<String, String> g() {
        String strD;
        String strK;
        String strC;
        String strM;
        String strJ;
        String strA;
        String strL;
        String strF;
        String strI;
        String strE;
        String packageName;
        String strN;
        String strH;
        String strB;
        String strG;
        if (this.f2383f == null) {
            this.f2383f = DefaultSafeBasicParamsProvider.f2392a;
        }
        if (this.f2385h == null) {
            this.f2385h = DefaultPrivacyAgreementSettingProvider.f2390a;
        }
        HashMap map = new HashMap();
        SafeBasicParamsProvider safeBasicParamsProvider = this.f2383f;
        String str = "android";
        if (safeBasicParamsProvider != null && (strG = safeBasicParamsProvider.g()) != null) {
            str = strG;
        }
        map.put("_platform", str);
        SafeBasicParamsProvider safeBasicParamsProvider2 = this.f2383f;
        String str2 = "";
        if (safeBasicParamsProvider2 == null || (strD = safeBasicParamsProvider2.d()) == null) {
            strD = "";
        }
        map.put("_appName", strD);
        SafeBasicParamsProvider safeBasicParamsProvider3 = this.f2383f;
        if (safeBasicParamsProvider3 == null || (strK = safeBasicParamsProvider3.k()) == null) {
            strK = "";
        }
        map.put("_product", strK);
        SafeBasicParamsProvider safeBasicParamsProvider4 = this.f2383f;
        if (safeBasicParamsProvider4 == null || (strC = safeBasicParamsProvider4.c()) == null) {
            strC = "";
        }
        map.put("_productCategory", strC);
        PrivacyAgreementSettingProvider privacyAgreementSettingProvider = this.f2385h;
        boolean z = false;
        if (privacyAgreementSettingProvider != null && privacyAgreementSettingProvider.a()) {
            z = true;
        }
        if (!z) {
            return m(map);
        }
        SafeBasicParamsProvider safeBasicParamsProvider5 = this.f2383f;
        if (safeBasicParamsProvider5 == null || (strM = safeBasicParamsProvider5.m()) == null) {
            strM = "";
        }
        map.put("_vendor", strM);
        SafeBasicParamsProvider safeBasicParamsProvider6 = this.f2383f;
        if (safeBasicParamsProvider6 == null || (strJ = safeBasicParamsProvider6.j()) == null) {
            strJ = "";
        }
        map.put("_renyuan", strJ);
        SafeBasicParamsProvider safeBasicParamsProvider7 = this.f2383f;
        if (safeBasicParamsProvider7 == null || (strA = safeBasicParamsProvider7.a()) == null) {
            strA = "";
        }
        map.put("_version", strA);
        SafeBasicParamsProvider safeBasicParamsProvider8 = this.f2383f;
        if (safeBasicParamsProvider8 == null || (strL = safeBasicParamsProvider8.l()) == null) {
            strL = "";
        }
        map.put("_system", strL);
        SafeBasicParamsProvider safeBasicParamsProvider9 = this.f2383f;
        if (safeBasicParamsProvider9 == null || (strF = safeBasicParamsProvider9.f()) == null) {
            strF = "";
        }
        map.put("_manufacturer", strF);
        SafeBasicParamsProvider safeBasicParamsProvider10 = this.f2383f;
        if (safeBasicParamsProvider10 == null || (strI = safeBasicParamsProvider10.i()) == null) {
            strI = "";
        }
        map.put("_systemVersion", strI);
        SafeBasicParamsProvider safeBasicParamsProvider11 = this.f2383f;
        if (safeBasicParamsProvider11 == null || (strE = safeBasicParamsProvider11.e()) == null) {
            strE = "";
        }
        map.put("_operator", strE);
        SafeBasicParamsProvider safeBasicParamsProvider12 = this.f2383f;
        if (safeBasicParamsProvider12 == null || (packageName = safeBasicParamsProvider12.getPackageName()) == null) {
            packageName = "";
        }
        map.put("_pkgName", packageName);
        SafeBasicParamsProvider safeBasicParamsProvider13 = this.f2383f;
        if (safeBasicParamsProvider13 == null || (strN = safeBasicParamsProvider13.n()) == null) {
            strN = "";
        }
        map.put("_network", strN);
        SafeBasicParamsProvider safeBasicParamsProvider14 = this.f2383f;
        if (safeBasicParamsProvider14 == null || (strH = safeBasicParamsProvider14.h()) == null) {
            strH = "";
        }
        map.put("_launch", strH);
        SafeBasicParamsProvider safeBasicParamsProvider15 = this.f2383f;
        if (safeBasicParamsProvider15 != null && (strB = safeBasicParamsProvider15.b()) != null) {
            str2 = strB;
        }
        map.put("_clv", str2);
        return m(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BasicParamsBuilder l(BasicParamsBuilder basicParamsBuilder, Map map, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            map = null;
        }
        basicParamsBuilder.k(map);
        return basicParamsBuilder;
    }

    private final Map<String, String> m(Map<String, String> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null && value != null) {
                map2.put(key, value);
            }
        }
        return map2;
    }

    public final BasicParamsBuilder c(Map<String, String> highPriorityBasicParams) {
        r.e(highPriorityBasicParams, "highPriorityBasicParams");
        this.b.putAll(highPriorityBasicParams);
        return this;
    }

    public final Map<String, String> d() {
        Map<String, String> mapT = o0.t(o0.n(g(), f(false)));
        mapT.putAll(this.b);
        return i.c(mapT, this.f2382e, this.c, this.f2381d, this.f2380a);
    }

    public final BasicParamsBuilder h() {
        this.f2382e = false;
        this.c = false;
        this.f2381d = false;
        this.f2380a = null;
        return this;
    }

    public final BasicParamsBuilder i() {
        this.f2382e = true;
        this.c = false;
        this.f2381d = false;
        this.f2380a = null;
        return this;
    }

    public final BasicParamsBuilder j() {
        l(this, null, 1, null);
        return this;
    }

    public final BasicParamsBuilder k(Map<String, String> map) {
        this.f2382e = true;
        this.f2381d = true;
        this.c = true;
        this.f2380a = map;
        return this;
    }
}
