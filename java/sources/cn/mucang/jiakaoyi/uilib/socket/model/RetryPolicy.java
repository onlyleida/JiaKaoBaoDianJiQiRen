package cn.mucang.jiakaoyi.uilib.socket.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class RetryPolicy implements Serializable {
    public int maxTimes;
    public long sleepMsBetweenRetries;
}
