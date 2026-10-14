package org.apache.commons.math3.optim.linear;

import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

/* JADX INFO: loaded from: classes6.dex */
public class SolutionCallback implements OptimizationData {
    private SimplexTableau tableau;

    public PointValuePair getSolution() {
        SimplexTableau simplexTableau = this.tableau;
        if (simplexTableau != null) {
            return simplexTableau.getSolution();
        }
        return null;
    }

    public boolean isSolutionOptimal() {
        SimplexTableau simplexTableau = this.tableau;
        if (simplexTableau != null) {
            return simplexTableau.isOptimal();
        }
        return false;
    }

    void setTableau(SimplexTableau simplexTableau) {
        this.tableau = simplexTableau;
    }
}
