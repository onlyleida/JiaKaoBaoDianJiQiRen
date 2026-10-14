package cn.mucang.android.jiakaoyi.framework.tts.voice;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.utils.q;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class o {
    private static final LinkedHashMap<String, String> o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3580a;
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TtsGrade f3583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TtsListener f3584g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3585h;
    public final boolean i;
    public final int j;
    private String k;
    private String l;
    public TtsSpeaker m;
    public String n;

    static {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        o = linkedHashMap;
        linkedHashMap.put("在项目外长", "在项目外 长[=chang2]");
        linkedHashMap.put("系安全带", "系[=ji4]安全带");
        linkedHashMap.put("挡", "挡[=dang3]");
        linkedHashMap.put("档", "档[=dang3]");
        linkedHashMap.put("空挡", "空[=kong1]挡");
        linkedHashMap.put("空档", "空[=kong1]档");
        linkedHashMap.put("倒挡", "倒[=dao4]挡");
        linkedHashMap.put("倒档", "倒[=dao4]档");
        linkedHashMap.put("地缝", "地[=di4]缝");
        linkedHashMap.put("倒库", "倒[=dao4]库");
        linkedHashMap.put("后倒", "后倒[=dao4]");
        linkedHashMap.put("转", "转[=zhuan3]");
        linkedHashMap.put("刹", "刹[=sha1]");
        linkedHashMap.put("一", "一[=yi1]");
        linkedHashMap.put("在行驶", "在行[=xing2]驶");
        linkedHashMap.put("桩杆", "桩杆[=gan1]");
        linkedHashMap.put("ETC", "E T C");
        linkedHashMap.put("etc", "E T C");
    }

    public o(int i, String str, String str2, TtsGrade ttsGrade, TtsListener ttsListener, int i2, boolean z) {
        this(i, str, str2, ttsGrade, ttsListener, i2, z, 1);
    }

    private static String d(String str) {
        if (n0.e(str)) {
            return str;
        }
        int numericValue = Character.getNumericValue(str.charAt(0));
        if (numericValue < 48 || numericValue > 57) {
            str = "[p100]" + str;
        }
        for (Map.Entry<String, String> entry : o.entrySet()) {
            str = str.replace(entry.getKey(), entry.getValue());
        }
        return str;
    }

    public String a() {
        if (!q.b) {
            return b();
        }
        if (this.l == null) {
            this.l = l.c(this);
        }
        return this.l;
    }

    public String b() {
        if (this.k == null) {
            this.k = l.a(this);
        }
        return this.k;
    }

    public String c() {
        return n0.g(this.n) ? this.n : this.f3582e;
    }

    public String toString() {
        return "VoiceTask{code=" + this.f3580a + ", key='" + this.b + "', text='" + this.c + "', voiceUrl='" + this.f3581d + "', playTxt='" + this.f3582e + "', ttsGrade=" + this.f3583f + ", listener=" + this.f3584g + ", playType=" + this.f3585h + ", needPlaying=" + this.i + ", channel=" + this.j + ", oldFileKey='" + this.k + "', newFuJiaKey='" + this.l + "', speaker=" + this.m + ", secondText='" + this.n + "'}";
    }

    public o(int i, String str, String str2, TtsGrade ttsGrade, TtsListener ttsListener, int i2, boolean z, int i3) {
        this(i, str, str2, ttsGrade, ttsListener, i2, z, i3, null);
    }

    public o(int i, String str, String str2, TtsGrade ttsGrade, TtsListener ttsListener, int i2, boolean z, int i3, String str3) {
        this.f3580a = i;
        this.c = str2;
        this.b = str;
        this.f3583f = ttsGrade;
        this.f3584g = ttsListener;
        this.i = z;
        this.f3585h = i2;
        this.f3582e = d(str2);
        this.j = i3;
        this.f3581d = str3;
        this.m = ttsGrade.getSpeaker();
    }
}
