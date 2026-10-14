package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;

/* JADX INFO: loaded from: classes6.dex */
public class QuantizationError implements MapDataVisualization {
    private final DistanceMeasure distance;

    public QuantizationError(DistanceMeasure distanceMeasure) {
        this.distance = distanceMeasure;
    }

    @Override // org.apache.commons.math3.ml.neuralnet.twod.util.MapDataVisualization
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        int i = 1;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, numberOfRows, numberOfColumns);
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, numberOfRows, numberOfColumns);
        for (double[] dArr2 : iterable) {
            Neuron neuronFindBest = MapUtils.findBest(dArr2, neuronSquareMesh2D, this.distance);
            LocationFinder.Location location = locationFinder.getLocation(neuronFindBest);
            int row = location.getRow();
            int column = location.getColumn();
            int[] iArr2 = iArr[row];
            iArr2[column] = iArr2[column] + i;
            double[] dArr3 = dArr[row];
            dArr3[column] = dArr3[column] + this.distance.compute(dArr2, neuronFindBest.getFeatures());
            i = 1;
        }
        for (int i2 = 0; i2 < numberOfRows; i2++) {
            for (int i3 = 0; i3 < numberOfColumns; i3++) {
                int i4 = iArr[i2][i3];
                if (i4 != 0) {
                    double[] dArr4 = dArr[i2];
                    dArr4[i3] = dArr4[i3] / ((double) i4);
                }
            }
        }
        return dArr;
    }
}
