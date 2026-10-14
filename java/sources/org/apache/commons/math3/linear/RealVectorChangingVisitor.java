package org.apache.commons.math3.linear;

/* JADX INFO: loaded from: classes6.dex */
public interface RealVectorChangingVisitor {
    double end();

    void start(int i, int i2, int i3);

    double visit(int i, double d2);
}
