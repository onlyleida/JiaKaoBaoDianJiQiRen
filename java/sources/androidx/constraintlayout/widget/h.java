package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f906a = -1;
    int b = -1;
    int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SparseArray<a> f907d = new SparseArray<>();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f908a;
        ArrayList<b> b = new ArrayList<>();
        int c;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.f908a = typedArrayObtainStyledAttributes.getResourceId(index, this.f908a);
                } else if (index == R.styleable.State_constraints) {
                    this.c = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    context.getResources().getResourceName(this.c);
                    TtmlNode.TAG_LAYOUT.equals(resourceTypeName);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.b.add(bVar);
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

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f909a;
        float b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f910d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f911e;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f909a = Float.NaN;
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.f910d = Float.NaN;
            this.f911e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.Variant_constraints) {
                    this.f911e = typedArrayObtainStyledAttributes.getResourceId(index, this.f911e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f911e);
                    context.getResources().getResourceName(this.f911e);
                    TtmlNode.TAG_LAYOUT.equals(resourceTypeName);
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.f910d = typedArrayObtainStyledAttributes.getDimension(index, this.f910d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.b = typedArrayObtainStyledAttributes.getDimension(index, this.b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f909a = typedArrayObtainStyledAttributes.getDimension(index, this.f909a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f2, float f3) {
            if (!Float.isNaN(this.f909a) && f2 < this.f909a) {
                return false;
            }
            if (!Float.isNaN(this.b) && f3 < this.b) {
                return false;
            }
            if (Float.isNaN(this.c) || f2 <= this.c) {
                return Float.isNaN(this.f910d) || f3 <= this.f910d;
            }
            return false;
        }
    }

    public h(Context context, XmlPullParser xmlPullParser) {
        new SparseArray();
        b(context, xmlPullParser);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0078  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void b(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.StateSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.StateSet_defaultState) {
                this.f906a = typedArrayObtainStyledAttributes.getResourceId(index, this.f906a);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (true) {
                byte b2 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                b2 = 2;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                b2 = 0;
                            } else {
                                b2 = -1;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b2 = -1;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                b2 = 3;
                            } else {
                                b2 = -1;
                            }
                            break;
                        default:
                            b2 = -1;
                            break;
                    }
                    if (b2 == 2) {
                        aVar = new a(context, xmlPullParser);
                        this.f907d.put(aVar.f908a, aVar);
                    } else if (b2 == 3) {
                        b bVar = new b(context, xmlPullParser);
                        if (aVar != null) {
                            aVar.a(bVar);
                        }
                    }
                } else if (eventType == 3 && "StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    public int a(int i, int i2, float f2, float f3) {
        a aVar = this.f907d.get(i2);
        if (aVar == null) {
            return i2;
        }
        if (f2 == -1.0f || f3 == -1.0f) {
            if (aVar.c == i) {
                return i;
            }
            Iterator<b> it = aVar.b.iterator();
            while (it.hasNext()) {
                if (i == it.next().f911e) {
                    return i;
                }
            }
            return aVar.c;
        }
        b bVar = null;
        for (b bVar2 : aVar.b) {
            if (bVar2.a(f2, f3)) {
                if (i == bVar2.f911e) {
                    return i;
                }
                bVar = bVar2;
            }
        }
        return bVar != null ? bVar.f911e : aVar.c;
    }

    public int c(int i, int i2, int i3) {
        return d(-1, i, i2, i3);
    }

    public int d(int i, int i2, float f2, float f3) {
        int iB;
        if (i != i2) {
            a aVar = this.f907d.get(i2);
            if (aVar == null) {
                return -1;
            }
            int iB2 = aVar.b(f2, f3);
            return iB2 == -1 ? aVar.c : aVar.b.get(iB2).f911e;
        }
        a aVarValueAt = i2 == -1 ? this.f907d.valueAt(0) : this.f907d.get(this.b);
        if (aVarValueAt == null) {
            return -1;
        }
        if ((this.c == -1 || !aVarValueAt.b.get(i).a(f2, f3)) && i != (iB = aVarValueAt.b(f2, f3))) {
            return iB == -1 ? aVarValueAt.c : aVarValueAt.b.get(iB).f911e;
        }
        return i;
    }
}
