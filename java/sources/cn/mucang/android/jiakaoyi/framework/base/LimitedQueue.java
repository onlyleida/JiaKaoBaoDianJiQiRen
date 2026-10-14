package cn.mucang.android.jiakaoyi.framework.base;

import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class LimitedQueue<E> extends LinkedList<E> {
    private final int limit;

    public LimitedQueue(int i) {
        this.limit = i;
    }

    @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
    public boolean add(E e2) {
        super.add(e2);
        while (size() > this.limit) {
            super.remove();
        }
        return true;
    }
}
