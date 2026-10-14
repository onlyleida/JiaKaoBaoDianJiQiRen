package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public interface c {
    Object a(Continuation<? super v> continuation);

    void release();
}
