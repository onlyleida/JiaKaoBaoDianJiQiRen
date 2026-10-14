package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class h extends i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f762h = null;
    int i = d.f751f;
    int j = 0;
    float k = Float.NaN;
    float l = Float.NaN;
    float m = Float.NaN;
    float n = Float.NaN;
    float o = Float.NaN;
    float p = Float.NaN;
    int q = 0;
    private float r = Float.NaN;
    private float s = Float.NaN;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static SparseIntArray f763a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f763a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            f763a.append(R.styleable.KeyPosition_framePosition, 2);
            f763a.append(R.styleable.KeyPosition_transitionEasing, 3);
            f763a.append(R.styleable.KeyPosition_curveFit, 4);
            f763a.append(R.styleable.KeyPosition_drawPath, 5);
            f763a.append(R.styleable.KeyPosition_percentX, 6);
            f763a.append(R.styleable.KeyPosition_percentY, 7);
            f763a.append(R.styleable.KeyPosition_keyPositionType, 9);
            f763a.append(R.styleable.KeyPosition_sizePercent, 8);
            f763a.append(R.styleable.KeyPosition_percentWidth, 11);
            f763a.append(R.styleable.KeyPosition_percentHeight, 12);
            f763a.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f763a.get(index)) {
                    case 1:
                        if (MotionLayout.y0) {
                            int resourceId = typedArray.getResourceId(index, hVar.b);
                            hVar.b = resourceId;
                            if (resourceId == -1) {
                                hVar.c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.c = typedArray.getString(index);
                        } else {
                            hVar.b = typedArray.getResourceId(index, hVar.b);
                        }
                        break;
                    case 2:
                        hVar.f752a = typedArray.getInt(index, hVar.f752a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.f762h = typedArray.getString(index);
                        } else {
                            hVar.f762h = androidx.constraintlayout.core.motion.a.c.c[typedArray.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        hVar.f764g = typedArray.getInteger(index, hVar.f764g);
                        break;
                    case 5:
                        hVar.j = typedArray.getInt(index, hVar.j);
                        break;
                    case 6:
                        hVar.m = typedArray.getFloat(index, hVar.m);
                        break;
                    case 7:
                        hVar.n = typedArray.getFloat(index, hVar.n);
                        break;
                    case 8:
                        float f2 = typedArray.getFloat(index, hVar.l);
                        hVar.k = f2;
                        hVar.l = f2;
                        break;
                    case 9:
                        hVar.q = typedArray.getInt(index, hVar.q);
                        break;
                    case 10:
                        hVar.i = typedArray.getInt(index, hVar.i);
                        break;
                    case 11:
                        hVar.k = typedArray.getFloat(index, hVar.k);
                        break;
                    case 12:
                        hVar.l = typedArray.getFloat(index, hVar.l);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f763a.get(index));
                        break;
                }
            }
            if (hVar.f752a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public h() {
        this.f753d = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void a(HashMap<String, e.a.a.a.c> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.d
    /* JADX INFO: renamed from: b */
    public d clone() {
        h hVar = new h();
        hVar.c(this);
        return hVar;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public d c(d dVar) {
        super.c(dVar);
        h hVar = (h) dVar;
        this.f762h = hVar.f762h;
        this.i = hVar.i;
        this.j = hVar.j;
        this.k = hVar.k;
        this.l = Float.NaN;
        this.m = hVar.m;
        this.n = hVar.n;
        this.o = hVar.o;
        this.p = hVar.p;
        this.r = hVar.r;
        this.s = hVar.s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyPosition));
    }
}
