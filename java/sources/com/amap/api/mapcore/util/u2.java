package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.Tile;
import com.amap.api.maps.model.TileProvider;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class u2 implements TileProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11222a;
    private final int b;
    private MapConfig c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Random f11223d = new Random();

    class a extends r2 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f11224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f11226f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f11227g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f11228h;

        public a(int i, int i2, int i3, String str) {
            this.f11228h = "";
            this.f11224d = i;
            this.f11225e = i2;
            this.f11226f = i3;
            this.f11227g = str;
            this.f11228h = g();
            setProxy(l5.c(ea.f10754f));
            setConnectionTimeout(5000);
            setSoTimeout(50000);
        }

        private String a(String str) {
            String[] strArrSplit = str.split("&");
            Arrays.sort(strArrSplit);
            StringBuffer stringBuffer = new StringBuffer();
            for (String str2 : strArrSplit) {
                stringBuffer.append(f(str2));
                stringBuffer.append("&");
            }
            String string = stringBuffer.toString();
            return string.length() > 1 ? (String) string.subSequence(0, string.length() - 1) : str;
        }

        private String e() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=");
            stringBuffer.append(c5.j(ea.f10754f));
            stringBuffer.append("&channel=amapapi");
            if (k3.b(this.f11224d, this.f11225e, this.f11226f) || this.f11226f < 6) {
                stringBuffer.append("&z=");
                stringBuffer.append(this.f11226f);
                stringBuffer.append("&x=");
                stringBuffer.append(this.f11224d);
                stringBuffer.append("&y=");
                stringBuffer.append(this.f11225e);
                stringBuffer.append("&lang=en&size=1&scale=1&style=7");
            } else if (MapsInitializer.isLoadWorldGridMap()) {
                stringBuffer.append("&x=");
                stringBuffer.append(this.f11224d);
                stringBuffer.append("&y=");
                stringBuffer.append(this.f11225e);
                stringBuffer.append("&z=");
                stringBuffer.append(this.f11226f);
                stringBuffer.append("&ds=0");
                stringBuffer.append("&dpitype=webrd");
                stringBuffer.append("&lang=");
                stringBuffer.append(this.f11227g);
                stringBuffer.append("&scale=2");
            }
            String string = stringBuffer.toString();
            String strA = a(string);
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(string);
            String strA2 = f5.a();
            stringBuffer2.append("&ts=" + strA2);
            stringBuffer2.append("&scode=" + f5.d(ea.f10754f, strA2, strA));
            return stringBuffer2.toString();
        }

        private String f(String str) {
            if (str == null) {
                return str;
            }
            try {
                return URLDecoder.decode(str, "utf-8");
            } catch (UnsupportedEncodingException e2) {
                e6.r(e2, "AbstractProtocalHandler", "strReEncoder");
                return "";
            } catch (Exception e3) {
                e6.r(e3, "AbstractProtocalHandler", "strReEncoderException");
                return "";
            }
        }

        private String g() {
            if (k3.b(this.f11224d, this.f11225e, this.f11226f) || this.f11226f < 6) {
                return String.format(Locale.US, "http://wprd0%d.is.autonavi.com/appmaptile?", Integer.valueOf((u2.this.f11223d.nextInt(100000) % 4) + 1));
            }
            if (MapsInitializer.isLoadWorldGridMap()) {
                return "http://restapi.amap.com/v4/gridmap?";
            }
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getIPV6URL() {
            return getURL();
        }

        @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
        public Map<String, String> getParams() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public Map<String, String> getRequestHead() {
            Hashtable hashtable = new Hashtable(16);
            hashtable.put(HttpHeaders.USER_AGENT, x9.c);
            hashtable.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
            hashtable.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", "7.4.0", "3dmap"));
            hashtable.put("x-INFO", f5.b(ea.f10754f));
            hashtable.put("key", c5.j(ea.f10754f));
            hashtable.put("logversion", "2.1");
            return hashtable;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getURL() {
            if (TextUtils.isEmpty(this.f11228h)) {
                return null;
            }
            return this.f11228h + e();
        }

        @Override // com.amap.api.mapcore.util.k7
        public boolean isSupportIPV6() {
            return false;
        }
    }

    public u2(int i, int i2, MapConfig mapConfig) {
        this.f11222a = i;
        this.b = i2;
        this.c = mapConfig;
    }

    private byte[] a(int i, int i2, int i3, String str) throws IOException {
        try {
            return new a(i, i2, i3, str).makeHttpRequest();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.amap.api.maps.model.TileProvider
    public final Tile getTile(int i, int i2, int i3) {
        try {
            MapConfig mapConfig = this.c;
            byte[] bArrA = a(i, i2, i3, mapConfig != null ? mapConfig.getMapLanguage() : "zh_cn");
            return bArrA == null ? TileProvider.NO_TILE : Tile.obtain(this.f11222a, this.b, bArrA);
        } catch (IOException unused) {
            return TileProvider.NO_TILE;
        }
    }

    @Override // com.amap.api.maps.model.TileProvider
    public int getTileHeight() {
        return this.b;
    }

    @Override // com.amap.api.maps.model.TileProvider
    public int getTileWidth() {
        return this.f11222a;
    }
}
