package org.libpag;

import android.content.res.AssetManager;
import android.util.Xml;
import com.mobile.auth.gatewayauth.Constant;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.opencv.videoio.Videoio;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public class PAGFont {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f16260a = {"/system/fonts/NotoSansCJK-Regular.ttc", "/system/fonts/NotoSansSC-Regular.otf", "/system/fonts/DroidSansFallback.ttf"};
    private static final Pattern b = Pattern.compile("^[ \\n\\r\\t]+|[ \\n\\r\\t]+$");
    private static boolean c = false;
    public String fontFamily;
    public String fontStyle;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f16261a;
        String b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f16262d;

        private a() {
            this.f16261a = "";
            this.b = "";
            this.c = 0;
            this.f16262d = Videoio.CAP_PROP_XI_DOWNSAMPLING;
        }
    }

    static {
        org.extra.tools.a.a("pag");
    }

    public PAGFont() {
        this.fontFamily = "";
        this.fontStyle = "";
    }

    private static void RegisterFallbackFonts() {
        if (c) {
            return;
        }
        c = true;
        int i = 0;
        a[] aVarArrA = new a[0];
        if (new File("/system/etc/fonts.xml").exists()) {
            try {
                aVarArrA = b();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            try {
                aVarArrA = a();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        a aVarA = a(aVarArrA, "zh-Hans");
        if (aVarA != null) {
            a(aVarA, arrayList, arrayList2);
        }
        for (String str : f16260a) {
            a aVar = new a();
            aVar.b = str;
            a(aVar, arrayList, arrayList2);
        }
        for (a aVar2 : aVarArrA) {
            a(aVar2, arrayList, arrayList2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        int[] iArr = new int[arrayList2.size()];
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        SetFallbackFontPaths(strArr, iArr);
    }

    public static native PAGFont RegisterFont(AssetManager assetManager, String str, int i, String str2, String str3);

    public static PAGFont RegisterFont(String str) {
        return RegisterFont(str, 0);
    }

    public static native PAGFont RegisterFont(String str, int i, String str2, String str3);

    private static native PAGFont RegisterFontBytes(byte[] bArr, int i, int i2, String str, String str2);

    private static native void SetFallbackFontPaths(String[] strArr, int[] iArr);

    private static native void UnregisterFont(String str, String str2);

    public static void UnregisterFont(PAGFont pAGFont) {
        UnregisterFont(pAGFont.fontFamily, pAGFont.fontStyle);
    }

    private static a[] a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        xmlPullParser.require(2, null, "familyset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("family")) {
                    a(xmlPullParser, (ArrayList<a>) arrayList);
                } else {
                    d(xmlPullParser);
                }
            }
        }
        a[] aVarArr = new a[arrayList.size()];
        arrayList.toArray(aVarArr);
        return aVarArr;
    }

    private static a[] b() throws IOException {
        a[] aVarArr = new a[0];
        try {
            FileInputStream fileInputStream = new FileInputStream("/system/etc/fonts.xml");
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setInput(fileInputStream, null);
                xmlPullParserNewPullParser.nextTag();
                return a(xmlPullParserNewPullParser);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return aVarArr;
        }
    }

    private static a c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        a aVar = new a();
        String attributeValue = xmlPullParser.getAttributeValue(null, "index");
        aVar.c = attributeValue == null ? 0 : Integer.parseInt(attributeValue);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "weight");
        aVar.f16262d = attributeValue2 == null ? Videoio.CAP_PROP_XI_DOWNSAMPLING : Integer.parseInt(attributeValue2);
        StringBuilder sb = new StringBuilder();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 4) {
                sb.append(xmlPullParser.getText());
            }
            if (xmlPullParser.getEventType() == 2) {
                d(xmlPullParser);
            }
        }
        aVar.b = "/system/fonts/" + b.matcher(sb).replaceAll("");
        return aVar;
    }

    private static void d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static PAGFont RegisterFont(AssetManager assetManager, String str) {
        return RegisterFont(assetManager, str, 0);
    }

    public static PAGFont RegisterFont(AssetManager assetManager, String str, int i) {
        return RegisterFont(assetManager, str, i, "", "");
    }

    public PAGFont(String str, String str2) {
        this.fontFamily = "";
        this.fontStyle = "";
        this.fontFamily = str;
        this.fontStyle = str2;
    }

    public static PAGFont RegisterFont(String str, int i) {
        return RegisterFont(str, i, "", "");
    }

    private static a[] b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        xmlPullParser.require(2, null, "familyset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("family")) {
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("fileset")) {
                                b(xmlPullParser, arrayList);
                            } else {
                                d(xmlPullParser);
                            }
                        }
                    }
                } else {
                    d(xmlPullParser);
                }
            }
        }
        a[] aVarArr = new a[arrayList.size()];
        arrayList.toArray(aVarArr);
        return aVarArr;
    }

    private static void a(XmlPullParser xmlPullParser, ArrayList<a> arrayList) throws XmlPullParserException, IOException {
        a aVar = null;
        xmlPullParser.getAttributeValue(null, Constant.PROTOCOL_WEBVIEW_NAME);
        String attributeValue = xmlPullParser.getAttributeValue(null, "lang");
        ArrayList<a> arrayList2 = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList2.add(c(xmlPullParser));
                } else {
                    d(xmlPullParser);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        for (a aVar2 : arrayList2) {
            if (aVar2.f16262d == 400) {
                aVar = aVar2;
                break;
            }
        }
        if (aVar == null) {
            aVar = (a) arrayList2.get(0);
        }
        if (aVar.b.isEmpty()) {
            return;
        }
        if (attributeValue == null) {
            attributeValue = "";
        }
        aVar.f16261a = attributeValue;
        arrayList.add(aVar);
    }

    private static void b(XmlPullParser xmlPullParser, ArrayList<a> arrayList) throws XmlPullParserException, IOException {
        ArrayList<a> arrayList2 = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("file")) {
                    arrayList2.add(c(xmlPullParser));
                } else {
                    d(xmlPullParser);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        a aVar = null;
        for (a aVar2 : arrayList2) {
            if (aVar2.f16262d == 400) {
                aVar = aVar2;
                break;
            }
        }
        if (aVar == null) {
            aVar = (a) arrayList2.get(0);
        }
        if (aVar.b.isEmpty()) {
            return;
        }
        arrayList.add(aVar);
    }

    private static a[] a() throws IOException {
        a[] aVarArr = new a[0];
        try {
            FileInputStream fileInputStream = new FileInputStream("/system/etc/fallback_fonts.xml");
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setInput(fileInputStream, null);
                xmlPullParserNewPullParser.nextTag();
                return b(xmlPullParserNewPullParser);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return aVarArr;
        }
    }

    private static a a(a[] aVarArr, String str) {
        String lowerCase = str.toLowerCase();
        for (a aVar : aVarArr) {
            if (aVar.f16261a.toLowerCase().equals(lowerCase)) {
                return aVar;
            }
        }
        return null;
    }

    private static void a(a aVar, ArrayList<String> arrayList, ArrayList<Integer> arrayList2) {
        if (!arrayList.contains(aVar.b) && new File(aVar.b).exists()) {
            arrayList.add(aVar.b);
            arrayList2.add(Integer.valueOf(aVar.c));
        }
    }
}
