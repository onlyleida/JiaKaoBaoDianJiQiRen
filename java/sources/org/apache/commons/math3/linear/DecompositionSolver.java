package org.apache.commons.math3.linear;

/* JADX INFO: loaded from: classes6.dex */
public interface DecompositionSolver {
    RealMatrix getInverse() throws SingularMatrixException;

    boolean isNonSingular();

    RealMatrix solve(RealMatrix realMatrix) throws SingularMatrixException;

    RealVector solve(RealVector realVector) throws SingularMatrixException;
}
