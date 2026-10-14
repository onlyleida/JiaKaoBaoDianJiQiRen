package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.b;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FenceConfig;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.business.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/UnityDrawSender;", "", "()V", "draw", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UnityDrawSender {
    public static final void a() {
        int size;
        int size2;
        String str;
        boolean zIsOpen = FenceConfig.isOpen(ExamSiteUtil.e(0L));
        List<a> list = n.b().f7602f;
        int i = 0;
        if (list != null && (size2 = list.size() - 1) >= 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                a aVar = list.get(i2);
                int i4 = aVar.f7591a;
                if ((i4 != 2 && i4 != 1) || zIsOpen) {
                    List<Pos> list2 = list.get(i2).c;
                    int i5 = aVar.f7591a;
                    if (i5 != 2) {
                        str = i5 != 3 ? "#00FF00" : "#FF8800";
                    } else {
                        str = "#FF0000";
                    }
                    UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 0, 0, list2, str, 0.5f, 15, i5 == 1 ? 200 : 30, i5 == 3 || i5 == 1, null, null, false, 3587, null);
                }
                if (i3 > size2) {
                    break;
                } else {
                    i2 = i3;
                }
            }
        }
        List<b> list3 = n.b().f7603g;
        if (g.d(list3) && zIsOpen && (size = list3.size() - 1) >= 0) {
            while (true) {
                int i6 = i + 1;
                UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 1, 1, list3.get(i).b, "#0000FF", 0.1f, 15, 30, false, null, null, false, 3841, null);
                if (i6 > size) {
                    break;
                } else {
                    i = i6;
                }
            }
        }
        List<AreaModel> gpsList = n.b().n;
        if (g.d(gpsList) && zIsOpen) {
            r.d(gpsList, "gpsList");
            Iterator<T> it = gpsList.iterator();
            while (it.hasNext()) {
                UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 1, 1, ((AreaModel) it.next()).pointList, "#6200EE", 0.1f, 15, 30, false, null, null, false, 3841, null);
            }
        }
        if (MucangConfig.v()) {
            List<AreaModel> list4 = n.b().m.get(KeMu.K2);
            if (list4 != null) {
                Iterator<T> it2 = list4.iterator();
                while (it2.hasNext()) {
                    UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 1, 1, ((AreaModel) it2.next()).pointList, "#0095FF", 0.1f, 15, 30, false, null, null, false, 3841, null);
                }
            }
            List<AreaModel> list5 = n.b().m.get(KeMu.K3);
            if (list5 == null) {
                return;
            }
            Iterator<T> it3 = list5.iterator();
            while (it3.hasNext()) {
                UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 1, 1, ((AreaModel) it3.next()).pointList, "#FF7D3C", 0.1f, 15, 30, false, null, null, false, 3841, null);
            }
        }
    }
}
