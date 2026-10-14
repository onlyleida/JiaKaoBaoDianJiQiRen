package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: classes.dex */
class h<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f1852a;
    private final PathMeasure b;
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f1853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PointF f1854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1855f;

    h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f1853d = new float[2];
        this.f1854e = new PointF();
        this.f1852a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.b = pathMeasure;
        this.c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t) {
        return Float.valueOf(this.f1855f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f2) {
        this.f1855f = f2.floatValue();
        this.b.getPosTan(this.c * f2.floatValue(), this.f1853d, null);
        PointF pointF = this.f1854e;
        float[] fArr = this.f1853d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f1852a.set(t, pointF);
    }
}
