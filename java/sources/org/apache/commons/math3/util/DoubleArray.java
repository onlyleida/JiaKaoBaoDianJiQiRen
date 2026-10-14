package org.apache.commons.math3.util;

/* JADX INFO: loaded from: classes6.dex */
public interface DoubleArray {
    void addElement(double d2);

    double addElementRolling(double d2);

    void addElements(double[] dArr);

    void clear();

    double getElement(int i);

    double[] getElements();

    int getNumElements();

    void setElement(int i, double d2);
}
