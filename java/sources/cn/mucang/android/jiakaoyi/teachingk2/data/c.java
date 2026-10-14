package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.d0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public static TeachModel a(JSONObject jSONObject) {
        TeachModel teachModel = new TeachModel();
        JSONArray jSONArray = jSONObject.getJSONArray("data");
        if (jSONArray != null && jSONArray.size() > 0) {
            teachModel.data = new ArrayList();
            for (int i = 0; i < jSONArray.size(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                Class<? extends FormModel> clsA = cn.mucang.android.jiakaoyi.teachingk2.form.b.a(jSONObject2.getInteger("type").intValue());
                if (clsA != null) {
                    teachModel.data.add((FormModel) JSON.toJavaObject(jSONObject2, clsA));
                }
            }
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("errors");
        if (jSONArray2 != null && jSONArray2.size() > 0) {
            teachModel.errors = new ArrayList();
            for (int i2 = 0; i2 < jSONArray2.size(); i2++) {
                JSONObject jSONObject3 = jSONArray2.getJSONObject(i2);
                ErrorModel errorModel = new ErrorModel();
                JSONObject jSONObject4 = jSONObject3.getJSONObject("errorForm");
                Class<? extends FormModel> clsA2 = cn.mucang.android.jiakaoyi.teachingk2.form.b.a(jSONObject4.getInteger("type").intValue());
                if (clsA2 != null) {
                    errorModel.errorForm = (FormModel) JSON.toJavaObject(jSONObject4, clsA2);
                    errorModel.checkType = jSONObject3.getInteger("checkType").intValue();
                    errorModel.errorType = jSONObject3.getIntValue("errorType");
                    errorModel.isRightCheck = jSONObject3.getBooleanValue("isRightCheck");
                    JSONArray jSONArray3 = jSONObject3.getJSONArray("errorVariables");
                    if (jSONArray3 != null && jSONArray3.size() > 0) {
                        errorModel.errorVariables = new ArrayList();
                        for (int i3 = 0; i3 < jSONArray3.size(); i3++) {
                            c(jSONArray3.getJSONObject(i3), errorModel.errorVariables);
                        }
                        JSONArray jSONArray4 = jSONObject3.getJSONArray("stopVariables");
                        if (jSONArray4 != null && jSONArray4.size() > 0) {
                            errorModel.stopVariables = new ArrayList();
                            for (int i4 = 0; i4 < jSONArray4.size(); i4++) {
                                c(jSONArray4.getJSONObject(i4), errorModel.stopVariables);
                            }
                        }
                        if (errorModel.errorVariables.size() > 0) {
                            teachModel.errors.add(errorModel);
                        }
                    }
                }
            }
        }
        if (g.b(teachModel.data) && g.b(teachModel.errors)) {
            return null;
        }
        teachModel.teachModelId = jSONObject.getString("teachModelId");
        teachModel.driveSchoolId = jSONObject.getString("driveSchoolId");
        teachModel.programmeId = jSONObject.getString("programmeId");
        teachModel.examSiteId = jSONObject.getString("examSiteId");
        teachModel.parkingSpaceGroup = jSONObject.getString("parkingSpaceGroup");
        teachModel.parkingSpaceBindId = jSONObject.getString("parkingSpaceBindId");
        int iIntValue = jSONObject.getInteger("grade").intValue();
        if (iIntValue == 2) {
            teachModel.grade = 20;
        } else if (iIntValue == 3) {
            teachModel.grade = 30;
        } else if (iIntValue == 1) {
            teachModel.grade = 10;
        } else {
            teachModel.grade = iIntValue;
        }
        teachModel.step = jSONObject.getInteger("step").intValue();
        teachModel.subStep = jSONObject.getInteger("subStep").intValue();
        Integer integer = jSONObject.getInteger("pointType");
        if (integer == null) {
            teachModel.pointType = 0;
        } else {
            teachModel.pointType = integer.intValue();
        }
        teachModel.variableList = new ArrayList();
        Integer integer2 = jSONObject.getInteger("stepDirection");
        if (integer2 == null) {
            teachModel.stepDirection = 0;
        } else {
            teachModel.stepDirection = integer2.intValue();
        }
        if (teachModel.stepDirection == 0) {
            int i5 = teachModel.step;
            if (i5 == Step.K2_DaoCheRuKu.type) {
                teachModel.stepDirection = 2;
            } else if (i5 == Step.K2_ZhiJiaoZhuanWan.type) {
                teachModel.stepDirection = 1;
            } else if (i5 == Step.K2_SQuXian.type) {
                teachModel.stepDirection = 2;
            }
        }
        JSONArray jSONArray5 = jSONObject.getJSONArray("variableList");
        if (jSONArray5 != null) {
            for (int i6 = 0; i6 < jSONArray5.size(); i6++) {
                c(jSONArray5.getJSONObject(i6), teachModel.variableList);
            }
        }
        return teachModel;
    }

    public static List<TeachModel> b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.size(); i++) {
            TeachModel teachModelA = a(jSONArray.getJSONObject(i));
            if (teachModelA != null) {
                arrayList.add(teachModelA);
            }
        }
        return arrayList;
    }

    private static void c(JSONObject jSONObject, List<Variable> list) {
        Class clsA = d0.a(jSONObject.getInteger("type").intValue());
        if (clsA == null) {
            return;
        }
        Variable variable = (Variable) JSON.toJavaObject(jSONObject, clsA);
        if (variable.type == 100 && (variable instanceof TraceVariable)) {
            TraceVariable traceVariable = (TraceVariable) variable;
            if (g.d(traceVariable.traces)) {
                traceVariable.traces = b.a(traceVariable.traces);
            }
        }
        list.add(variable);
    }
}
