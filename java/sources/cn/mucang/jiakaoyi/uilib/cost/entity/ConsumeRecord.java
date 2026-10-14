package cn.mucang.jiakaoyi.uilib.cost.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ConsumeRecord implements Serializable {
    public static final String End = "FINISH";
    public static final String Examing = "DOING";
    public static final String Start = "START";
    public String balance;
    public String consumeId;
    public long remainingSeconds;
    public long stopAfterSeconds;
}
