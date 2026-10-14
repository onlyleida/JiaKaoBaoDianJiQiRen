package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f853a;
    c b;
    int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f854d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SparseArray<a> f855e = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SparseArray<c> f856f = new SparseArray<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f857g;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f858a;
        ArrayList<C0017b> b = new ArrayList<>();
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f859d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.f858a = typedArrayObtainStyledAttributes.getResourceId(index, this.f858a);
                } else if (index == R.styleable.State_constraints) {
                    this.c = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    context.getResources().getResourceName(this.c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f859d = cVar;
                        cVar.l(context, this.c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(C0017b c0017b) {
            this.b.add(c0017b);
        }

        public int b(float f2, float f3) {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a(f2, f3)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.b$b, reason: collision with other inner class name */
    static class C0017b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f860a;
        float b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f861d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f862e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c f863f;

        public C0017b(Context context, XmlPullParser xmlPullParser) {
            this.f860a = Float.NaN;
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.f861d = Float.NaN;
            this.f862e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.Variant_constraints) {
                    this.f862e = typedArrayObtainStyledAttributes.getResourceId(index, this.f862e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f862e);
                    context.getResources().getResourceName(this.f862e);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f863f = cVar;
                        cVar.l(context, this.f862e);
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.f861d = typedArrayObtainStyledAttributes.getDimension(index, this.f861d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.b = typedArrayObtainStyledAttributes.getDimension(index, this.b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f860a = typedArrayObtainStyledAttributes.getDimension(index, this.f860a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f2, float f3) {
            if (!Float.isNaN(this.f860a) && f2 < this.f860a) {
                return false;
            }
            if (!Float.isNaN(this.b) && f3 < this.b) {
                return false;
            }
            if (Float.isNaN(this.c) || f2 <= this.c) {
                return Float.isNaN(this.f861d) || f3 <= this.f861d;
            }
            return false;
        }
    }

    b(Context context, ConstraintLayout constraintLayout, int i) {
        this.f853a = constraintLayout;
        a(context, i);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                byte b = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                b = -1;
                            } else {
                                b = 4;
                            }
                            break;
                        case 80204913:
                            if (!name.equals("State")) {
                                b = -1;
                            } else {
                                b = 2;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b = -1;
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                b = -1;
                            } else {
                                b = 0;
                            }
                            break;
                        case 1901439077:
                            if (!name.equals("Variant")) {
                                b = -1;
                            } else {
                                b = 3;
                            }
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    if (b == 2) {
                        aVar = new a(context, xml);
                        this.f855e.put(aVar.f858a, aVar);
                    } else if (b == 3) {
                        C0017b c0017b = new C0017b(context, xml);
                        if (aVar != null) {
                            aVar.a(c0017b);
                        }
                    } else if (b == 4) {
                        b(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        c cVar = new c();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (attributeName != null && attributeValue != null && TtmlNode.ATTR_ID.equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), TtmlNode.ATTR_ID, context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                cVar.u(context, xmlPullParser);
                this.f856f.put(identifier, cVar);
                return;
            }
        }
    }

    public void c(e eVar) {
    }

    public void d(int i, float f2, float f3) {
        int iB;
        int i2 = this.c;
        if (i2 == i) {
            a aVarValueAt = i == -1 ? this.f855e.valueAt(0) : this.f855e.get(i2);
            int i3 = this.f854d;
            if ((i3 == -1 || !aVarValueAt.b.get(i3).a(f2, f3)) && this.f854d != (iB = aVarValueAt.b(f2, f3))) {
                c cVar = iB == -1 ? this.b : aVarValueAt.b.get(iB).f863f;
                int i4 = iB == -1 ? aVarValueAt.c : aVarValueAt.b.get(iB).f862e;
                if (cVar == null) {
                    return;
                }
                this.f854d = iB;
                e eVar = this.f857g;
                if (eVar != null) {
                    eVar.b(-1, i4);
                }
                cVar.i(this.f853a);
                e eVar2 = this.f857g;
                if (eVar2 != null) {
                    eVar2.a(-1, i4);
                    return;
                }
                return;
            }
            return;
        }
        this.c = i;
        a aVar = this.f855e.get(i);
        int iB2 = aVar.b(f2, f3);
        c cVar2 = iB2 == -1 ? aVar.f859d : aVar.b.get(iB2).f863f;
        int i5 = iB2 == -1 ? aVar.c : aVar.b.get(iB2).f862e;
        if (cVar2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f2 + ", " + f3);
            return;
        }
        this.f854d = iB2;
        e eVar3 = this.f857g;
        if (eVar3 != null) {
            eVar3.b(i, i5);
        }
        cVar2.i(this.f853a);
        e eVar4 = this.f857g;
        if (eVar4 != null) {
            eVar4.a(i, i5);
        }
    }
}
