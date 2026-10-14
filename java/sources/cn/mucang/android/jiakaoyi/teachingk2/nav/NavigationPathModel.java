package cn.mucang.android.jiakaoyi.teachingk2.nav;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import com.alibaba.fastjson.annotation.JSONField;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0005H\u0007R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;", "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;", "Ljava/io/Serializable;", "()V", "sections", "", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;", "getSections", "()Ljava/util/List;", "setSections", "(Ljava/util/List;)V", "totalLength", "", "getTotalLength", "()D", "setTotalLength", "(D)V", "getPosList", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationPathModel extends MessageModel implements Serializable {
    private List<NavigationSection> sections;
    private double totalLength;

    @JSONField(serialize = false)
    public final List<Pos> getPosList() {
        ArrayList arrayList = new ArrayList();
        List<NavigationSection> list = this.sections;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                List<NavigationItem> points = ((NavigationSection) it.next()).getPoints();
                if (points != null) {
                    Iterator<T> it2 = points.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((NavigationItem) it2.next()).toPos());
                    }
                }
            }
        }
        return arrayList;
    }

    public final List<NavigationSection> getSections() {
        return this.sections;
    }

    public final double getTotalLength() {
        return this.totalLength;
    }

    public final void setSections(List<NavigationSection> list) {
        this.sections = list;
    }

    public final void setTotalLength(double d2) {
        this.totalLength = d2;
    }
}
