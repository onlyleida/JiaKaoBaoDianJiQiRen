package org.apache.commons.math3.ml.neuralnet.sofm;

import java.util.Iterator;
import org.apache.commons.math3.ml.neuralnet.Network;

/* JADX INFO: loaded from: classes6.dex */
public class KohonenTrainingTask implements Runnable {
    private final Iterator<double[]> featuresIterator;

    /* JADX INFO: renamed from: net, reason: collision with root package name */
    private final Network f16188net;
    private final KohonenUpdateAction updateAction;

    public KohonenTrainingTask(Network network, Iterator<double[]> it, KohonenUpdateAction kohonenUpdateAction) {
        this.f16188net = network;
        this.featuresIterator = it;
        this.updateAction = kohonenUpdateAction;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.featuresIterator.hasNext()) {
            this.updateAction.update(this.f16188net, this.featuresIterator.next());
        }
    }
}
