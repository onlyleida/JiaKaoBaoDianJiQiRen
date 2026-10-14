package com.iflytek.cloud.msc.util;

import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, ConcurrentLinkedQueue<byte[]>> f12357a = new HashMap<>();

    public void a(String str, byte[] bArr) {
        if (this.f12357a.containsKey(str)) {
            this.f12357a.get(str).add(bArr);
            return;
        }
        ConcurrentLinkedQueue<byte[]> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        concurrentLinkedQueue.add(bArr);
        this.f12357a.put(str, concurrentLinkedQueue);
    }

    public void a() throws Throwable {
        for (String str : this.f12357a.keySet()) {
            FileUtil.saveFile(this.f12357a.get(str), str);
        }
    }
}
