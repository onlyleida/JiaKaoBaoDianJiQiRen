package org.apache.commons.math3.geometry;

import java.io.Serializable;
import org.apache.commons.math3.geometry.Space;

/* JADX INFO: loaded from: classes6.dex */
public interface Point<S extends Space> extends Serializable {
    double distance(Point<S> point);

    Space getSpace();

    boolean isNaN();
}
