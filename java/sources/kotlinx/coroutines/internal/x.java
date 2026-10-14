package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Pair;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16040a;
    private static final String b;

    static {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Class.forName("kotlin.coroutines.jvm.internal.BaseContinuationImpl").getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
            objM139constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f16040a = (String) objM139constructorimpl;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(Class.forName("kotlinx.coroutines.internal.x").getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th2));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl2) != null) {
            objM139constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        b = (String) objM139constructorimpl2;
    }

    public static final StackTraceElement b(String str) {
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    private static final <E extends Throwable> Pair<E, StackTraceElement[]> c(E e2) {
        boolean z;
        Throwable cause = e2.getCause();
        if (cause == null || !kotlin.jvm.internal.r.a(cause.getClass(), e2.getClass())) {
            return kotlin.l.a(e2, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e2.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (h(stackTraceElement)) {
                z = true;
                return z ? kotlin.l.a(cause, stackTrace) : kotlin.l.a(e2, new StackTraceElement[0]);
            }
        }
        z = false;
        if (z) {
        }
    }

    private static final <E extends Throwable> E d(E e2, E e3, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(b("Coroutine boundary"));
        StackTraceElement[] stackTrace = e2.getStackTrace();
        int iG = g(stackTrace, f16040a);
        int i = 0;
        if (iG == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            e3.setStackTrace((StackTraceElement[]) array);
            return e3;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + iG];
        for (int i2 = 0; i2 < iG; i2++) {
            stackTraceElementArr[i2] = stackTrace[i2];
        }
        Iterator<T> it = arrayDeque.iterator();
        while (it.hasNext()) {
            stackTraceElementArr[iG + i] = (StackTraceElement) it.next();
            i++;
        }
        e3.setStackTrace(stackTraceElementArr);
        return e3;
    }

    private static final ArrayDeque<StackTraceElement> e(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            if (!(coroutineStackFrame instanceof CoroutineStackFrame)) {
                coroutineStackFrame = null;
            }
            if (coroutineStackFrame == null || (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) == null) {
                break;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
        return arrayDeque;
    }

    private static final boolean f(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && kotlin.jvm.internal.r.a(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && kotlin.jvm.internal.r.a(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && kotlin.jvm.internal.r.a(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int g(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            if (kotlin.jvm.internal.r.a(str, stackTraceElementArr[i].getClassName())) {
                return i;
            }
        }
        return -1;
    }

    public static final boolean h(StackTraceElement stackTraceElement) {
        return kotlin.text.t.B(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
    }

    private static final void i(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (h(stackTraceElementArr[i])) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 < i2) {
            return;
        }
        while (true) {
            if (f(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i2) {
                return;
            } else {
                length2--;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E j(E e2, CoroutineStackFrame coroutineStackFrame) {
        Pair pairC = c(e2);
        Throwable th = (Throwable) pairC.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) pairC.component2();
        E e3 = (E) ExceptionsConstuctorKt.e(th);
        if (e3 == null || (!kotlin.jvm.internal.r.a(e3.getMessage(), th.getMessage()))) {
            return e2;
        }
        ArrayDeque<StackTraceElement> arrayDequeE = e(coroutineStackFrame);
        if (arrayDequeE.isEmpty()) {
            return e2;
        }
        if (th != e2) {
            i(stackTraceElementArr, arrayDequeE);
        }
        d(th, e3, arrayDequeE);
        return e3;
    }

    public static final <E extends Throwable> E k(E e2) {
        E e3;
        if (!l0.d() || (e3 = (E) ExceptionsConstuctorKt.e(e2)) == null) {
            return e2;
        }
        l(e3);
        return e3;
    }

    private static final <E extends Throwable> E l(E e2) {
        StackTraceElement[] stackTrace = e2.getStackTrace();
        int length = stackTrace.length;
        int iG = g(stackTrace, b);
        int i = iG + 1;
        int iG2 = g(stackTrace, f16040a);
        int i2 = 0;
        int i3 = (length - iG) - (iG2 == -1 ? 0 : length - iG2);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i3];
        while (i2 < i3) {
            stackTraceElementArr[i2] = i2 == 0 ? b("Coroutine boundary") : stackTrace[(i + i2) - 1];
            i2++;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[RETURN] */
    public static final <E extends Throwable> E m(E e2) {
        E e3 = (E) e2.getCause();
        if (e3 != null) {
            boolean z = true;
            if (!(!kotlin.jvm.internal.r.a(e3.getClass(), e2.getClass()))) {
                for (StackTraceElement stackTraceElement : e2.getStackTrace()) {
                    if (h(stackTraceElement)) {
                        if (z) {
                            return e3;
                        }
                    }
                }
                z = false;
                if (z) {
                    return e3;
                }
            }
        }
        return e2;
    }
}
