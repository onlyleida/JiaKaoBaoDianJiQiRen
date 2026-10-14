package com.serenegiant.utils;

/* JADX INFO: loaded from: classes6.dex */
public class FpsCounter {
    private int cnt;
    private float fps;
    private int prevCnt;
    private long prevTime;
    private long startTime;
    private float totalFps;

    public FpsCounter() {
        reset();
    }

    public synchronized void count() {
        this.cnt++;
    }

    public synchronized float getFps() {
        return this.fps;
    }

    public synchronized float getTotalFps() {
        return this.totalFps;
    }

    public synchronized FpsCounter reset() {
        this.prevCnt = 0;
        this.cnt = 0;
        long jNanoTime = Time.nanoTime() - 1;
        this.prevTime = jNanoTime;
        this.startTime = jNanoTime;
        return this;
    }

    public synchronized FpsCounter update() {
        long jNanoTime = Time.nanoTime();
        int i = this.cnt;
        this.fps = ((i - this.prevCnt) * 1.0E9f) / (jNanoTime - this.prevTime);
        this.prevCnt = i;
        this.prevTime = jNanoTime;
        this.totalFps = (i * 1.0E9f) / (jNanoTime - this.startTime);
        return this;
    }
}
