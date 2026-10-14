package cn.mucang.sundial.library.util;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.o0;
import kotlin.jvm.internal.r;
import kotlin.l;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\u000bJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR.\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcn/mucang/sundial/library/util/ConvertNum;", "", "", "convert", "()Ljava/lang/String;", "", "num", "I", "getNum", "()I", "setNum", "(I)V", "", "vMap", "Ljava/util/Map;", "getVMap", "()Ljava/util/Map;", "setVMap", "(Ljava/util/Map;)V", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ConvertNum {
    private int num;
    private Map<Integer, String> vMap = o0.l(l.a(1, "一"), l.a(2, "二"), l.a(3, "三"), l.a(4, "四"), l.a(5, "五"), l.a(6, "六"), l.a(7, "七"), l.a(8, "八"), l.a(9, "九"), l.a(10, "十"));

    public ConvertNum(int i) {
        this.num = i;
    }

    public final String convert() {
        int i = this.num;
        if (1 <= i && 10 >= i) {
            return String.valueOf(this.vMap.get(Integer.valueOf(i)));
        }
        if (11 <= i && 19 >= i) {
            return "十" + this.vMap.get(Integer.valueOf(this.num % 10));
        }
        if (20 > i || 99 < i) {
            return "三";
        }
        if (i % 10 == 0) {
            return r.m(this.vMap.get(Integer.valueOf(i / 10)), "十");
        }
        return this.vMap.get(Integer.valueOf(this.num / 10)) + "十" + this.vMap.get(Integer.valueOf(this.num % 10));
    }

    public final int getNum() {
        return this.num;
    }

    public final Map<Integer, String> getVMap() {
        return this.vMap;
    }

    public final void setNum(int i) {
        this.num = i;
    }

    public final void setVMap(Map<Integer, String> map) {
        r.e(map, "<set-?>");
        this.vMap = map;
    }
}
