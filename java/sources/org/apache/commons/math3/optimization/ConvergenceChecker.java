package org.apache.commons.math3.optimization;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public interface ConvergenceChecker<PAIR> {
    boolean converged(int i, PAIR pair, PAIR pair2);
}
