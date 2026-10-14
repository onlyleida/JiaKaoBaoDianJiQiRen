package cn.mucang.android.jiakaoyi.framework.j;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.webview.HTML5Activity;
import cn.mucang.android.core.webview.HtmlExtra;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a() {
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J("https://ping.mucang.cn/?group=huanying");
        bVar.I("网络检测");
        bVar.C(true);
        bVar.G(true);
        bVar.z(true);
        HTML5Activity.i(MucangConfig.getContext(), bVar.y());
    }
}
