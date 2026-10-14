package org.apache.commons.math3.optim;

/* JADX INFO: loaded from: classes6.dex */
public interface ConvergenceChecker<PAIR> {
    boolean converged(int i, PAIR pair, PAIR pair2);
}
