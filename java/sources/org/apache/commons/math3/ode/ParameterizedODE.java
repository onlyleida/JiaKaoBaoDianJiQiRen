package org.apache.commons.math3.ode;

/* JADX INFO: loaded from: classes6.dex */
public interface ParameterizedODE extends Parameterizable {
    double getParameter(String str) throws UnknownParameterException;

    void setParameter(String str, double d2) throws UnknownParameterException;
}
