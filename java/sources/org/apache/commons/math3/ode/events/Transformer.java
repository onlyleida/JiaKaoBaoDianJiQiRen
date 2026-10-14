package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
enum Transformer {
    UNINITIALIZED { // from class: org.apache.commons.math3.ode.events.Transformer.1
        @Override // org.apache.commons.math3.ode.events.Transformer
        protected double transformed(double d2) {
            return 0.0d;
        }
    },
    PLUS { // from class: org.apache.commons.math3.ode.events.Transformer.2
        @Override // org.apache.commons.math3.ode.events.Transformer
        protected double transformed(double d2) {
            return d2;
        }
    },
    MINUS { // from class: org.apache.commons.math3.ode.events.Transformer.3
        @Override // org.apache.commons.math3.ode.events.Transformer
        protected double transformed(double d2) {
            return -d2;
        }
    },
    MIN { // from class: org.apache.commons.math3.ode.events.Transformer.4
        @Override // org.apache.commons.math3.ode.events.Transformer
        protected double transformed(double d2) {
            return FastMath.min(-Precision.SAFE_MIN, FastMath.min(-d2, d2));
        }
    },
    MAX { // from class: org.apache.commons.math3.ode.events.Transformer.5
        @Override // org.apache.commons.math3.ode.events.Transformer
        protected double transformed(double d2) {
            return FastMath.max(Precision.SAFE_MIN, FastMath.max(-d2, d2));
        }
    };

    protected abstract double transformed(double d2);
}
