package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

import android.util.Log;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachTypes;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class TeachData implements Serializable {
    public String desc;
    public String errorValue;
    public List<Variable> errorVariables;
    public long examSiteId;
    public int gearType;
    public Long id;
    public String name;
    public int num;
    public boolean order;
    public int position;
    public String remark;
    public int stepId;
    public int teachNum;
    public String value;
    public List<Variable> variables;

    public TeachData() {
        this.order = true;
    }

    public static List<Variable> parseVariables(String str) {
        K3TeachTypes k3TeachTypes;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray array = JSON.parseArray(str);
            for (int i = 0; i < array.size(); i++) {
                JSONObject jSONObject = array.getJSONObject(i);
                Integer integer = jSONObject.getInteger("type");
                if (integer != null && (k3TeachTypes = K3TeachTypes.parse(integer.intValue())) != null) {
                    arrayList.add((Variable) JSON.parseObject(jSONObject.toString(), k3TeachTypes.clazz));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o("解析教学数据错误 TeachData variables " + Log.getStackTraceString(e2));
        }
        return arrayList;
    }

    public TeachData addErrorVariable(Variable variable) {
        if (this.errorVariables == null) {
            this.errorVariables = new ArrayList();
        }
        this.errorVariables.add(variable);
        return this;
    }

    public TeachData addVariable(Variable variable) {
        if (this.variables == null) {
            this.variables = new ArrayList();
        }
        this.variables.add(variable);
        return this;
    }

    public TeachData copy() {
        TeachData teachData = new TeachData();
        teachData.errorVariables = this.errorVariables;
        teachData.variables = this.variables;
        teachData.id = this.id;
        teachData.examSiteId = this.examSiteId;
        teachData.stepId = this.stepId;
        teachData.desc = this.desc;
        teachData.order = this.order;
        teachData.num = this.num;
        teachData.position = this.position;
        teachData.name = this.name;
        teachData.gearType = this.gearType;
        teachData.value = this.value;
        teachData.errorValue = this.errorValue;
        teachData.teachNum = this.teachNum;
        teachData.remark = this.remark;
        return teachData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TeachData teachData = (TeachData) obj;
        return this.examSiteId == teachData.examSiteId && this.stepId == teachData.stepId && this.order == teachData.order && this.num == teachData.num && this.teachNum == teachData.teachNum && this.position == teachData.position && this.gearType == teachData.gearType && Objects.equals(this.id, teachData.id) && Objects.equals(this.variables, teachData.variables) && Objects.equals(this.value, teachData.value) && Objects.equals(this.errorVariables, teachData.errorVariables) && Objects.equals(this.errorValue, teachData.errorValue) && Objects.equals(this.desc, teachData.desc) && Objects.equals(this.remark, teachData.remark) && Objects.equals(this.name, teachData.name);
    }

    public int hashCode() {
        return Objects.hash(this.id, Long.valueOf(this.examSiteId), this.variables, this.value, this.errorVariables, this.errorValue, Integer.valueOf(this.stepId), this.desc, Boolean.valueOf(this.order), Integer.valueOf(this.num), this.remark, Integer.valueOf(this.teachNum), Integer.valueOf(this.position), this.name, Integer.valueOf(this.gearType));
    }

    public TeachData(int i, int i2, String str, String str2) {
        this.order = true;
        this.num = i;
        this.stepId = i2;
        this.name = str;
        this.desc = str2;
    }

    public TeachData(int i, int i2, String str, String str2, boolean z) {
        this.order = true;
        this.num = i;
        this.stepId = i2;
        this.name = str;
        this.desc = str2;
        this.order = z;
    }

    public TeachData(int i, int i2, String str, String str2, GearType gearType) {
        this.order = true;
        this.num = i;
        this.stepId = i2;
        this.desc = str2;
        this.name = str;
        this.gearType = gearType.type;
    }

    public TeachData(int i, int i2, String str, String str2, boolean z, GearType gearType) {
        this.order = true;
        this.num = i;
        this.stepId = i2;
        this.desc = str2;
        this.name = str;
        this.order = z;
        this.gearType = gearType.type;
    }
}
