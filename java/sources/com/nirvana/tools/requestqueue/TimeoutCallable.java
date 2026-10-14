package com.nirvana.tools.requestqueue;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes6.dex */
public interface TimeoutCallable<T> extends Callable<T> {
    T onTimeout();
}
