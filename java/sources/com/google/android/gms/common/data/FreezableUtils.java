package com.google.android.gms.common.data;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.math3.stat.descriptive.rank.PSquarePercentile;

/* JADX INFO: loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        PSquarePercentile.FixedCapacityList fixedCapacityList = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            fixedCapacityList.add(arrayList.get(i).freeze());
        }
        return fixedCapacityList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        PSquarePercentile.FixedCapacityList fixedCapacityList = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            fixedCapacityList.add(it.next().freeze());
        }
        return fixedCapacityList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        PSquarePercentile.FixedCapacityList fixedCapacityList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e2 : eArr) {
            fixedCapacityList.add(e2.freeze());
        }
        return fixedCapacityList;
    }
}
