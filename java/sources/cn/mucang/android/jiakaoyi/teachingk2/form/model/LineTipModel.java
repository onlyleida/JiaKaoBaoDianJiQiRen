package cn.mucang.android.jiakaoyi.teachingk2.form.model;

import android.util.SparseArray;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.LineTipTypeModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.i;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.UnityShowLine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LineTipModel extends FormModel {
    public static final int TypeAngle = 5;
    public static final int TypeArea = 4;
    public static final int TypeDot = 3;
    public static final int TypeFrame = 1;
    public static final int TypeLine = 2;
    public Pos center;
    public int color;
    public int degree;
    public int duration;
    public transient boolean forDraw;
    public int lineType;
    public List<Pos> lines;
    public String objectName;
    public int offTime;
    public int onTime;
    public int pointIndex;
    public List<Integer> pointIndexList;

    public LineTipModel() {
        this.type = 5;
    }

    public static LineTipModel createDefaultFrameModel(int i, int i2) {
        LineTipModel lineTipModel = new LineTipModel();
        lineTipModel.lineType = LineTipTypeModel.Frame.getType();
        if (i != Step.K2_DaoCheRuKu.type) {
            lineTipModel.center = new Pos(133.0d, 1166.0d);
        } else if (i2 == 3) {
            lineTipModel.center = new Pos(460.0d, -656.0d);
        } else {
            lineTipModel.center = new Pos(460.0d, 865.0d);
        }
        lineTipModel.degree = 90;
        lineTipModel.onTime = 1200000;
        lineTipModel.offTime = 0;
        lineTipModel.duration = 1200000;
        return lineTipModel;
    }

    public void addPoints(i iVar, SparseArray<Pos> sparseArray, b bVar) {
        this.lines = new ArrayList();
        int i = this.lineType;
        if (i == 1) {
            iVar.a(this, sparseArray, bVar);
            return;
        }
        if (i == 2) {
            UnityShowLine unityShowLineFind = UnityShowLine.find(this.objectName);
            if (unityShowLineFind != null) {
                bVar.c(this.lines, unityShowLineFind.createIndexMap());
                return;
            }
            return;
        }
        if (i == 3) {
            Pos pos = sparseArray.get(this.pointIndex);
            if (pos != null) {
                this.lines.add(pos);
                return;
            }
            return;
        }
        if (g.d(this.pointIndexList)) {
            Iterator<Integer> it = this.pointIndexList.iterator();
            while (it.hasNext()) {
                Pos pos2 = sparseArray.get(it.next().intValue());
                if (pos2 != null) {
                    this.lines.add(pos2);
                }
            }
        }
    }

    public String getIndexDesc() {
        StringBuilder sb = new StringBuilder();
        if (g.d(this.pointIndexList)) {
            sb.append(this.pointIndexList.get(0));
            for (int i = 1; i < this.pointIndexList.size(); i++) {
                sb.append("-");
                sb.append(this.pointIndexList.get(i));
            }
        }
        return sb.toString();
    }
}
