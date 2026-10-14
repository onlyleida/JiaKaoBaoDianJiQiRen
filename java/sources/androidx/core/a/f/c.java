package androidx.core.a.f;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.opencv.videoio.Videoio;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    public interface a {
    }

    public static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final C0022c[] f933a;

        public b(C0022c[] c0022cArr) {
            this.f933a = c0022cArr;
        }

        public C0022c[] a() {
            return this.f933a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.a.f.c$c, reason: collision with other inner class name */
    public static final class C0022c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f934a;
        private int b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f935d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f936e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f937f;

        public C0022c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f934a = str;
            this.b = i;
            this.c = z;
            this.f935d = str2;
            this.f936e = i2;
            this.f937f = i3;
        }

        public String a() {
            return this.f934a;
        }

        public int b() {
            return this.f937f;
        }

        public int c() {
            return this.f936e;
        }

        public String d() {
            return this.f935d;
        }

        public int e() {
            return this.b;
        }

        public boolean f() {
            return this.c;
        }
    }

    public static final class d implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.core.d.d f938a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f939d;

        public d(androidx.core.d.d dVar, int i, int i2, String str) {
            this.f938a = dVar;
            this.c = i;
            this.b = i2;
            this.f939d = str;
        }

        public int a() {
            return this.c;
        }

        public androidx.core.d.d b() {
            return this.f938a;
        }

        public String c() {
            return this.f939d;
        }

        public int d() {
            return this.b;
        }
    }

    private static int a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    public static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static a d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static a e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string4 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            return new d(new androidx.core.d.d(string, string2, string3, c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((C0022c[]) arrayList.toArray(new C0022c[arrayList.size()]));
    }

    private static C0022c f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamilyFont);
        int i = R.styleable.FontFamilyFont_fontWeight;
        if (!typedArrayObtainAttributes.hasValue(i)) {
            i = R.styleable.FontFamilyFont_android_fontWeight;
        }
        int i2 = typedArrayObtainAttributes.getInt(i, Videoio.CAP_PROP_XI_DOWNSAMPLING);
        int i3 = R.styleable.FontFamilyFont_fontStyle;
        if (!typedArrayObtainAttributes.hasValue(i3)) {
            i3 = R.styleable.FontFamilyFont_android_fontStyle;
        }
        boolean z = 1 == typedArrayObtainAttributes.getInt(i3, 0);
        int i4 = R.styleable.FontFamilyFont_ttcIndex;
        if (!typedArrayObtainAttributes.hasValue(i4)) {
            i4 = R.styleable.FontFamilyFont_android_ttcIndex;
        }
        int i5 = R.styleable.FontFamilyFont_fontVariationSettings;
        if (!typedArrayObtainAttributes.hasValue(i5)) {
            i5 = R.styleable.FontFamilyFont_android_fontVariationSettings;
        }
        String string = typedArrayObtainAttributes.getString(i5);
        int i6 = typedArrayObtainAttributes.getInt(i4, 0);
        int i7 = R.styleable.FontFamilyFont_font;
        if (!typedArrayObtainAttributes.hasValue(i7)) {
            i7 = R.styleable.FontFamilyFont_android_font;
        }
        int resourceId = typedArrayObtainAttributes.getResourceId(i7, 0);
        String string2 = typedArrayObtainAttributes.getString(i7);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new C0022c(string2, i2, z, string, i6, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    private static List<byte[]> h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
