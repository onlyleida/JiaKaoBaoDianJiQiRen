package org.apache.commons.math3.util;

import java.util.EventListener;

/* JADX INFO: loaded from: classes6.dex */
public interface IterationListener extends EventListener {
    void initializationPerformed(IterationEvent iterationEvent);

    void iterationPerformed(IterationEvent iterationEvent);

    void iterationStarted(IterationEvent iterationEvent);

    void terminationPerformed(IterationEvent iterationEvent);
}
