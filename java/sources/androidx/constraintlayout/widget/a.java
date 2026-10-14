package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int[] f847a;
    protected int b;
    protected Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected androidx.constraintlayout.core.widgets.f f848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f851g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View[] f852h;
    protected HashMap<Integer, String> i;

    public a(Context context) {
        super(context);
        this.f847a = new int[32];
        this.f849e = false;
        this.f852h = null;
        this.i = new HashMap<>();
        this.c = context;
        n(null);
    }

    private void e(String str) {
        if (str == null || str.length() == 0 || this.c == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iL = l(strTrim);
        if (iL != 0) {
            this.i.put(Integer.valueOf(iL), strTrim);
            f(iL);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void f(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.b + 1;
        int[] iArr = this.f847a;
        if (i2 > iArr.length) {
            this.f847a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f847a;
        int i3 = this.b;
        iArr2[i3] = i;
        this.b = i3 + 1;
    }

    private void g(String str) {
        if (str == null || str.length() == 0 || this.c == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).Z)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    f(childAt.getId());
                }
            }
        }
    }

    private int k(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int l(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iK = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                iK = ((Integer) designInformation).intValue();
            }
        }
        if (iK == 0 && constraintLayout != null) {
            iK = k(constraintLayout, str);
        }
        if (iK == 0) {
            try {
                iK = R.id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iK == 0 ? this.c.getResources().getIdentifier(str, TtmlNode.ATTR_ID, this.c.getPackageName()) : iK;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f847a, this.b);
    }

    protected void h() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        i((ConstraintLayout) parent);
    }

    protected void i(ConstraintLayout constraintLayout) {
        int i = Build.VERSION.SDK_INT;
        int visibility = getVisibility();
        float elevation = i >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
        for (int i2 = 0; i2 < this.b; i2++) {
            View viewById = constraintLayout.getViewById(this.f847a[i2]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > BitmapDescriptorFactory.HUE_RED && i >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void j(ConstraintLayout constraintLayout) {
    }

    protected View[] m(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f852h;
        if (viewArr == null || viewArr.length != this.b) {
            this.f852h = new View[this.b];
        }
        for (int i = 0; i < this.b; i++) {
            this.f852h[i] = constraintLayout.getViewById(this.f847a[i]);
        }
        return this.f852h;
    }

    protected void n(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f850f = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f851g = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void o(ConstraintWidget constraintWidget, boolean z) {
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f850f;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f851g;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f849e) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void p(ConstraintLayout constraintLayout) {
    }

    public void q(ConstraintLayout constraintLayout) {
    }

    public void r(ConstraintLayout constraintLayout) {
    }

    public void s(ConstraintLayout constraintLayout) {
        String str;
        int iK;
        if (isInEditMode()) {
            setIds(this.f850f);
        }
        androidx.constraintlayout.core.widgets.f fVar = this.f848d;
        if (fVar == null) {
            return;
        }
        fVar.b();
        for (int i = 0; i < this.b; i++) {
            int i2 = this.f847a[i];
            View viewById = constraintLayout.getViewById(i2);
            if (viewById == null && (iK = k(constraintLayout, (str = this.i.get(Integer.valueOf(i2))))) != 0) {
                this.f847a[i] = iK;
                this.i.put(Integer.valueOf(iK), str);
                viewById = constraintLayout.getViewById(iK);
            }
            if (viewById != null) {
                this.f848d.a(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f848d.c(constraintLayout.mLayoutWidget);
    }

    protected void setIds(String str) {
        this.f850f = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                e(str.substring(i));
                return;
            } else {
                e(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f851g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                g(str.substring(i));
                return;
            } else {
                g(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f850f = null;
        this.b = 0;
        for (int i : iArr) {
            f(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f850f == null) {
            f(i);
        }
    }

    public void t() {
        if (this.f848d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).s0 = (ConstraintWidget) this.f848d;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f847a = new int[32];
        this.f849e = false;
        this.f852h = null;
        this.i = new HashMap<>();
        this.c = context;
        n(attributeSet);
    }
}
