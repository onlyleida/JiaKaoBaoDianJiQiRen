package cn.mucang.android.jiakaoyi.framework.tts.i;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static c c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3520a = null;
    private String b = null;

    private c() {
    }

    public static c d() {
        if (c == null) {
            c = new c();
        }
        return c;
    }

    public void a() {
        this.f3520a = null;
        this.b = null;
        i0.m("enable_pack", "");
        i0.m("enable_pack_name", "");
    }

    public void b(String str, Long l, int i) {
        f.o("启用语音包 name:" + str + " ; packId: " + l + " ; version: " + i);
        StringBuilder sb = new StringBuilder();
        sb.append(l);
        sb.append("/");
        sb.append(i);
        this.f3520a = sb.toString();
        this.b = str;
        i0.m("enable_pack", l + "/" + i);
        i0.m("enable_pack_name", this.b);
    }

    public File c() {
        if (this.f3520a == null) {
            this.f3520a = i0.g("enable_pack", "");
        }
        File file = new File(b.l() + this.f3520a);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public boolean e(long j, int i) {
        if (this.f3520a == null) {
            this.f3520a = i0.g("enable_pack", "");
        }
        if (n0.e(this.f3520a)) {
            return false;
        }
        if (this.f3520a.equals(j + "/" + i)) {
            if (b.i(j, i)) {
                return true;
            }
            this.f3520a = null;
            i0.m("enable_pack", "");
        }
        return false;
    }
}
