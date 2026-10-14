package androidx.vectordrawable.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class i extends androidx.vectordrawable.a.a.h {
    static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;
    private h b;
    private PorterDuffColorFilter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorFilter f1912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float[] f1915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Matrix f1916h;
    private final Rect i;

    private static class b extends f {
        b() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f1927a = androidx.core.graphics.e.d(string2);
            }
            this.c = androidx.core.a.f.g.g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.a.a.i.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (androidx.core.a.f.g.j(xmlPullParser, "pathData")) {
                TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, androidx.vectordrawable.a.a.a.f1896d);
                f(typedArrayK, xmlPullParser);
                typedArrayK.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    private static class h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1935a;
        g b;
        ColorStateList c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        PorterDuff.Mode f1936d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1937e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Bitmap f1938f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f1939g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f1940h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public h(h hVar) {
            this.c = null;
            this.f1936d = i.j;
            if (hVar != null) {
                this.f1935a = hVar.f1935a;
                g gVar = new g(hVar.b);
                this.b = gVar;
                if (hVar.b.f1931e != null) {
                    gVar.f1931e = new Paint(hVar.b.f1931e);
                }
                if (hVar.b.f1930d != null) {
                    this.b.f1930d = new Paint(hVar.b.f1930d);
                }
                this.c = hVar.c;
                this.f1936d = hVar.f1936d;
                this.f1937e = hVar.f1937e;
            }
        }

        public boolean a(int i, int i2) {
            return i == this.f1938f.getWidth() && i2 == this.f1938f.getHeight();
        }

        public boolean b() {
            return !this.k && this.f1939g == this.c && this.f1940h == this.f1936d && this.j == this.f1937e && this.i == this.b.getRootAlpha();
        }

        public void c(int i, int i2) {
            if (this.f1938f == null || !a(i, i2)) {
                this.f1938f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f1938f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.l == null) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setFilterBitmap(true);
            }
            this.l.setAlpha(this.b.getRootAlpha());
            this.l.setColorFilter(colorFilter);
            return this.l;
        }

        public boolean f() {
            return this.b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1935a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.b.g(iArr);
            this.k |= zG;
            return zG;
        }

        public void i() {
            this.f1939g = this.c;
            this.f1940h = this.f1936d;
            this.i = this.b.getRootAlpha();
            this.j = this.f1937e;
            this.k = false;
        }

        public void j(int i, int i2) {
            this.f1938f.eraseColor(0);
            this.b.b(new Canvas(this.f1938f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }

        public h() {
            this.c = null;
            this.f1936d = i.j;
            this.b = new g();
        }
    }

    i() {
        this.f1914f = true;
        this.f1915g = new float[9];
        this.f1916h = new Matrix();
        this.i = new Rect();
        this.b = new h();
    }

    static int a(int i, float f2) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (((int) (Color.alpha(i) * f2)) << 24);
    }

    public static i b(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f1911a = androidx.core.a.f.f.d(resources, i, theme);
            new C0054i(iVar.f1911a.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    public static i c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = this.b;
        g gVar = hVar.b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f1934h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    hVar.f1935a = cVar.f1928d | hVar.f1935a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f1935a = bVar.f1928d | hVar.f1935a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.p.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar.f1935a = dVar2.k | hVar.f1935a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean f() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    private static PorterDuff.Mode g(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        h hVar = this.b;
        g gVar = hVar.b;
        hVar.f1936d = g(androidx.core.a.f.g.g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListC = androidx.core.a.f.g.c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListC != null) {
            hVar.c = colorStateListC;
        }
        hVar.f1937e = androidx.core.a.f.g.a(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f1937e);
        gVar.k = androidx.core.a.f.g.f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.k);
        float f2 = androidx.core.a.f.g.f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.l);
        gVar.l = f2;
        if (gVar.k <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.i = typedArray.getDimension(3, gVar.i);
        float dimension = typedArray.getDimension(2, gVar.j);
        gVar.j = dimension;
        if (gVar.i <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(androidx.core.a.f.g.f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.n = string;
            gVar.p.put(string, gVar);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f1911a;
        if (drawable == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable);
        return false;
    }

    Object d(String str) {
        return this.b.b.p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.i);
        if (this.i.width() <= 0 || this.i.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f1912d;
        if (colorFilter == null) {
            colorFilter = this.c;
        }
        canvas.getMatrix(this.f1916h);
        this.f1916h.getValues(this.f1915g);
        float fAbs = Math.abs(this.f1915g[0]);
        float fAbs2 = Math.abs(this.f1915g[4]);
        float fAbs3 = Math.abs(this.f1915g[1]);
        float fAbs4 = Math.abs(this.f1915g[3]);
        if (fAbs3 != BitmapDescriptorFactory.HUE_RED || fAbs4 != BitmapDescriptorFactory.HUE_RED) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (this.i.width() * fAbs);
        int iHeight = (int) (this.i.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.i;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.i.width(), BitmapDescriptorFactory.HUE_RED);
            canvas.scale(-1.0f, 1.0f);
        }
        this.i.offsetTo(0, 0);
        this.b.c(iMin, iMin2);
        if (!this.f1914f) {
            this.b.j(iMin, iMin2);
        } else if (!this.b.b()) {
            this.b.j(iMin, iMin2);
            this.b.i();
        }
        this.b.d(canvas, colorFilter, this.i);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.d(drawable) : this.b.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.e(drawable) : this.f1912d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1911a != null && Build.VERSION.SDK_INT >= 24) {
            return new C0054i(this.f1911a.getConstantState());
        }
        this.b.f1935a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.b.b.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    void h(boolean z) {
        this.f1914f = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.h(drawable) : this.b.f1937e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((hVar = this.b) != null && (hVar.g() || ((colorStateList = this.b.c) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f1913e && super.mutate() == this) {
            this.b = new h(this.b);
            this.f1913e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.b;
        ColorStateList colorStateList = hVar.c;
        if (colorStateList != null && (mode = hVar.f1936d) != null) {
            this.c = j(this.c, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!hVar.g() || !hVar.h(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.b.b.getRootAlpha() != i) {
            this.b.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.j(drawable, z);
        } else {
            this.b.f1937e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.n(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
            return;
        }
        h hVar = this.b;
        if (hVar.c != colorStateList) {
            hVar.c = colorStateList;
            this.c = j(this.c, colorStateList, hVar.f1936d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.p(drawable, mode);
            return;
        }
        h hVar = this.b;
        if (hVar.f1936d != mode) {
            hVar.f1936d = mode;
            this.c = j(this.c, hVar.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.a.a.i$i, reason: collision with other inner class name */
    private static class C0054i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f1941a;

        public C0054i(Drawable.ConstantState constantState) {
            this.f1941a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f1941a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1941a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.f1911a = (VectorDrawable) this.f1941a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f1911a = (VectorDrawable) this.f1941a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f1911a = (VectorDrawable) this.f1941a.newDrawable(resources, theme);
            return iVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f1912d = colorFilter;
            invalidateSelf();
        }
    }

    private static abstract class f extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected androidx.core.graphics.e.b[] f1927a;
        String b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1928d;

        public f() {
            super();
            this.f1927a = null;
            this.c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            androidx.core.graphics.e.b[] bVarArr = this.f1927a;
            if (bVarArr != null) {
                androidx.core.graphics.e.b.e(bVarArr, path);
            }
        }

        public androidx.core.graphics.e.b[] getPathData() {
            return this.f1927a;
        }

        public String getPathName() {
            return this.b;
        }

        public void setPathData(androidx.core.graphics.e.b[] bVarArr) {
            if (androidx.core.graphics.e.b(this.f1927a, bVarArr)) {
                androidx.core.graphics.e.j(this.f1927a, bVarArr);
            } else {
                this.f1927a = androidx.core.graphics.e.f(bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f1927a = null;
            this.c = 0;
            this.b = fVar.b;
            this.f1928d = fVar.f1928d;
            this.f1927a = androidx.core.graphics.e.f(fVar.f1927a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.b;
        hVar.b = new g();
        TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, androidx.vectordrawable.a.a.a.f1895a);
        i(typedArrayK, xmlPullParser, theme);
        typedArrayK.recycle();
        hVar.f1935a = getChangingConfigurations();
        hVar.k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.c = j(this.c, hVar.c, hVar.f1936d);
    }

    i(h hVar) {
        this.f1914f = true;
        this.f1915g = new float[9];
        this.f1916h = new Matrix();
        this.i = new Rect();
        this.b = hVar;
        this.c = j(this.c, hVar.c, hVar.f1936d);
    }

    private static class c extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f1917e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.core.a.f.b f1918f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f1919g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        androidx.core.a.f.b f1920h;
        float i;
        float j;
        float k;
        float l;
        float m;
        Paint.Cap n;
        Paint.Join o;
        float p;

        c() {
            this.f1919g = BitmapDescriptorFactory.HUE_RED;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = 1.0f;
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
        }

        private Paint.Cap e(int i, Paint.Cap cap) {
            if (i == 0) {
                return Paint.Cap.BUTT;
            }
            if (i != 1) {
                return i != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        private Paint.Join f(int i, Paint.Join join) {
            if (i == 0) {
                return Paint.Join.MITER;
            }
            if (i != 1) {
                return i != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f1917e = null;
            if (androidx.core.a.f.g.j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f1927a = androidx.core.graphics.e.d(string2);
                }
                this.f1920h = androidx.core.a.f.g.e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.j = androidx.core.a.f.g.f(typedArray, xmlPullParser, "fillAlpha", 12, this.j);
                this.n = e(androidx.core.a.f.g.g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.n);
                this.o = f(androidx.core.a.f.g.g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.o);
                this.p = androidx.core.a.f.g.f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.p);
                this.f1918f = androidx.core.a.f.g.e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.i = androidx.core.a.f.g.f(typedArray, xmlPullParser, "strokeAlpha", 11, this.i);
                this.f1919g = androidx.core.a.f.g.f(typedArray, xmlPullParser, "strokeWidth", 4, this.f1919g);
                this.l = androidx.core.a.f.g.f(typedArray, xmlPullParser, "trimPathEnd", 6, this.l);
                this.m = androidx.core.a.f.g.f(typedArray, xmlPullParser, "trimPathOffset", 7, this.m);
                this.k = androidx.core.a.f.g.f(typedArray, xmlPullParser, "trimPathStart", 5, this.k);
                this.c = androidx.core.a.f.g.g(typedArray, xmlPullParser, "fillType", 13, this.c);
            }
        }

        @Override // androidx.vectordrawable.a.a.i.e
        public boolean a() {
            return this.f1920h.i() || this.f1918f.i();
        }

        @Override // androidx.vectordrawable.a.a.i.e
        public boolean b(int[] iArr) {
            return this.f1918f.j(iArr) | this.f1920h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, androidx.vectordrawable.a.a.a.c);
            h(typedArrayK, xmlPullParser, theme);
            typedArrayK.recycle();
        }

        float getFillAlpha() {
            return this.j;
        }

        int getFillColor() {
            return this.f1920h.e();
        }

        float getStrokeAlpha() {
            return this.i;
        }

        int getStrokeColor() {
            return this.f1918f.e();
        }

        float getStrokeWidth() {
            return this.f1919g;
        }

        float getTrimPathEnd() {
            return this.l;
        }

        float getTrimPathOffset() {
            return this.m;
        }

        float getTrimPathStart() {
            return this.k;
        }

        void setFillAlpha(float f2) {
            this.j = f2;
        }

        void setFillColor(int i) {
            this.f1920h.k(i);
        }

        void setStrokeAlpha(float f2) {
            this.i = f2;
        }

        void setStrokeColor(int i) {
            this.f1918f.k(i);
        }

        void setStrokeWidth(float f2) {
            this.f1919g = f2;
        }

        void setTrimPathEnd(float f2) {
            this.l = f2;
        }

        void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        void setTrimPathStart(float f2) {
            this.k = f2;
        }

        c(c cVar) {
            super(cVar);
            this.f1919g = BitmapDescriptorFactory.HUE_RED;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = 1.0f;
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.n = Paint.Cap.BUTT;
            this.o = Paint.Join.MITER;
            this.p = 4.0f;
            this.f1917e = cVar.f1917e;
            this.f1918f = cVar.f1918f;
            this.f1919g = cVar.f1919g;
            this.i = cVar.i;
            this.f1920h = cVar.f1920h;
            this.c = cVar.c;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }
    }

    private static class g {
        private static final Matrix q = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Path f1929a;
        private final Path b;
        private final Matrix c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Paint f1930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Paint f1931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private PathMeasure f1932f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1933g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final d f1934h;
        float i;
        float j;
        float k;
        float l;
        int m;
        String n;
        Boolean o;
        final androidx.collection.a<String, Object> p;

        public g() {
            this.c = new Matrix();
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = BitmapDescriptorFactory.HUE_RED;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new androidx.collection.a<>();
            this.f1934h = new d();
            this.f1929a = new Path();
            this.b = new Path();
        }

        private static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            dVar.f1921a.set(matrix);
            dVar.f1921a.preConcat(dVar.j);
            canvas.save();
            for (int i3 = 0; i3 < dVar.b.size(); i3++) {
                e eVar = dVar.b.get(i3);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f1921a, canvas, i, i2, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f2 = i / this.k;
            float f3 = i2 / this.l;
            float fMin = Math.min(f2, f3);
            Matrix matrix = dVar.f1921a;
            this.c.set(matrix);
            this.c.postScale(f2, f3);
            float fE = e(matrix);
            if (fE == BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            fVar.d(this.f1929a);
            Path path = this.f1929a;
            this.b.reset();
            if (fVar.c()) {
                this.b.setFillType(fVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.b.addPath(path, this.c);
                canvas.clipPath(this.b);
                return;
            }
            c cVar = (c) fVar;
            float f4 = cVar.k;
            if (f4 != BitmapDescriptorFactory.HUE_RED || cVar.l != 1.0f) {
                float f5 = cVar.m;
                float f6 = (f4 + f5) % 1.0f;
                float f7 = (cVar.l + f5) % 1.0f;
                if (this.f1932f == null) {
                    this.f1932f = new PathMeasure();
                }
                this.f1932f.setPath(this.f1929a, false);
                float length = this.f1932f.getLength();
                float f8 = f6 * length;
                float f9 = f7 * length;
                path.reset();
                if (f8 > f9) {
                    this.f1932f.getSegment(f8, length, path, true);
                    this.f1932f.getSegment(BitmapDescriptorFactory.HUE_RED, f9, path, true);
                } else {
                    this.f1932f.getSegment(f8, f9, path, true);
                }
                path.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            }
            this.b.addPath(path, this.c);
            if (cVar.f1920h.l()) {
                androidx.core.a.f.b bVar = cVar.f1920h;
                if (this.f1931e == null) {
                    Paint paint = new Paint(1);
                    this.f1931e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f1931e;
                if (bVar.h()) {
                    Shader shaderF = bVar.f();
                    shaderF.setLocalMatrix(this.c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(i.a(bVar.e(), cVar.j));
                }
                paint2.setColorFilter(colorFilter);
                this.b.setFillType(cVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.b, paint2);
            }
            if (cVar.f1918f.l()) {
                androidx.core.a.f.b bVar2 = cVar.f1918f;
                if (this.f1930d == null) {
                    Paint paint3 = new Paint(1);
                    this.f1930d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f1930d;
                Paint.Join join = cVar.o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.p);
                if (bVar2.h()) {
                    Shader shaderF2 = bVar2.f();
                    shaderF2.setLocalMatrix(this.c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(i.a(bVar2.e(), cVar.i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f1919g * fMin * fE);
                canvas.drawPath(this.b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            return fMax > BitmapDescriptorFactory.HUE_RED ? Math.abs(fA) / fMax : BitmapDescriptorFactory.HUE_RED;
        }

        public void b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c(this.f1934h, q, canvas, i, i2, colorFilter);
        }

        public boolean f() {
            if (this.o == null) {
                this.o = Boolean.valueOf(this.f1934h.a());
            }
            return this.o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f1934h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.m = i;
        }

        public g(g gVar) {
            this.c = new Matrix();
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = BitmapDescriptorFactory.HUE_RED;
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.m = 255;
            this.n = null;
            this.o = null;
            androidx.collection.a<String, Object> aVar = new androidx.collection.a<>();
            this.p = aVar;
            this.f1934h = new d(gVar.f1934h, aVar);
            this.f1929a = new Path(gVar.f1929a);
            this.b = new Path(gVar.b);
            this.i = gVar.i;
            this.j = gVar.j;
            this.k = gVar.k;
            this.l = gVar.l;
            this.f1933g = gVar.f1933g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.o = gVar.o;
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f1921a;
        final ArrayList<e> b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1922d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f1923e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f1924f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f1925g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f1926h;
        private float i;
        final Matrix j;
        int k;
        private int[] l;
        private String m;

        public d(d dVar, androidx.collection.a<String, Object> aVar) {
            f bVar;
            super();
            this.f1921a = new Matrix();
            this.b = new ArrayList<>();
            this.c = BitmapDescriptorFactory.HUE_RED;
            this.f1922d = BitmapDescriptorFactory.HUE_RED;
            this.f1923e = BitmapDescriptorFactory.HUE_RED;
            this.f1924f = 1.0f;
            this.f1925g = 1.0f;
            this.f1926h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.m = null;
            this.c = dVar.c;
            this.f1922d = dVar.f1922d;
            this.f1923e = dVar.f1923e;
            this.f1924f = dVar.f1924f;
            this.f1925g = dVar.f1925g;
            this.f1926h = dVar.f1926h;
            this.i = dVar.i;
            this.l = dVar.l;
            String str = dVar.m;
            this.m = str;
            this.k = dVar.k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.j);
            ArrayList<e> arrayList = dVar.b;
            for (int i = 0; i < arrayList.size(); i++) {
                e eVar = arrayList.get(i);
                if (eVar instanceof d) {
                    this.b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else {
                        if (!(eVar instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) eVar);
                    }
                    this.b.add(bVar);
                    String str2 = bVar.b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.j.reset();
            this.j.postTranslate(-this.f1922d, -this.f1923e);
            this.j.postScale(this.f1924f, this.f1925g);
            this.j.postRotate(this.c, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.j.postTranslate(this.f1926h + this.f1922d, this.i + this.f1923e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.l = null;
            this.c = androidx.core.a.f.g.f(typedArray, xmlPullParser, "rotation", 5, this.c);
            this.f1922d = typedArray.getFloat(1, this.f1922d);
            this.f1923e = typedArray.getFloat(2, this.f1923e);
            this.f1924f = androidx.core.a.f.g.f(typedArray, xmlPullParser, "scaleX", 3, this.f1924f);
            this.f1925g = androidx.core.a.f.g.f(typedArray, xmlPullParser, "scaleY", 4, this.f1925g);
            this.f1926h = androidx.core.a.f.g.f(typedArray, xmlPullParser, "translateX", 6, this.f1926h);
            this.i = androidx.core.a.f.g.f(typedArray, xmlPullParser, "translateY", 7, this.i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            d();
        }

        @Override // androidx.vectordrawable.a.a.i.e
        public boolean a() {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.a.a.i.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i = 0; i < this.b.size(); i++) {
                zB |= this.b.get(i).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, androidx.vectordrawable.a.a.a.b);
            e(typedArrayK, xmlPullParser);
            typedArrayK.recycle();
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.f1922d;
        }

        public float getPivotY() {
            return this.f1923e;
        }

        public float getRotation() {
            return this.c;
        }

        public float getScaleX() {
            return this.f1924f;
        }

        public float getScaleY() {
            return this.f1925g;
        }

        public float getTranslateX() {
            return this.f1926h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f1922d) {
                this.f1922d = f2;
                d();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f1923e) {
                this.f1923e = f2;
                d();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.c) {
                this.c = f2;
                d();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f1924f) {
                this.f1924f = f2;
                d();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f1925g) {
                this.f1925g = f2;
                d();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f1926h) {
                this.f1926h = f2;
                d();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.i) {
                this.i = f2;
                d();
            }
        }

        public d() {
            super();
            this.f1921a = new Matrix();
            this.b = new ArrayList<>();
            this.c = BitmapDescriptorFactory.HUE_RED;
            this.f1922d = BitmapDescriptorFactory.HUE_RED;
            this.f1923e = BitmapDescriptorFactory.HUE_RED;
            this.f1924f = 1.0f;
            this.f1925g = 1.0f;
            this.f1926h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = new Matrix();
            this.m = null;
        }
    }
}
