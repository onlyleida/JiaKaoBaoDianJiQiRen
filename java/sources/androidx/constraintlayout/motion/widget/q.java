package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MotionLayout f789a;
    private MotionEvent n;
    private MotionLayout.h q;
    private boolean r;
    final t s;
    float t;
    float u;
    androidx.constraintlayout.widget.h b = null;
    b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f790d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<b> f791e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f792f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<b> f793g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray<androidx.constraintlayout.widget.c> f794h = new SparseArray<>();
    private HashMap<String, Integer> i = new HashMap<>();
    private SparseIntArray j = new SparseIntArray();
    private boolean k = false;
    private int l = Videoio.CAP_PROP_XI_DOWNSAMPLING;
    private int m = 0;
    private boolean o = false;
    private boolean p = false;

    class a implements Interpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.constraintlayout.core.motion.a.c f795a;

        a(q qVar, androidx.constraintlayout.core.motion.a.c cVar) {
            this.f795a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return (float) this.f795a.a(f2);
        }
    }

    q(Context context, MotionLayout motionLayout, int i) {
        this.f789a = motionLayout;
        this.s = new t(motionLayout);
        G(context, i);
        SparseArray<androidx.constraintlayout.widget.c> sparseArray = this.f794h;
        int i2 = R.id.motion_base;
        sparseArray.put(i2, new androidx.constraintlayout.widget.c());
        this.i.put("motion_base", Integer.valueOf(i2));
    }

    private boolean E(int i) {
        int i2 = this.j.get(i);
        int size = this.j.size();
        while (i2 > 0) {
            if (i2 == i) {
                return true;
            }
            int i3 = size - 1;
            if (size < 0) {
                return true;
            }
            i2 = this.j.get(i2);
            size = i3;
        }
        return false;
    }

    private boolean F() {
        return this.q != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    private void G(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        b bVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    if (this.k) {
                        System.out.println("parsing = " + name);
                    }
                    switch (name) {
                        case "MotionScene":
                            K(context, xml);
                            break;
                        case "Transition":
                            ArrayList<b> arrayList = this.f791e;
                            b bVar2 = new b(this, context, xml);
                            arrayList.add(bVar2);
                            if (this.c == null && !bVar2.b) {
                                this.c = bVar2;
                                if (bVar2.l != null) {
                                    this.c.l.w(this.r);
                                }
                            }
                            if (bVar2.b) {
                                if (bVar2.c == -1) {
                                    this.f792f = bVar2;
                                } else {
                                    this.f793g.add(bVar2);
                                }
                                this.f791e.remove(bVar2);
                            }
                            bVar = bVar2;
                            break;
                        case "OnSwipe":
                            if (bVar == null) {
                                Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(i) + ".xml:" + xml.getLineNumber() + ")");
                            }
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.l = new r(context, this.f789a, xml);
                                break;
                            }
                            break;
                        case "OnClick":
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.r(context, xml);
                                break;
                            }
                            break;
                        case "StateSet":
                            this.b = new androidx.constraintlayout.widget.h(context, xml);
                            break;
                        case "ConstraintSet":
                            H(context, xml);
                            break;
                        case "include":
                        case "Include":
                            J(context, xml);
                            break;
                        case "KeyFrameSet":
                            g gVar = new g(context, xml);
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.k.add(gVar);
                                break;
                            }
                            break;
                        case "ViewTransition":
                            this.s.a(new s(context, xml));
                            break;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0040  */
    private int H(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
        cVar.H(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = 0;
        int iP = -1;
        int iP2 = -1;
        while (true) {
            if (i >= attributeCount) {
                if (iP != -1) {
                    if (this.f789a.w != 0) {
                        cVar.I(true);
                    }
                    cVar.u(context, xmlPullParser);
                    if (iP2 != -1) {
                        this.j.put(iP, iP2);
                    }
                    this.f794h.put(iP, cVar);
                }
                return iP;
            }
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (this.k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    iP2 = p(context, attributeValue);
                    break;
                case "constraintRotate":
                    Integer.parseInt(attributeValue);
                    break;
                case "id":
                    iP = p(context, attributeValue);
                    this.i.put(W(attributeValue), Integer.valueOf(iP));
                    cVar.f867a = androidx.constraintlayout.motion.widget.a.b(context, iP);
                    break;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return H(context, xml);
                }
            }
            return -1;
        } catch (IOException e2) {
            e2.printStackTrace();
            return -1;
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
            return -1;
        }
    }

    private void J(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.include_constraintSet) {
                I(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void K(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.MotionScene_defaultDuration) {
                int i2 = typedArrayObtainStyledAttributes.getInt(index, this.l);
                this.l = i2;
                if (i2 < 8) {
                    this.l = 8;
                }
            } else if (index == R.styleable.MotionScene_layoutDuringTransition) {
                this.m = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void O(int i, MotionLayout motionLayout) {
        androidx.constraintlayout.widget.c cVar = this.f794h.get(i);
        cVar.b = cVar.f867a;
        int i2 = this.j.get(i);
        if (i2 > 0) {
            O(i2, motionLayout);
            androidx.constraintlayout.widget.c cVar2 = this.f794h.get(i2);
            if (cVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + androidx.constraintlayout.motion.widget.a.b(this.f789a.getContext(), i2));
                return;
            }
            cVar.b += "/" + cVar2.b;
            cVar.C(cVar2);
        } else {
            cVar.b += "  layout";
            cVar.B(motionLayout);
        }
        cVar.h(cVar);
    }

    public static String W(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    private int p(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), TtmlNode.ATTR_ID, context.getPackageName());
            if (this.k) {
                System.out.println("id getMap res = " + identifier);
            }
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str != null && str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    private int v(int i) {
        int iC;
        androidx.constraintlayout.widget.h hVar = this.b;
        return (hVar == null || (iC = hVar.c(i, -1, -1)) == -1) ? i : iC;
    }

    float A() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.o();
    }

    int B() {
        b bVar = this.c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f797d;
    }

    public b C(int i) {
        for (b bVar : this.f791e) {
            if (bVar.f796a == i) {
                return bVar;
            }
        }
        return null;
    }

    public List<b> D(int i) {
        int iV = v(i);
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.f791e) {
            if (bVar.f797d == iV || bVar.c == iV) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    void L(float f2, float f3) {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return;
        }
        this.c.l.t(f2, f3);
    }

    void M(float f2, float f3) {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return;
        }
        this.c.l.u(f2, f3);
    }

    void N(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.h hVar;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.q == null) {
            this.q = this.f789a.r();
        }
        this.q.a(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            boolean z = false;
            if (action == 0) {
                this.t = motionEvent.getRawX();
                this.u = motionEvent.getRawY();
                this.n = motionEvent;
                this.o = false;
                if (this.c.l != null) {
                    RectF rectFF = this.c.l.f(this.f789a, rectF);
                    if (rectFF != null && !rectFF.contains(this.n.getX(), this.n.getY())) {
                        this.n = null;
                        this.o = true;
                        return;
                    }
                    RectF rectFP = this.c.l.p(this.f789a, rectF);
                    if (rectFP == null || rectFP.contains(this.n.getX(), this.n.getY())) {
                        this.p = false;
                    } else {
                        this.p = true;
                    }
                    this.c.l.v(this.t, this.u);
                    return;
                }
                return;
            }
            if (action == 2 && !this.o) {
                float rawY = motionEvent.getRawY() - this.u;
                float rawX = motionEvent.getRawX() - this.t;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.n) == null) {
                    return;
                }
                b bVarH = h(i, rawX, rawY, motionEvent2);
                if (bVarH != null) {
                    motionLayout.setTransition(bVarH);
                    RectF rectFP2 = this.c.l.p(this.f789a, rectF);
                    if (rectFP2 != null && !rectFP2.contains(this.n.getX(), this.n.getY())) {
                        z = true;
                    }
                    this.p = z;
                    this.c.l.x(this.t, this.u);
                }
            }
        }
        if (this.o) {
            return;
        }
        b bVar = this.c;
        if (bVar != null && bVar.l != null && !this.p) {
            this.c.l.r(motionEvent, this.q, i, this);
        }
        this.t = motionEvent.getRawX();
        this.u = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (hVar = this.q) == null) {
            return;
        }
        hVar.recycle();
        this.q = null;
        int i2 = motionLayout.f733f;
        if (i2 != -1) {
            g(motionLayout, i2);
        }
    }

    void P(MotionLayout motionLayout) {
        for (int i = 0; i < this.f794h.size(); i++) {
            int iKeyAt = this.f794h.keyAt(i);
            if (E(iKeyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            }
            O(iKeyAt, motionLayout);
        }
    }

    public void Q(int i, androidx.constraintlayout.widget.c cVar) {
        this.f794h.put(i, cVar);
    }

    public void R(int i) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.B(i);
        } else {
            this.l = i;
        }
    }

    public void S(boolean z) {
        this.r = z;
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return;
        }
        this.c.l.w(this.r);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0037  */
    /* JADX WARN: Code duplicated, block: B:40:0x0079  */
    /* JADX WARN: Code duplicated, block: B:45:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0073 A[SYNTHETIC] */
    void T(int i, int i2) {
        int iC;
        int iC2;
        b bVar;
        Iterator<b> it;
        b bVar2;
        b bVar3;
        b next;
        androidx.constraintlayout.widget.h hVar = this.b;
        if (hVar != null) {
            iC = hVar.c(i, -1, -1);
            if (iC == -1) {
                iC = i;
            }
            iC2 = this.b.c(i2, -1, -1);
            if (iC2 == -1) {
            }
            bVar = this.c;
            if (bVar == null && bVar.c == i2 && this.c.f797d == i) {
                return;
            }
            it = this.f791e.iterator();
            while (true) {
                if (it.hasNext()) {
                    bVar2 = this.f792f;
                    for (b bVar4 : this.f793g) {
                        if (bVar4.c == i2) {
                            bVar2 = bVar4;
                        }
                    }
                    bVar3 = new b(this, bVar2);
                    bVar3.f797d = iC;
                    bVar3.c = iC2;
                    if (iC != -1) {
                        this.f791e.add(bVar3);
                    }
                    this.c = bVar3;
                    return;
                }
                next = it.next();
                if ((next.c != iC2 && next.f797d == iC) || (next.c == i2 && next.f797d == i)) {
                    break;
                }
            }
            this.c = next;
            if (next != null || next.l == null) {
            }
            this.c.l.w(this.r);
            return;
        }
        iC = i;
        iC2 = i2;
        bVar = this.c;
        if (bVar == null) {
        }
        it = this.f791e.iterator();
        while (true) {
            if (it.hasNext()) {
                bVar2 = this.f792f;
                while (r3.hasNext()) {
                    if (bVar4.c == i2) {
                        bVar2 = bVar4;
                    }
                }
                bVar3 = new b(this, bVar2);
                bVar3.f797d = iC;
                bVar3.c = iC2;
                if (iC != -1) {
                    this.f791e.add(bVar3);
                }
                this.c = bVar3;
                return;
            }
            next = it.next();
            if (next.c != iC2) {
            }
        }
        this.c = next;
        if (next != null) {
        }
    }

    public void U(b bVar) {
        this.c = bVar;
        if (bVar == null || bVar.l == null) {
            return;
        }
        this.c.l.w(this.r);
    }

    void V() {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return;
        }
        this.c.l.y();
    }

    boolean X() {
        Iterator<b> it = this.f791e.iterator();
        while (it.hasNext()) {
            if (it.next().l != null) {
                return true;
            }
        }
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? false : true;
    }

    public void Y(int i, View... viewArr) {
        this.s.h(i, viewArr);
    }

    public void f(MotionLayout motionLayout, int i) {
        for (b bVar : this.f791e) {
            if (bVar.m.size() > 0) {
                Iterator it = bVar.m.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).c(motionLayout);
                }
            }
        }
        for (b bVar2 : this.f793g) {
            if (bVar2.m.size() > 0) {
                Iterator it2 = bVar2.m.iterator();
                while (it2.hasNext()) {
                    ((b.a) it2.next()).c(motionLayout);
                }
            }
        }
        for (b bVar3 : this.f791e) {
            if (bVar3.m.size() > 0) {
                Iterator it3 = bVar3.m.iterator();
                while (it3.hasNext()) {
                    ((b.a) it3.next()).a(motionLayout, i, bVar3);
                }
            }
        }
        for (b bVar4 : this.f793g) {
            if (bVar4.m.size() > 0) {
                Iterator it4 = bVar4.m.iterator();
                while (it4.hasNext()) {
                    ((b.a) it4.next()).a(motionLayout, i, bVar4);
                }
            }
        }
    }

    boolean g(MotionLayout motionLayout, int i) {
        b bVar;
        if (F() || this.f790d) {
            return false;
        }
        for (b bVar2 : this.f791e) {
            if (bVar2.n != 0 && ((bVar = this.c) != bVar2 || !bVar.A(2))) {
                if (i == bVar2.f797d && (bVar2.n == 4 || bVar2.n == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.n == 4) {
                        motionLayout.y();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.g(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.s();
                    }
                    return true;
                }
                if (i == bVar2.c && (bVar2.n == 3 || bVar2.n == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.n == 3) {
                        motionLayout.z();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(BitmapDescriptorFactory.HUE_RED);
                        motionLayout.g(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.s();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public b h(int i, float f2, float f3, MotionEvent motionEvent) {
        if (i == -1) {
            return this.c;
        }
        List<b> listD = D(i);
        float f4 = BitmapDescriptorFactory.HUE_RED;
        b bVar = null;
        RectF rectF = new RectF();
        for (b bVar2 : listD) {
            if (!bVar2.o && bVar2.l != null) {
                bVar2.l.w(this.r);
                RectF rectFP = bVar2.l.p(this.f789a, rectF);
                if (rectFP == null || motionEvent == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF rectFF = bVar2.l.f(this.f789a, rectF);
                    if (rectFF == null || motionEvent == null || rectFF.contains(motionEvent.getX(), motionEvent.getY())) {
                        float fA = bVar2.l.a(f2, f3);
                        if (bVar2.l.l && motionEvent != null) {
                            float x = motionEvent.getX() - bVar2.l.i;
                            float y = motionEvent.getY() - bVar2.l.j;
                            fA = ((float) (Math.atan2(f3 + y, f2 + x) - Math.atan2(x, y))) * 10.0f;
                        }
                        float f5 = fA * (bVar2.c == i ? -1.0f : 1.1f);
                        if (f5 > f4) {
                            bVar = bVar2;
                            f4 = f5;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    int i() {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return 0;
        }
        return this.c.l.d();
    }

    androidx.constraintlayout.widget.c j(int i) {
        return k(i, -1, -1);
    }

    androidx.constraintlayout.widget.c k(int i, int i2, int i3) {
        int iC;
        if (this.k) {
            System.out.println("id " + i);
            System.out.println("size " + this.f794h.size());
        }
        androidx.constraintlayout.widget.h hVar = this.b;
        if (hVar != null && (iC = hVar.c(i, i2, i3)) != -1) {
            i = iC;
        }
        if (this.f794h.get(i) != null) {
            return this.f794h.get(i);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + androidx.constraintlayout.motion.widget.a.b(this.f789a.getContext(), i) + " In MotionScene");
        SparseArray<androidx.constraintlayout.widget.c> sparseArray = this.f794h;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    public int[] l() {
        int size = this.f794h.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f794h.keyAt(i);
        }
        return iArr;
    }

    public ArrayList<b> m() {
        return this.f791e;
    }

    public int n() {
        b bVar = this.c;
        return bVar != null ? bVar.f801h : this.l;
    }

    int o() {
        b bVar = this.c;
        if (bVar == null) {
            return -1;
        }
        return bVar.c;
    }

    public Interpolator q() {
        int i = this.c.f798e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.f789a.getContext(), this.c.f800g);
        }
        if (i == -1) {
            return new a(this, androidx.constraintlayout.core.motion.a.c.c(this.c.f799f));
        }
        if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i == 1) {
            return new AccelerateInterpolator();
        }
        if (i == 2) {
            return new DecelerateInterpolator();
        }
        if (i == 4) {
            return new BounceInterpolator();
        }
        if (i == 5) {
            return new OvershootInterpolator();
        }
        if (i != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    float r() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.g();
    }

    float s() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.h();
    }

    boolean t() {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return false;
        }
        return this.c.l.i();
    }

    float u(float f2, float f3) {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.j(f2, f3);
    }

    int w() {
        b bVar = this.c;
        if (bVar == null || bVar.l == null) {
            return 0;
        }
        return this.c.l.k();
    }

    float x() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.l();
    }

    float y() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.m();
    }

    float z() {
        b bVar = this.c;
        return (bVar == null || bVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.c.l.n();
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f796a;
        private boolean b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f797d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f798e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f799f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f800g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f801h;
        private float i;
        private final q j;
        private ArrayList<g> k;
        private r l;
        private ArrayList<a> m;
        private int n;
        private boolean o;
        private int p;
        private int q;
        private int r;

        public static class a implements View.OnClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final b f802a;
            int b;
            int c;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.b = -1;
                this.c = 17;
                this.f802a = bVar;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == R.styleable.OnClick_targetId) {
                        this.b = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                    } else if (index == R.styleable.OnClick_clickAction) {
                        this.c = typedArrayObtainStyledAttributes.getInt(index, this.c);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public void a(MotionLayout motionLayout, int i, b bVar) {
                boolean z;
                View viewFindViewById;
                int i2 = this.b;
                View view = motionLayout;
                if (i2 != -1) {
                    viewFindViewById = motionLayout.findViewById(i2);
                }
                if (view == null) {
                    view = viewFindViewById;
                    Log.e("MotionScene", "OnClick could not find id " + this.b);
                    return;
                }
                int i3 = bVar.f797d;
                int i4 = bVar.c;
                if (i3 == -1) {
                    view = viewFindViewById;
                    view.setOnClickListener(this);
                    return;
                }
                int i5 = this.c;
                boolean z2 = false;
                if ((i5 & 1) == 0 || i != i3) {
                    view = viewFindViewById;
                    z = false;
                } else {
                    z = true;
                }
                boolean z3 = ((i5 & 1) != 0 && i == i3) | z | ((i5 & 256) != 0 && i == i3) | ((i5 & 16) != 0 && i == i4);
                if ((i5 & 4096) != 0 && i == i4) {
                    z2 = true;
                }
                if (z3 || z2) {
                    view.setOnClickListener(this);
                }
            }

            boolean b(b bVar, MotionLayout motionLayout) {
                b bVar2 = this.f802a;
                if (bVar2 == bVar) {
                    return true;
                }
                int i = bVar2.c;
                int i2 = this.f802a.f797d;
                if (i2 == -1) {
                    return motionLayout.f733f != i;
                }
                int i3 = motionLayout.f733f;
                return i3 == i2 || i3 == i;
            }

            public void c(MotionLayout motionLayout) {
                int i = this.b;
                if (i == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.b);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MotionLayout motionLayout = this.f802a.j.f789a;
                if (motionLayout.q()) {
                    if (this.f802a.f797d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.A(this.f802a.c);
                            return;
                        }
                        b bVar = new b(this.f802a.j, this.f802a);
                        bVar.f797d = currentState;
                        bVar.c = this.f802a.c;
                        motionLayout.setTransition(bVar);
                        motionLayout.y();
                        return;
                    }
                    b bVar2 = this.f802a.j.c;
                    int i = this.c;
                    boolean z = false;
                    boolean z2 = ((i & 1) == 0 && (i & 256) == 0) ? false : true;
                    boolean z3 = ((i & 16) == 0 && (i & 4096) == 0) ? false : true;
                    if (z2 && z3) {
                        b bVar3 = this.f802a.j.c;
                        b bVar4 = this.f802a;
                        if (bVar3 != bVar4) {
                            motionLayout.setTransition(bVar4);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z = z2;
                            z3 = false;
                        }
                    } else {
                        z = z2;
                    }
                    if (b(bVar2, motionLayout)) {
                        if (z && (this.c & 1) != 0) {
                            motionLayout.setTransition(this.f802a);
                            motionLayout.y();
                            return;
                        }
                        if (z3 && (this.c & 16) != 0) {
                            motionLayout.setTransition(this.f802a);
                            motionLayout.z();
                        } else if (z && (this.c & 256) != 0) {
                            motionLayout.setTransition(this.f802a);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z3 || (this.c & 4096) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.f802a);
                            motionLayout.setProgress(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                }
            }
        }

        b(q qVar, b bVar) {
            this.f796a = -1;
            this.b = false;
            this.c = -1;
            this.f797d = -1;
            this.f798e = 0;
            this.f799f = null;
            this.f800g = -1;
            this.f801h = Videoio.CAP_PROP_XI_DOWNSAMPLING;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.j = qVar;
            this.f801h = qVar.l;
            if (bVar != null) {
                this.p = bVar.p;
                this.f798e = bVar.f798e;
                this.f799f = bVar.f799f;
                this.f800g = bVar.f800g;
                this.f801h = bVar.f801h;
                this.k = bVar.k;
                this.i = bVar.i;
                this.q = bVar.q;
            }
        }

        private void s(q qVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == R.styleable.Transition_constraintSetEnd) {
                    this.c = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        cVar.t(context, this.c);
                        qVar.f794h.append(this.c, cVar);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.c = qVar.I(context, this.c);
                    }
                } else if (index == R.styleable.Transition_constraintSetStart) {
                    this.f797d = typedArray.getResourceId(index, this.f797d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f797d);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName2)) {
                        androidx.constraintlayout.widget.c cVar2 = new androidx.constraintlayout.widget.c();
                        cVar2.t(context, this.f797d);
                        qVar.f794h.append(this.f797d, cVar2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f797d = qVar.I(context, this.f797d);
                    }
                } else if (index == R.styleable.Transition_motionInterpolator) {
                    int i2 = typedArray.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f800g = resourceId;
                        if (resourceId != -1) {
                            this.f798e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = typedArray.getString(index);
                        this.f799f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f800g = typedArray.getResourceId(index, -1);
                                this.f798e = -2;
                            } else {
                                this.f798e = -1;
                            }
                        }
                    } else {
                        this.f798e = typedArray.getInteger(index, this.f798e);
                    }
                } else if (index == R.styleable.Transition_duration) {
                    int i3 = typedArray.getInt(index, this.f801h);
                    this.f801h = i3;
                    if (i3 < 8) {
                        this.f801h = 8;
                    }
                } else if (index == R.styleable.Transition_staggered) {
                    this.i = typedArray.getFloat(index, this.i);
                } else if (index == R.styleable.Transition_autoTransition) {
                    this.n = typedArray.getInteger(index, this.n);
                } else if (index == R.styleable.Transition_android_id) {
                    this.f796a = typedArray.getResourceId(index, this.f796a);
                } else if (index == R.styleable.Transition_transitionDisable) {
                    this.o = typedArray.getBoolean(index, this.o);
                } else if (index == R.styleable.Transition_pathMotionArc) {
                    this.p = typedArray.getInteger(index, -1);
                } else if (index == R.styleable.Transition_layoutDuringTransition) {
                    this.q = typedArray.getInteger(index, 0);
                } else if (index == R.styleable.Transition_transitionFlags) {
                    this.r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f797d == -1) {
                this.b = true;
            }
        }

        private void t(q qVar, Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transition);
            s(qVar, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public boolean A(int i) {
            return (i & this.r) != 0;
        }

        public void B(int i) {
            this.f801h = Math.max(i, 8);
        }

        public void r(Context context, XmlPullParser xmlPullParser) {
            this.m.add(new a(context, this, xmlPullParser));
        }

        public int u() {
            return this.n;
        }

        public int v() {
            return this.c;
        }

        public int w() {
            return this.q;
        }

        public int x() {
            return this.f797d;
        }

        public r y() {
            return this.l;
        }

        public boolean z() {
            return !this.o;
        }

        b(q qVar, Context context, XmlPullParser xmlPullParser) {
            this.f796a = -1;
            this.b = false;
            this.c = -1;
            this.f797d = -1;
            this.f798e = 0;
            this.f799f = null;
            this.f800g = -1;
            this.f801h = Videoio.CAP_PROP_XI_DOWNSAMPLING;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.f801h = qVar.l;
            this.q = qVar.m;
            this.j = qVar;
            t(qVar, context, Xml.asAttributeSet(xmlPullParser));
        }
    }
}
