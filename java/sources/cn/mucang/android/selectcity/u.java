package cn.mucang.android.selectcity;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile u f8945a;
    private static final Map<String, String> b;

    static {
        HashMap map = new HashMap(30);
        b = map;
        map.put("130000", "130100");
        map.put("140000", "140100");
        map.put("150000", "150100");
        map.put("210000", "210100");
        map.put("220000", "220100");
        map.put("230000", "230100");
        map.put("320000", "320100");
        map.put("330000", "330100");
        map.put("340000", "340100");
        map.put("350000", "350100");
        map.put("360000", "360100");
        map.put("370000", "370100");
        map.put("410000", "410100");
        map.put("420000", "420100");
        map.put("430000", "430100");
        map.put("440000", "440100");
        map.put("450000", "450100");
        map.put("460000", "460100");
        map.put("510000", "510100");
        map.put("520000", "520100");
        map.put("530000", "530100");
        map.put("540000", "540100");
        map.put("610000", "610100");
        map.put("620000", "620100");
        map.put("630000", "630100");
        map.put("640000", "640100");
        map.put("650000", "650100");
    }

    private u() {
        new LinkedList();
    }

    public static u a() {
        if (f8945a == null) {
            synchronized (u.class) {
                if (f8945a == null) {
                    f8945a = new u();
                }
            }
        }
        return f8945a;
    }

    public boolean b(String str) {
        return b.containsKey(str);
    }
}
