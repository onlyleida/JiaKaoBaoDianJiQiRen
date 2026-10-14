package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.TrivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class TricubicSplineInterpolatingFunction implements TrivariateFunction {
    private static final double[][] AINV = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, 3.0d, -6.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, -6.0d, 3.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 2.0d, 2.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, -3.0d, 3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 4.0d, -2.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -2.0d, -1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, -2.0d, 4.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 2.0d, -2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 9.0d, -9.0d, -9.0d, 9.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, 3.0d, -6.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, -6.0d, 3.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 2.0d, 2.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 6.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, -3.0d, 3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 4.0d, -2.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -2.0d, -1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 6.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, -2.0d, 4.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, -4.0d, -4.0d, 4.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 2.0d, -2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 0.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 0.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{9.0d, -9.0d, 0.0d, 0.0d, -9.0d, 9.0d, 0.0d, 0.0d, 6.0d, 3.0d, 0.0d, 0.0d, -6.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, 3.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 2.0d, 0.0d, 0.0d, 2.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-6.0d, 6.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, -3.0d, -3.0d, 0.0d, 0.0d, 3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 4.0d, 0.0d, 0.0d, -2.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -2.0d, 0.0d, 0.0d, -1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 0.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 0.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 9.0d, -9.0d, 0.0d, 0.0d, -9.0d, 9.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, 3.0d, 0.0d, 0.0d, -6.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, 3.0d, -3.0d, 0.0d, 0.0d, 4.0d, 2.0d, 0.0d, 0.0d, 2.0d, 1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 6.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, -3.0d, 0.0d, 0.0d, 3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 4.0d, 0.0d, 0.0d, -2.0d, 2.0d, 0.0d, 0.0d, -2.0d, -2.0d, 0.0d, 0.0d, -1.0d, -1.0d, 0.0d, 0.0d}, new double[]{9.0d, 0.0d, -9.0d, 0.0d, -9.0d, 0.0d, 9.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, 0.0d, 3.0d, 0.0d, -6.0d, 0.0d, -3.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 3.0d, 0.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 0.0d, 2.0d, 0.0d, 2.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 9.0d, 0.0d, -9.0d, 0.0d, -9.0d, 0.0d, 9.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 6.0d, 0.0d, 3.0d, 0.0d, -6.0d, 0.0d, -3.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 3.0d, 0.0d, -3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 0.0d, 2.0d, 0.0d, 2.0d, 0.0d, 1.0d, 0.0d}, new double[]{-27.0d, 27.0d, 27.0d, -27.0d, 27.0d, -27.0d, -27.0d, 27.0d, -18.0d, -9.0d, 18.0d, 9.0d, 18.0d, 9.0d, -18.0d, -9.0d, -18.0d, 18.0d, -9.0d, 9.0d, 18.0d, -18.0d, 9.0d, -9.0d, -18.0d, 18.0d, 18.0d, -18.0d, -9.0d, 9.0d, 9.0d, -9.0d, -12.0d, -6.0d, -6.0d, -3.0d, 12.0d, 6.0d, 6.0d, 3.0d, -12.0d, -6.0d, 12.0d, 6.0d, -6.0d, -3.0d, 6.0d, 3.0d, -12.0d, 12.0d, -6.0d, 6.0d, -6.0d, 6.0d, -3.0d, 3.0d, -8.0d, -4.0d, -4.0d, -2.0d, -4.0d, -2.0d, -2.0d, -1.0d}, new double[]{18.0d, -18.0d, -18.0d, 18.0d, -18.0d, 18.0d, 18.0d, -18.0d, 9.0d, 9.0d, -9.0d, -9.0d, -9.0d, -9.0d, 9.0d, 9.0d, 12.0d, -12.0d, 6.0d, -6.0d, -12.0d, 12.0d, -6.0d, 6.0d, 12.0d, -12.0d, -12.0d, 12.0d, 6.0d, -6.0d, -6.0d, 6.0d, 6.0d, 6.0d, 3.0d, 3.0d, -6.0d, -6.0d, -3.0d, -3.0d, 6.0d, 6.0d, -6.0d, -6.0d, 3.0d, 3.0d, -3.0d, -3.0d, 8.0d, -8.0d, 4.0d, -4.0d, 4.0d, -4.0d, 2.0d, -2.0d, 4.0d, 4.0d, 2.0d, 2.0d, 2.0d, 2.0d, 1.0d, 1.0d}, new double[]{-6.0d, 0.0d, 6.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 3.0d, 0.0d, -4.0d, 0.0d, 4.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 0.0d, 6.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 3.0d, 0.0d, -4.0d, 0.0d, 4.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, -1.0d, 0.0d}, new double[]{18.0d, -18.0d, -18.0d, 18.0d, -18.0d, 18.0d, 18.0d, -18.0d, 12.0d, 6.0d, -12.0d, -6.0d, -12.0d, -6.0d, 12.0d, 6.0d, 9.0d, -9.0d, 9.0d, -9.0d, -9.0d, 9.0d, -9.0d, 9.0d, 12.0d, -12.0d, -12.0d, 12.0d, 6.0d, -6.0d, -6.0d, 6.0d, 6.0d, 3.0d, 6.0d, 3.0d, -6.0d, -3.0d, -6.0d, -3.0d, 8.0d, 4.0d, -8.0d, -4.0d, 4.0d, 2.0d, -4.0d, -2.0d, 6.0d, -6.0d, 6.0d, -6.0d, 3.0d, -3.0d, 3.0d, -3.0d, 4.0d, 2.0d, 4.0d, 2.0d, 2.0d, 1.0d, 2.0d, 1.0d}, new double[]{-12.0d, 12.0d, 12.0d, -12.0d, 12.0d, -12.0d, -12.0d, 12.0d, -6.0d, -6.0d, 6.0d, 6.0d, 6.0d, 6.0d, -6.0d, -6.0d, -6.0d, 6.0d, -6.0d, 6.0d, 6.0d, -6.0d, 6.0d, -6.0d, -8.0d, 8.0d, 8.0d, -8.0d, -4.0d, 4.0d, 4.0d, -4.0d, -3.0d, -3.0d, -3.0d, -3.0d, 3.0d, 3.0d, 3.0d, 3.0d, -4.0d, -4.0d, 4.0d, 4.0d, -2.0d, -2.0d, 2.0d, 2.0d, -4.0d, 4.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, -2.0d, -2.0d, -2.0d, -1.0d, -1.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-6.0d, 6.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, -4.0d, -2.0d, 0.0d, 0.0d, 4.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{4.0d, -4.0d, 0.0d, 0.0d, -4.0d, 4.0d, 0.0d, 0.0d, 2.0d, 2.0d, 0.0d, 0.0d, -2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 6.0d, 0.0d, 0.0d, 6.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, -2.0d, 0.0d, 0.0d, 4.0d, 2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, -4.0d, 0.0d, 0.0d, -4.0d, 4.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 2.0d, 0.0d, 0.0d, -2.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-6.0d, 0.0d, 6.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 0.0d, -2.0d, 0.0d, 4.0d, 0.0d, 2.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -6.0d, 0.0d, 6.0d, 0.0d, 6.0d, 0.0d, -6.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -4.0d, 0.0d, -2.0d, 0.0d, 4.0d, 0.0d, 2.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{18.0d, -18.0d, -18.0d, 18.0d, -18.0d, 18.0d, 18.0d, -18.0d, 12.0d, 6.0d, -12.0d, -6.0d, -12.0d, -6.0d, 12.0d, 6.0d, 12.0d, -12.0d, 6.0d, -6.0d, -12.0d, 12.0d, -6.0d, 6.0d, 9.0d, -9.0d, -9.0d, 9.0d, 9.0d, -9.0d, -9.0d, 9.0d, 8.0d, 4.0d, 4.0d, 2.0d, -8.0d, -4.0d, -4.0d, -2.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-12.0d, 12.0d, 12.0d, -12.0d, 12.0d, -12.0d, -12.0d, 12.0d, -6.0d, -6.0d, 6.0d, 6.0d, 6.0d, 6.0d, -6.0d, -6.0d, -8.0d, 8.0d, -4.0d, 4.0d, 8.0d, -8.0d, 4.0d, -4.0d, -6.0d, 6.0d, 6.0d, -6.0d, -6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -4.0d, -2.0d, -2.0d, 4.0d, 4.0d, 2.0d, 2.0d, -3.0d, -3.0d, 3.0d, 3.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{4.0d, 0.0d, -4.0d, 0.0d, -4.0d, 0.0d, 4.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 4.0d, 0.0d, -4.0d, 0.0d, -4.0d, 0.0d, 4.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-12.0d, 12.0d, 12.0d, -12.0d, 12.0d, -12.0d, -12.0d, 12.0d, -8.0d, -4.0d, 8.0d, 4.0d, 8.0d, 4.0d, -8.0d, -4.0d, -6.0d, 6.0d, -6.0d, 6.0d, 6.0d, -6.0d, 6.0d, -6.0d, -6.0d, 6.0d, 6.0d, -6.0d, -6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, -4.0d, -2.0d, 4.0d, 2.0d, 4.0d, 2.0d, -4.0d, -2.0d, 4.0d, 2.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{8.0d, -8.0d, -8.0d, 8.0d, -8.0d, 8.0d, 8.0d, -8.0d, 4.0d, 4.0d, -4.0d, -4.0d, -4.0d, -4.0d, 4.0d, 4.0d, 4.0d, -4.0d, 4.0d, -4.0d, -4.0d, 4.0d, -4.0d, 4.0d, 4.0d, -4.0d, -4.0d, 4.0d, 4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, 2.0d, 2.0d, -2.0d, -2.0d, -2.0d, -2.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d, 1.0d}};
    private final TricubicSplineFunction[][][] splines;
    private final double[] xval;
    private final double[] yval;
    private final double[] zval;

    public TricubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4, double[][][] dArr5, double[][][] dArr6, double[][][] dArr7, double[][][] dArr8, double[][][] dArr9, double[][][] dArr10, double[][][] dArr11) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        int length = dArr.length;
        int length2 = dArr2.length;
        int length3 = dArr3.length;
        if (length == 0 || length2 == 0 || dArr3.length == 0 || dArr4.length == 0 || dArr4[0].length == 0) {
            throw new NoDataException();
        }
        if (length != dArr4.length) {
            throw new DimensionMismatchException(length, dArr4.length);
        }
        if (length != dArr5.length) {
            throw new DimensionMismatchException(length, dArr5.length);
        }
        if (length != dArr6.length) {
            throw new DimensionMismatchException(length, dArr6.length);
        }
        if (length != dArr7.length) {
            throw new DimensionMismatchException(length, dArr7.length);
        }
        if (length != dArr8.length) {
            throw new DimensionMismatchException(length, dArr8.length);
        }
        if (length != dArr9.length) {
            throw new DimensionMismatchException(length, dArr9.length);
        }
        if (length != dArr10.length) {
            throw new DimensionMismatchException(length, dArr10.length);
        }
        if (length != dArr11.length) {
            throw new DimensionMismatchException(length, dArr11.length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        MathArrays.checkOrder(dArr3);
        this.xval = (double[]) dArr.clone();
        this.yval = (double[]) dArr2.clone();
        this.zval = (double[]) dArr3.clone();
        int i = length - 1;
        int i2 = length2 - 1;
        int i3 = length3 - 1;
        this.splines = (TricubicSplineFunction[][][]) Array.newInstance((Class<?>) TricubicSplineFunction.class, i, i2, i3);
        int i4 = 0;
        while (i4 < i) {
            if (dArr4[i4].length != length2) {
                throw new DimensionMismatchException(dArr4[i4].length, length2);
            }
            if (dArr5[i4].length != length2) {
                throw new DimensionMismatchException(dArr5[i4].length, length2);
            }
            if (dArr6[i4].length != length2) {
                throw new DimensionMismatchException(dArr6[i4].length, length2);
            }
            if (dArr7[i4].length != length2) {
                throw new DimensionMismatchException(dArr7[i4].length, length2);
            }
            if (dArr8[i4].length != length2) {
                throw new DimensionMismatchException(dArr8[i4].length, length2);
            }
            if (dArr9[i4].length != length2) {
                throw new DimensionMismatchException(dArr9[i4].length, length2);
            }
            if (dArr10[i4].length != length2) {
                throw new DimensionMismatchException(dArr10[i4].length, length2);
            }
            if (dArr11[i4].length != length2) {
                throw new DimensionMismatchException(dArr11[i4].length, length2);
            }
            int i5 = i4 + 1;
            int i6 = i;
            int i7 = 0;
            while (i7 < i2) {
                int i8 = i2;
                if (dArr4[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr4[i4][i7].length, length3);
                }
                if (dArr5[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr5[i4][i7].length, length3);
                }
                if (dArr6[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr6[i4][i7].length, length3);
                }
                if (dArr7[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr7[i4][i7].length, length3);
                }
                if (dArr8[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr8[i4][i7].length, length3);
                }
                if (dArr9[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr9[i4][i7].length, length3);
                }
                if (dArr10[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr10[i4][i7].length, length3);
                }
                if (dArr11[i4][i7].length != length3) {
                    throw new DimensionMismatchException(dArr11[i4][i7].length, length3);
                }
                int i9 = i7 + 1;
                int i10 = length2;
                int i11 = 0;
                while (i11 < i3) {
                    int i12 = i11 + 1;
                    this.splines[i4][i7][i11] = new TricubicSplineFunction(computeSplineCoefficients(new double[]{dArr4[i4][i7][i11], dArr4[i5][i7][i11], dArr4[i4][i9][i11], dArr4[i5][i9][i11], dArr4[i4][i7][i12], dArr4[i5][i7][i12], dArr4[i4][i9][i12], dArr4[i5][i9][i12], dArr5[i4][i7][i11], dArr5[i5][i7][i11], dArr5[i4][i9][i11], dArr5[i5][i9][i11], dArr5[i4][i7][i12], dArr5[i5][i7][i12], dArr5[i4][i9][i12], dArr5[i5][i9][i12], dArr6[i4][i7][i11], dArr6[i5][i7][i11], dArr6[i4][i9][i11], dArr6[i5][i9][i11], dArr6[i4][i7][i12], dArr6[i5][i7][i12], dArr6[i4][i9][i12], dArr6[i5][i9][i12], dArr7[i4][i7][i11], dArr7[i5][i7][i11], dArr7[i4][i9][i11], dArr7[i5][i9][i11], dArr7[i4][i7][i12], dArr7[i5][i7][i12], dArr7[i4][i9][i12], dArr7[i5][i9][i12], dArr8[i4][i7][i11], dArr8[i5][i7][i11], dArr8[i4][i9][i11], dArr8[i5][i9][i11], dArr8[i4][i7][i12], dArr8[i5][i7][i12], dArr8[i4][i9][i12], dArr8[i5][i9][i12], dArr9[i4][i7][i11], dArr9[i5][i7][i11], dArr9[i4][i9][i11], dArr9[i5][i9][i11], dArr9[i4][i7][i12], dArr9[i5][i7][i12], dArr9[i4][i9][i12], dArr9[i5][i9][i12], dArr10[i4][i7][i11], dArr10[i5][i7][i11], dArr10[i4][i9][i11], dArr10[i5][i9][i11], dArr10[i4][i7][i12], dArr10[i5][i7][i12], dArr10[i4][i9][i12], dArr10[i5][i9][i12], dArr11[i4][i7][i11], dArr11[i5][i7][i11], dArr11[i4][i9][i11], dArr11[i5][i9][i11], dArr11[i4][i7][i12], dArr11[i5][i7][i12], dArr11[i4][i9][i12], dArr11[i5][i9][i12]}));
                    i9 = i9;
                    i5 = i5;
                    i11 = i12;
                    i3 = i3;
                }
                i7 = i9;
                length2 = i10;
                i2 = i8;
            }
            i4 = i5;
            i = i6;
        }
    }

    private double[] computeSplineCoefficients(double[] dArr) {
        double[] dArr2 = new double[64];
        for (int i = 0; i < 64; i++) {
            double d2 = 0.0d;
            double[] dArr3 = AINV[i];
            for (int i2 = 0; i2 < 64; i2++) {
                d2 += dArr3[i2] * dArr[i2];
            }
            dArr2[i] = d2;
        }
        return dArr2;
    }

    private int searchIndex(double d2, double[] dArr) {
        if (d2 < dArr[0]) {
            return -1;
        }
        int length = dArr.length;
        for (int i = 1; i < length; i++) {
            if (d2 <= dArr[i]) {
                return i - 1;
            }
        }
        return -1;
    }

    @Override // org.apache.commons.math3.analysis.TrivariateFunction
    public double value(double d2, double d3, double d4) throws OutOfRangeException {
        int iSearchIndex = searchIndex(d2, this.xval);
        if (iSearchIndex == -1) {
            Double dValueOf = Double.valueOf(d2);
            Double dValueOf2 = Double.valueOf(this.xval[0]);
            double[] dArr = this.xval;
            throw new OutOfRangeException(dValueOf, dValueOf2, Double.valueOf(dArr[dArr.length - 1]));
        }
        int iSearchIndex2 = searchIndex(d3, this.yval);
        if (iSearchIndex2 == -1) {
            Double dValueOf3 = Double.valueOf(d3);
            Double dValueOf4 = Double.valueOf(this.yval[0]);
            double[] dArr2 = this.yval;
            throw new OutOfRangeException(dValueOf3, dValueOf4, Double.valueOf(dArr2[dArr2.length - 1]));
        }
        int iSearchIndex3 = searchIndex(d4, this.zval);
        if (iSearchIndex3 == -1) {
            Double dValueOf5 = Double.valueOf(d4);
            Double dValueOf6 = Double.valueOf(this.zval[0]);
            double[] dArr3 = this.zval;
            throw new OutOfRangeException(dValueOf5, dValueOf6, Double.valueOf(dArr3[dArr3.length - 1]));
        }
        double[] dArr4 = this.xval;
        double d5 = (d2 - dArr4[iSearchIndex]) / (dArr4[iSearchIndex + 1] - dArr4[iSearchIndex]);
        double[] dArr5 = this.yval;
        double d6 = (d3 - dArr5[iSearchIndex2]) / (dArr5[iSearchIndex2 + 1] - dArr5[iSearchIndex2]);
        double[] dArr6 = this.zval;
        return this.splines[iSearchIndex][iSearchIndex2][iSearchIndex3].value(d5, d6, (d4 - dArr6[iSearchIndex3]) / (dArr6[iSearchIndex3 + 1] - dArr6[iSearchIndex3]));
    }
}
