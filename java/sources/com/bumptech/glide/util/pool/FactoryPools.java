package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.core.util.e;
import androidx.core.util.f;
import androidx.core.util.g;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FactoryPools {
    private static final int DEFAULT_POOL_SIZE = 20;
    private static final Resetter<Object> EMPTY_RESETTER = new Resetter<Object>() { // from class: com.bumptech.glide.util.pool.FactoryPools.1
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public void reset(Object obj) {
        }
    };
    private static final String TAG = "FactoryPools";

    public interface Factory<T> {
        T create();
    }

    private static final class FactoryPool<T> implements e<T> {
        private final Factory<T> factory;
        private final e<T> pool;
        private final Resetter<T> resetter;

        FactoryPool(e<T> eVar, Factory<T> factory, Resetter<T> resetter) {
            this.pool = eVar;
            this.factory = factory;
            this.resetter = resetter;
        }

        @Override // androidx.core.util.e
        public T acquire() {
            T tAcquire = this.pool.acquire();
            if (tAcquire == null) {
                tAcquire = this.factory.create();
                if (Log.isLoggable(FactoryPools.TAG, 2)) {
                    Log.v(FactoryPools.TAG, "Created new " + tAcquire.getClass());
                }
            }
            if (tAcquire instanceof Poolable) {
                ((Poolable) tAcquire).getVerifier().setRecycled(false);
            }
            return tAcquire;
        }

        @Override // androidx.core.util.e
        public boolean release(T t) {
            if (t instanceof Poolable) {
                ((Poolable) t).getVerifier().setRecycled(true);
            }
            this.resetter.reset(t);
            return this.pool.release(t);
        }
    }

    public interface Poolable {
        StateVerifier getVerifier();
    }

    public interface Resetter<T> {
        void reset(T t);
    }

    private FactoryPools() {
    }

    private static <T extends Poolable> e<T> build(e<T> eVar, Factory<T> factory) {
        return build(eVar, factory, emptyResetter());
    }

    private static <T> Resetter<T> emptyResetter() {
        return (Resetter<T>) EMPTY_RESETTER;
    }

    public static <T extends Poolable> e<T> simple(int i, Factory<T> factory) {
        return build(new f(i), factory);
    }

    public static <T extends Poolable> e<T> threadSafe(int i, Factory<T> factory) {
        return build(new g(i), factory);
    }

    public static <T> e<List<T>> threadSafeList() {
        return threadSafeList(20);
    }

    private static <T> e<T> build(e<T> eVar, Factory<T> factory, Resetter<T> resetter) {
        return new FactoryPool(eVar, factory, resetter);
    }

    public static <T> e<List<T>> threadSafeList(int i) {
        return build(new g(i), new Factory<List<T>>() { // from class: com.bumptech.glide.util.pool.FactoryPools.2
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            public List<T> create() {
                return new ArrayList();
            }
        }, new Resetter<List<T>>() { // from class: com.bumptech.glide.util.pool.FactoryPools.3
            @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
            public void reset(List<T> list) {
                list.clear();
            }
        });
    }
}
