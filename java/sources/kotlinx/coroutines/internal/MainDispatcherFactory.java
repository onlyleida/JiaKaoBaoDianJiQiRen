package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.d2;

/* JADX INFO: loaded from: classes6.dex */
public interface MainDispatcherFactory {
    d2 createDispatcher(List<? extends MainDispatcherFactory> list);

    int getLoadPriority();

    String hintOnError();
}
