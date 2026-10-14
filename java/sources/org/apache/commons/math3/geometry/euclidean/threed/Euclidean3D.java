package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;

/* JADX INFO: loaded from: classes6.dex */
public class Euclidean3D implements Serializable, Space {
    private static final long serialVersionUID = 6249091865814886817L;

    private static class LazyHolder {
        private static final Euclidean3D INSTANCE = new Euclidean3D();

        private LazyHolder() {
        }
    }

    public static Euclidean3D getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 3;
    }

    private Euclidean3D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Euclidean2D getSubSpace() {
        return Euclidean2D.getInstance();
    }
}
