package cn.mucang.android.jiakaoyi.teachingk2.videosplit;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class Segment implements Serializable {
    public long end;
    public long start;

    public Segment() {
    }

    public static Segment create(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return new Segment(jCurrentTimeMillis - ((long) i), jCurrentTimeMillis);
    }

    public Segment(long j, long j2) {
        this.start = j;
        this.end = j2;
    }
}
