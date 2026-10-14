package cn.mucang.android.jiakaoyi.signal.ai;

import cn.mucang.android.jiakaoyi.signal.communicate.r;

/* JADX INFO: loaded from: classes3.dex */
public class AIOtaVerResult extends AIRecognitionModel {
    private final String version;

    public AIOtaVerResult(r rVar) {
        byte bE = rVar.b() ? rVar.e() : (byte) 0;
        byte bE2 = rVar.b() ? rVar.e() : (byte) 0;
        byte bE3 = rVar.b() ? rVar.e() : (byte) 0;
        byte bE4 = rVar.b() ? rVar.e() : (byte) 0;
        String string = Integer.toString(bE);
        String string2 = Integer.toString(bE2);
        String string3 = Integer.toString(bE3);
        String string4 = Integer.toString(bE4);
        if (string.length() == 1) {
            string = "0" + string;
        }
        if (string2.length() == 1) {
            string2 = "0" + string2;
        }
        if (string3.length() == 1) {
            string3 = "0" + string3;
        }
        if (string4.length() == 1) {
            string4 = "0" + string4;
        }
        this.version = string + string2 + "-" + string3 + "-" + string4;
    }

    public String getVersion() {
        return this.version;
    }
}
