package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.optimization.BaseOptimizer;
import org.apache.commons.math3.optimization.GoalType;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public interface BaseUnivariateOptimizer<FUNC extends UnivariateFunction> extends BaseOptimizer<UnivariatePointValuePair> {
    UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d2, double d3);

    UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d2, double d3, double d4);
}
