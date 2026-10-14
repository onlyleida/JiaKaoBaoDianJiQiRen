package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;

/* JADX INFO: loaded from: classes6.dex */
class NestedLoops {
    private Vector2D[] loop;
    private boolean originalIsClockwise;
    private Region<Euclidean2D> polygon;
    private List<NestedLoops> surrounded;
    private final double tolerance;

    NestedLoops(double d2) {
        this.surrounded = new ArrayList();
        this.tolerance = d2;
    }

    private void setClockWise(boolean z) {
        if (this.originalIsClockwise ^ z) {
            int length = this.loop.length;
            int i = -1;
            while (true) {
                i++;
                length--;
                if (i >= length) {
                    break;
                }
                Vector2D[] vector2DArr = this.loop;
                Vector2D vector2D = vector2DArr[i];
                vector2DArr[i] = vector2DArr[length];
                vector2DArr[length] = vector2D;
            }
        }
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            it.next().setClockWise(!z);
        }
    }

    public void add(Vector2D[] vector2DArr) throws MathIllegalArgumentException {
        add(new NestedLoops(vector2DArr, this.tolerance));
    }

    public void correctOrientation() {
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            it.next().setClockWise(true);
        }
    }

    private void add(NestedLoops nestedLoops) throws MathIllegalArgumentException {
        for (NestedLoops nestedLoops2 : this.surrounded) {
            if (nestedLoops2.polygon.contains(nestedLoops.polygon)) {
                nestedLoops2.add(nestedLoops);
                return;
            }
        }
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            NestedLoops next = it.next();
            if (nestedLoops.polygon.contains(next.polygon)) {
                nestedLoops.surrounded.add(next);
                it.remove();
            }
        }
        RegionFactory regionFactory = new RegionFactory();
        Iterator<NestedLoops> it2 = this.surrounded.iterator();
        while (it2.hasNext()) {
            if (!regionFactory.intersection(nestedLoops.polygon, it2.next().polygon).isEmpty()) {
                throw new MathIllegalArgumentException(LocalizedFormats.CROSSING_BOUNDARY_LOOPS, new Object[0]);
            }
        }
        this.surrounded.add(nestedLoops);
    }

    private NestedLoops(Vector2D[] vector2DArr, double d2) throws MathIllegalArgumentException {
        if (vector2DArr[0] != null) {
            this.loop = vector2DArr;
            this.surrounded = new ArrayList();
            this.tolerance = d2;
            ArrayList arrayList = new ArrayList();
            Vector2D vector2D = vector2DArr[vector2DArr.length - 1];
            int i = 0;
            while (i < vector2DArr.length) {
                Vector2D vector2D2 = vector2DArr[i];
                Line line = new Line(vector2D, vector2D2, d2);
                arrayList.add(new SubLine(line, new IntervalsSet(line.toSubSpace((Point<Euclidean2D>) vector2D).getX(), line.toSubSpace((Point<Euclidean2D>) vector2D2).getX(), d2)));
                i++;
                vector2D = vector2D2;
            }
            PolygonsSet polygonsSet = new PolygonsSet(arrayList, d2);
            this.polygon = polygonsSet;
            if (Double.isInfinite(polygonsSet.getSize())) {
                this.polygon = new RegionFactory().getComplement(this.polygon);
                this.originalIsClockwise = false;
                return;
            } else {
                this.originalIsClockwise = true;
                return;
            }
        }
        throw new MathIllegalArgumentException(LocalizedFormats.OUTLINE_BOUNDARY_LOOP_OPEN, new Object[0]);
    }
}
