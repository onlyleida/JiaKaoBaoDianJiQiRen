package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class FieldExpandableODE<T extends RealFieldElement<T>> {
    private List<FieldSecondaryEquations<T>> components = new ArrayList();
    private FieldEquationsMapper<T> mapper;
    private final FirstOrderFieldDifferentialEquations<T> primary;

    public FieldExpandableODE(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations) {
        this.primary = firstOrderFieldDifferentialEquations;
        this.mapper = new FieldEquationsMapper<>(null, firstOrderFieldDifferentialEquations.getDimension());
    }

    public int addSecondaryEquations(FieldSecondaryEquations<T> fieldSecondaryEquations) {
        this.components.add(fieldSecondaryEquations);
        this.mapper = new FieldEquationsMapper<>(this.mapper, fieldSecondaryEquations.getDimension());
        return this.components.size();
    }

    public T[] computeDerivatives(T t, T[] tArr) throws MaxCountExceededException, DimensionMismatchException {
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(t.getField(), this.mapper.getTotalDimension()));
        int i = 0;
        RealFieldElement[] realFieldElementArrExtractEquationData = this.mapper.extractEquationData(0, tArr);
        RealFieldElement[] realFieldElementArrComputeDerivatives = this.primary.computeDerivatives(t, realFieldElementArrExtractEquationData);
        this.mapper.insertEquationData(0, realFieldElementArrComputeDerivatives, tArr2);
        while (true) {
            i++;
            if (i >= this.mapper.getNumberOfEquations()) {
                return tArr2;
            }
            this.mapper.insertEquationData(i, this.components.get(i - 1).computeDerivatives(t, realFieldElementArrExtractEquationData, realFieldElementArrComputeDerivatives, this.mapper.extractEquationData(i, tArr)), tArr2);
        }
    }

    public FieldEquationsMapper<T> getMapper() {
        return this.mapper;
    }

    public void init(T t, T[] tArr, T t2) {
        int i = 0;
        RealFieldElement[] realFieldElementArrExtractEquationData = this.mapper.extractEquationData(0, tArr);
        this.primary.init(t, realFieldElementArrExtractEquationData, t2);
        while (true) {
            i++;
            if (i >= this.mapper.getNumberOfEquations()) {
                return;
            }
            this.components.get(i - 1).init(t, realFieldElementArrExtractEquationData, this.mapper.extractEquationData(i, tArr), t2);
        }
    }
}
