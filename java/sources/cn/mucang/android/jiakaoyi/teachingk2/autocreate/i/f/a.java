package cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NormalVariable f6199a;
    public final double b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6202f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6200d = true;
    private boolean c = false;

    public a(NormalVariable normalVariable, double d2) {
        this.f6199a = normalVariable;
        this.b = d2;
    }

    private static String a(double d2) {
        if (Math.abs(d2) < 45.0d) {
            return "回正";
        }
        if (d2 > 500.0d) {
            return "向右打满";
        }
        if (d2 > 300.0d) {
            return "向右打一圈";
        }
        if (d2 > 120.0d) {
            return "向右打半圈";
        }
        if (d2 > 60.0d) {
            return "向右打四分之一圈";
        }
        if (d2 < -500.0d) {
            return "向左打满";
        }
        if (d2 < -300.0d) {
            return "向左打一圈";
        }
        if (d2 < -120.0d) {
            return "向左打半圈";
        }
        if (d2 < -60.0d) {
            return "向左打四分之一圈";
        }
        return d2 > 0.0d ? "向右打" : "向左打";
    }

    public List<TeachModel> b(String str, Step step, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        NormalVariable normalVariable = this.f6199a;
        normalVariable.isRange = this.c;
        normalVariable.setWidth(150);
        TeachModel teachModel = new TeachModel();
        teachModel.pointType = 2;
        teachModel.parkingSpaceGroup = str;
        teachModel.step = step.type;
        teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        teachModel.programmeId = teachModelEditor.f();
        teachModel.subStep = i;
        teachModel.stepDirection = i2;
        ArrayList arrayList2 = new ArrayList();
        teachModel.variableList = arrayList2;
        arrayList2.add(this.f6199a);
        teachModel.data = new ArrayList();
        String strA = this.f6201e;
        if (strA == null) {
            strA = a(this.b);
        }
        teachModel.data.add(new VoiceModel(strA).sound(true));
        arrayList.add(teachModel);
        if (this.f6200d && !this.c) {
            TeachModel teachModel2 = new TeachModel();
            teachModel2.pointType = 1;
            teachModel2.parkingSpaceGroup = str;
            teachModel2.step = step.type;
            teachModel2.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
            teachModel2.programmeId = teachModelEditor.f();
            teachModel2.subStep = i;
            teachModel2.stepDirection = i2;
            ArrayList arrayList3 = new ArrayList();
            teachModel2.variableList = arrayList3;
            NormalVariable normalVariable2 = new NormalVariable();
            NormalVariable normalVariable3 = this.f6199a;
            arrayList3.add(normalVariable2.setPos(normalVariable3.posOnLine, normalVariable3.forwardPoint).setReportKey(this.f6199a.key));
            teachModel2.data = new ArrayList();
            String str2 = this.f6202f;
            if (str2 == null) {
                str2 = "即将" + a(this.b) + "方向盘";
            }
            teachModel2.data.add(new VoiceModel(str2));
            arrayList.add(teachModel2);
        }
        return arrayList;
    }

    public a c(String str) {
        this.f6201e = str;
        return this;
    }

    public a d(boolean z) {
        this.c = z;
        return this;
    }

    public a e() {
        this.f6201e = "请停车";
        this.f6202f = "即将停车";
        return this;
    }
}
