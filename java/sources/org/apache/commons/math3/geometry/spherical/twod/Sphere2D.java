package org.apache.commons.math3.geometry.spherical.twod;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;

/* JADX INFO: loaded from: classes6.dex */
public class Sphere2D implements Serializable, Space {
    private static final long serialVersionUID = 20131218;

    private static class LazyHolder {
        private static final Sphere2D INSTANCE = new Sphere2D();

        private LazyHolder() {
        }
    }

    public static Sphere2D getInstance() {
        return LazyHolder.INSTANCE;
    }

    private Object readResolve() {
        return LazyHolder.INSTANCE;
    }

    @Override // org.apache.commons.math3.geometry.Space
    public int getDimension() {
        return 2;
    }

    private Sphere2D() {
    }

    @Override // org.apache.commons.math3.geometry.Space
    public Sphere1D getSubSpace() {
        return Sphere1D.getInstance();
    }
}
