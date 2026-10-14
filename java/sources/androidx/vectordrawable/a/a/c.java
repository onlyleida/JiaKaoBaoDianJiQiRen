package androidx.vectordrawable.a.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c extends h implements Animatable {
    private b b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArgbEvaluator f1901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Drawable.Callback f1902e;

    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            c.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    private static class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1904a;
        i b;
        AnimatorSet c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Animator> f1905d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.collection.a<Animator, String> f1906e;

        public b(Context context, b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f1904a = bVar.f1904a;
                i iVar = bVar.b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.b = (i) constantState.newDrawable(resources);
                    } else {
                        this.b = (i) constantState.newDrawable();
                    }
                    i iVar2 = this.b;
                    iVar2.mutate();
                    i iVar3 = iVar2;
                    this.b = iVar3;
                    iVar3.setCallback(callback);
                    this.b.setBounds(bVar.b.getBounds());
                    this.b.h(false);
                }
                ArrayList<Animator> arrayList = bVar.f1905d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f1905d = new ArrayList<>(size);
                    this.f1906e = new androidx.collection.a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = bVar.f1905d.get(i);
                        Animator animatorClone = animator.clone();
                        String str = bVar.f1906e.get(animator);
                        animatorClone.setTarget(this.b.d(str));
                        this.f1905d.add(animatorClone);
                        this.f1906e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.c == null) {
                this.c = new AnimatorSet();
            }
            this.c.playTogether(this.f1905d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1904a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    c() {
        this(null, null, null);
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    private void b(String str, Animator animator) {
        animator.setTarget(this.b.b.d(str));
        if (Build.VERSION.SDK_INT < 21) {
            c(animator);
        }
        b bVar = this.b;
        if (bVar.f1905d == null) {
            bVar.f1905d = new ArrayList<>();
            this.b.f1906e = new androidx.collection.a<>();
        }
        this.b.f1905d.add(animator);
        this.b.f1906e.put(animator, str);
    }

    private void c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f1901d == null) {
                    this.f1901d = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f1901d);
            }
        }
    }

    @Override // androidx.vectordrawable.a.a.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.b.b.draw(canvas);
        if (this.b.c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.d(drawable) : this.b.b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.b.f1904a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.e(drawable) : this.b.b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f1911a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0053c(this.f1911a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.b.b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.b.b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.getOpacity() : this.b.b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, androidx.vectordrawable.a.a.a.f1897e);
                    int resourceId = typedArrayK.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i iVarB = i.b(resources, resourceId, theme);
                        iVarB.h(false);
                        iVarB.setCallback(this.f1902e);
                        i iVar = this.b.b;
                        if (iVar != null) {
                            iVar.setCallback(null);
                        }
                        this.b.b = iVarB;
                    }
                    typedArrayK.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.vectordrawable.a.a.a.f1898f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.c;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        b(string, e.i(context, resourceId2));
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.b.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f1911a;
        return drawable != null ? androidx.core.graphics.drawable.a.h(drawable) : this.b.b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f1911a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.b.c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.isStateful() : this.b.b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.b.b.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.a.a.h, android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.setLevel(i) : this.b.b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1911a;
        return drawable != null ? drawable.setState(iArr) : this.b.b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.b.b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.j(drawable, z);
        } else {
            this.b.b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.n(drawable, i);
        } else {
            this.b.b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
        } else {
            this.b.b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.p(drawable, mode);
        } else {
            this.b.b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.b.b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.b.c.isStarted()) {
                return;
            }
            this.b.c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.b.c.end();
        }
    }

    private c(Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1911a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.b.b.setColorFilter(colorFilter);
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.a.a.c$c, reason: collision with other inner class name */
    private static class C0053c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f1907a;

        public C0053c(Drawable.ConstantState constantState) {
            this.f1907a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f1907a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1907a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f1907a.newDrawable();
            cVar.f1911a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f1902e);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f1907a.newDrawable(resources);
            cVar.f1911a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f1902e);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f1907a.newDrawable(resources, theme);
            cVar.f1911a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f1902e);
            return cVar;
        }
    }

    private c(Context context, b bVar, Resources resources) {
        this.f1901d = null;
        a aVar = new a();
        this.f1902e = aVar;
        this.c = context;
        if (bVar != null) {
            this.b = bVar;
        } else {
            this.b = new b(context, bVar, aVar, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
