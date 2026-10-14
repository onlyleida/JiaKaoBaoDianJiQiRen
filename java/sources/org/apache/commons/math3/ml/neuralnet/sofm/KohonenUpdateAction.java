package org.apache.commons.math3.ml.neuralnet.sofm;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.UpdateAction;

/* JADX INFO: loaded from: classes6.dex */
public class KohonenUpdateAction implements UpdateAction {
    private final DistanceMeasure distance;
    private final LearningFactorFunction learningFactor;
    private final NeighbourhoodSizeFunction neighbourhoodSize;
    private final AtomicLong numberOfCalls = new AtomicLong(0);

    public KohonenUpdateAction(DistanceMeasure distanceMeasure, LearningFactorFunction learningFactorFunction, NeighbourhoodSizeFunction neighbourhoodSizeFunction) {
        this.distance = distanceMeasure;
        this.learningFactor = learningFactorFunction;
        this.neighbourhoodSize = neighbourhoodSizeFunction;
    }

    private boolean attemptNeuronUpdate(Neuron neuron, double[] dArr, double d2) {
        double[] features = neuron.getFeatures();
        return neuron.compareAndSetFeatures(features, computeFeatures(features, dArr, d2));
    }

    private double[] computeFeatures(double[] dArr, double[] dArr2, double d2) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr, false);
        return new ArrayRealVector(dArr2, false).subtract((RealVector) arrayRealVector).mapMultiplyToSelf(d2).add(arrayRealVector).toArray();
    }

    private Neuron findAndUpdateBestNeuron(Network network, double[] dArr, double d2) {
        Neuron neuronFindBest;
        do {
            neuronFindBest = MapUtils.findBest(dArr, network, this.distance);
        } while (!attemptNeuronUpdate(neuronFindBest, dArr, d2));
        return neuronFindBest;
    }

    private void updateNeighbouringNeuron(Neuron neuron, double[] dArr, double d2) {
        while (!attemptNeuronUpdate(neuron, dArr, d2)) {
        }
    }

    public long getNumberOfCalls() {
        return this.numberOfCalls.get();
    }

    @Override // org.apache.commons.math3.ml.neuralnet.UpdateAction
    public void update(Network network, double[] dArr) {
        long jIncrementAndGet = this.numberOfCalls.incrementAndGet() - 1;
        double dValue = this.learningFactor.value(jIncrementAndGet);
        Neuron neuronFindAndUpdateBestNeuron = findAndUpdateBestNeuron(network, dArr, dValue);
        int iValue = this.neighbourhoodSize.value(jIncrementAndGet);
        Gaussian gaussian = new Gaussian(dValue, 0.0d, iValue);
        if (iValue > 0) {
            Collection<Neuron> hashSet = new HashSet<>();
            hashSet.add(neuronFindAndUpdateBestNeuron);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(neuronFindAndUpdateBestNeuron);
            int i = 1;
            do {
                hashSet = network.getNeighbours(hashSet, hashSet2);
                Iterator<Neuron> it = hashSet.iterator();
                while (it.hasNext()) {
                    updateNeighbouringNeuron(it.next(), dArr, gaussian.value(i));
                }
                hashSet2.addAll(hashSet);
                i++;
            } while (i <= iValue);
        }
    }
}
