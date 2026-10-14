package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class ExceptionsConstuctorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f16002a = d(Throwable.class, -1);
    private static final ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> c = new WeakHashMap<>();

    public static final class a<T> implements Comparator<T> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
        }
    }

    private static final Function1<Throwable, Throwable> a(final Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Throwable invoke(Throwable th) {
                    Object objM139constructorimpl;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Object objNewInstance = constructor.newInstance(new Object[0]);
                        if (objNewInstance == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                        }
                        Throwable th2 = (Throwable) objNewInstance;
                        th2.initCause(th);
                        objM139constructorimpl = Result.m139constructorimpl(th2);
                        if (Result.m145isFailureimpl(objM139constructorimpl)) {
                            objM139constructorimpl = null;
                        }
                        return (Throwable) objM139constructorimpl;
                    } catch (Throwable th3) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th3));
                    }
                }
            };
        }
        if (length != 1) {
            if (length == 2 && kotlin.jvm.internal.r.a(parameterTypes[0], String.class) && kotlin.jvm.internal.r.a(parameterTypes[1], Throwable.class)) {
                return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Throwable invoke(Throwable th) {
                        Object objM139constructorimpl;
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            Object objNewInstance = constructor.newInstance(th.getMessage(), th);
                            if (objNewInstance == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                            }
                            objM139constructorimpl = Result.m139constructorimpl((Throwable) objNewInstance);
                            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                                objM139constructorimpl = null;
                            }
                            return (Throwable) objM139constructorimpl;
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th2));
                        }
                    }
                };
            }
            return null;
        }
        Class<?> cls = parameterTypes[0];
        if (kotlin.jvm.internal.r.a(cls, Throwable.class)) {
            return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Throwable invoke(Throwable th) {
                    Object objM139constructorimpl;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Object objNewInstance = constructor.newInstance(th);
                        if (objNewInstance == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                        }
                        objM139constructorimpl = Result.m139constructorimpl((Throwable) objNewInstance);
                        if (Result.m145isFailureimpl(objM139constructorimpl)) {
                            objM139constructorimpl = null;
                        }
                        return (Throwable) objM139constructorimpl;
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th2));
                    }
                }
            };
        }
        if (kotlin.jvm.internal.r.a(cls, String.class)) {
            return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Throwable invoke(Throwable th) {
                    Object objM139constructorimpl;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Object objNewInstance = constructor.newInstance(th.getMessage());
                        if (objNewInstance == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                        }
                        Throwable th2 = (Throwable) objNewInstance;
                        th2.initCause(th);
                        objM139constructorimpl = Result.m139constructorimpl(th2);
                        if (Result.m145isFailureimpl(objM139constructorimpl)) {
                            objM139constructorimpl = null;
                        }
                        return (Throwable) objM139constructorimpl;
                    } catch (Throwable th3) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th3));
                    }
                }
            };
        }
        return null;
    }

    private static final int b(Class<?> cls, int i) {
        do {
            int i2 = 0;
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i2++;
                }
            }
            i += i2;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }

    static /* synthetic */ int c(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return b(cls, i);
    }

    private static final int d(Class<?> cls, int i) {
        Object objM139constructorimpl;
        kotlin.jvm.a.e(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Integer.valueOf(c(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Integer numValueOf = Integer.valueOf(i);
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = numValueOf;
        }
        return ((Number) objM139constructorimpl).intValue();
    }

    public static final <E extends Throwable> E e(E e2) {
        Object objM139constructorimpl;
        if (e2 instanceof kotlinx.coroutines.c0) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(((kotlinx.coroutines.c0) e2).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            return (E) (Result.m145isFailureimpl(objM139constructorimpl) ? null : objM139constructorimpl);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = b;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        lock.lock();
        try {
            Function1<Throwable, Throwable> function1 = c.get(e2.getClass());
            lock.unlock();
            if (function1 != null) {
                return (E) function1.invoke(e2);
            }
            int i = 0;
            if (f16002a != d(e2.getClass(), 0)) {
                ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i2 = 0; i2 < readHoldCount; i2++) {
                    lock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    c.put((Class<? extends Throwable>) e2.getClass(), new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$4$1
                        @Override // kotlin.jvm.functions.Function1
                        public final Void invoke(Throwable th2) {
                            return null;
                        }
                    });
                    kotlin.v vVar = kotlin.v.f15822a;
                    while (i < readHoldCount) {
                        lock2.lock();
                        i++;
                    }
                    return null;
                } finally {
                    while (i < readHoldCount) {
                        lock2.lock();
                        i++;
                    }
                    writeLock.unlock();
                }
            }
            Iterator it = ArraysKt___ArraysKt.Y(e2.getClass().getConstructors(), new a()).iterator();
            Function1<Throwable, Throwable> function1A = null;
            while (it.hasNext() && (function1A = a((Constructor) it.next())) == null) {
            }
            ReentrantReadWriteLock reentrantReadWriteLock2 = b;
            ReentrantReadWriteLock.ReadLock lock3 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i3 = 0; i3 < readHoldCount2; i3++) {
                lock3.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                c.put((Class<? extends Throwable>) e2.getClass(), function1A != null ? function1A : new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$5$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Void invoke(Throwable th2) {
                        return null;
                    }
                });
                kotlin.v vVar2 = kotlin.v.f15822a;
                while (i < readHoldCount2) {
                    lock3.lock();
                    i++;
                }
                writeLock2.unlock();
                if (function1A != null) {
                    return (E) function1A.invoke(e2);
                }
                return null;
            } catch (Throwable th2) {
                while (i < readHoldCount2) {
                    lock3.lock();
                    i++;
                }
                writeLock2.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            lock.unlock();
            throw th3;
        }
    }
}
