package cn.mucang.android.jiakaoyi.engine.trace.site;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.trace.XYPos;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceBaseModel;
import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TraceSiteItemModel extends TraceBaseModel {
    public List<XYPos> ap;
    public List<XYPos> ap2;
    public int lt;
    public List<XYPos> ps;
    public List<XYPos> rps;

    public TraceSiteItemModel() {
        this.tp = DataType.Site.typeId;
    }

    public void setAssistPoints(List<Pos> list) {
        if (g.b(list)) {
            return;
        }
        this.ap = new ArrayList(list.size());
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            this.ap.add(XYPos.from(it.next()));
        }
    }

    public void setAssistPoints2(List<Pos> list) {
        if (g.b(list)) {
            return;
        }
        this.ap2 = new ArrayList(list.size());
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            this.ap2.add(XYPos.from(it.next()));
        }
    }

    public void setReportPoints(List<Pos> list) {
        if (g.b(list)) {
            return;
        }
        this.rps = new ArrayList(list.size());
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            this.rps.add(XYPos.from(it.next()));
        }
    }

    public TraceSiteItemModel(List<Pos> list, int i) {
        this.tp = DataType.Site.typeId;
        this.ps = new ArrayList(list.size());
        if (g.d(list)) {
            Iterator<Pos> it = list.iterator();
            while (it.hasNext()) {
                this.ps.add(XYPos.from(it.next()));
            }
        }
        this.lt = i;
    }
}
