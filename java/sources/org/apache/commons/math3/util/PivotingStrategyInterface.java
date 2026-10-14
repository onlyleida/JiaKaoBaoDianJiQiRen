package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* JADX INFO: loaded from: classes6.dex */
public interface PivotingStrategyInterface {
    int pivotIndex(double[] dArr, int i, int i2) throws MathIllegalArgumentException;
}
