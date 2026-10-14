package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.exception.MathInternalError;

/* JADX INFO: loaded from: classes6.dex */
public enum FilterType {
    TRIGGER_ONLY_DECREASING_EVENTS { // from class: org.apache.commons.math3.ode.events.FilterType.1
        @Override // org.apache.commons.math3.ode.events.FilterType
        protected boolean getTriggeredIncreasing() {
            return false;
        }

        @Override // org.apache.commons.math3.ode.events.FilterType
        protected Transformer selectTransformer(Transformer transformer, double d2, boolean z) {
            if (z) {
                int i = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
                if (i == 1) {
                    if (d2 > 0.0d) {
                        return Transformer.MAX;
                    }
                    return d2 < 0.0d ? Transformer.PLUS : Transformer.UNINITIALIZED;
                }
                if (i == 2) {
                    return d2 >= 0.0d ? Transformer.MIN : transformer;
                }
                if (i == 3) {
                    return d2 >= 0.0d ? Transformer.MAX : transformer;
                }
                if (i == 4) {
                    return d2 <= 0.0d ? Transformer.MINUS : transformer;
                }
                if (i == 5) {
                    return d2 <= 0.0d ? Transformer.PLUS : transformer;
                }
                throw new MathInternalError();
            }
            int i2 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
            if (i2 == 1) {
                if (d2 > 0.0d) {
                    return Transformer.MINUS;
                }
                return d2 < 0.0d ? Transformer.MIN : Transformer.UNINITIALIZED;
            }
            if (i2 == 2) {
                return d2 <= 0.0d ? Transformer.MAX : transformer;
            }
            if (i2 == 3) {
                return d2 <= 0.0d ? Transformer.MIN : transformer;
            }
            if (i2 == 4) {
                return d2 >= 0.0d ? Transformer.PLUS : transformer;
            }
            if (i2 == 5) {
                return d2 >= 0.0d ? Transformer.MINUS : transformer;
            }
            throw new MathInternalError();
        }
    },
    TRIGGER_ONLY_INCREASING_EVENTS { // from class: org.apache.commons.math3.ode.events.FilterType.2
        @Override // org.apache.commons.math3.ode.events.FilterType
        protected boolean getTriggeredIncreasing() {
            return true;
        }

        @Override // org.apache.commons.math3.ode.events.FilterType
        protected Transformer selectTransformer(Transformer transformer, double d2, boolean z) {
            if (z) {
                int i = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
                if (i == 1) {
                    if (d2 > 0.0d) {
                        return Transformer.PLUS;
                    }
                    return d2 < 0.0d ? Transformer.MIN : Transformer.UNINITIALIZED;
                }
                if (i == 2) {
                    return d2 <= 0.0d ? Transformer.MAX : transformer;
                }
                if (i == 3) {
                    return d2 <= 0.0d ? Transformer.MIN : transformer;
                }
                if (i == 4) {
                    return d2 >= 0.0d ? Transformer.PLUS : transformer;
                }
                if (i == 5) {
                    return d2 >= 0.0d ? Transformer.MINUS : transformer;
                }
                throw new MathInternalError();
            }
            int i2 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$ode$events$Transformer[transformer.ordinal()];
            if (i2 == 1) {
                if (d2 > 0.0d) {
                    return Transformer.MAX;
                }
                return d2 < 0.0d ? Transformer.MINUS : Transformer.UNINITIALIZED;
            }
            if (i2 == 2) {
                return d2 >= 0.0d ? Transformer.MIN : transformer;
            }
            if (i2 == 3) {
                return d2 >= 0.0d ? Transformer.MAX : transformer;
            }
            if (i2 == 4) {
                return d2 <= 0.0d ? Transformer.MINUS : transformer;
            }
            if (i2 == 5) {
                return d2 <= 0.0d ? Transformer.PLUS : transformer;
            }
            throw new MathInternalError();
        }
    };

    /* JADX INFO: renamed from: org.apache.commons.math3.ode.events.FilterType$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$ode$events$Transformer;

        static {
            int[] iArr = new int[Transformer.values().length];
            $SwitchMap$org$apache$commons$math3$ode$events$Transformer = iArr;
            try {
                iArr[Transformer.UNINITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MINUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ode$events$Transformer[Transformer.MAX.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected abstract boolean getTriggeredIncreasing();

    protected abstract Transformer selectTransformer(Transformer transformer, double d2, boolean z);
}
