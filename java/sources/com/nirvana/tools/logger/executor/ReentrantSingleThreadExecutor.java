package com.nirvana.tools.logger.executor;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class ReentrantSingleThreadExecutor implements Executor {
    private ExecutorService mExecutorService;
    private Thread mWorkThread;

    public ReentrantSingleThreadExecutor(final String str) {
        this.mExecutorService = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.nirvana.tools.logger.executor.ReentrantSingleThreadExecutor.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                ReentrantSingleThreadExecutor.this.mWorkThread = new Thread(runnable, str);
                return ReentrantSingleThreadExecutor.this.mWorkThread;
            }
        });
    }

    private boolean isSelfThread() {
        Thread thread = this.mWorkThread;
        return thread != null && thread.getId() == Thread.currentThread().getId();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (isSelfThread()) {
            runnable.run();
        } else {
            this.mExecutorService.execute(runnable);
        }
    }
}
