package org.apache.commons.math3.geometry.euclidean.twod;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;

/* JADX INFO: loaded from: classes6.dex */
public class Euclidean2D implements Serializable, Space {
    private static final long serialVersionUID = 4793432849757649566L;

    private static class LazyHolder {
        private static final Euclidean2D INSTANCE = new Euclidean2D();

        private LazyHolder() {
        }
    }

    public static Euclidean2D getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 2;
    }

    private Euclidean2D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Euclidean1D getSubSpace() {
        return Euclidean1D.getInstance();
    }
}
