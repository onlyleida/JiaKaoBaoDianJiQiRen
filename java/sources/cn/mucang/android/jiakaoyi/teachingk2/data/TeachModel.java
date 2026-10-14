package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TeachModel extends BaseStepConfig {
    public transient cn.mucang.android.jiakaoyi.hpmap.a.a.b boundary;
    public List<FormModel> data;
    public String driveSchoolId;
    public List<ErrorModel> errors;
    public String examSiteId;
    public List<String> exclusiveIds;
    public transient int index;
    public transient int normalIndex;
    public transient int order;
    public String parkingSpaceBindId;
    public String parkingSpaceGroup;
    public int pointType;
    public int position;
    public List<String> preIds;
    public String programmeId;
    public transient TeachModel reportModel;
    public int step;
    public int stepDirection;
    public int subStep;
    public String teachModelId;
    public List<Variable> variableList;
    public int grade = 10;
    private transient int traceState = 0;

    public TeachModel copy() {
        return c.a(JSON.parseObject(JSON.toJSONString(this, SerializerFeature.DisableCircularReferenceDetect)));
    }

    @JSONField(serialize = false)
    public String findText() {
        if (g.d(this.data)) {
            for (FormModel formModel : this.data) {
                if (formModel instanceof VoiceModel) {
                    VoiceModel voiceModel = (VoiceModel) formModel;
                    if (n0.g(voiceModel.voice)) {
                        return voiceModel.voice;
                    }
                    if (n0.g(voiceModel.middleVoice)) {
                        return voiceModel.middleVoice;
                    }
                    if (n0.g(voiceModel.highVoice)) {
                        return voiceModel.highVoice;
                    }
                }
            }
        }
        if (!g.d(this.errors)) {
            return "未知教学内容";
        }
        for (ErrorModel errorModel : this.errors) {
            FormModel formModel2 = errorModel.errorForm;
            if ((formModel2 instanceof VoiceModel) && n0.g(((VoiceModel) formModel2).voice)) {
                return ((VoiceModel) errorModel.errorForm).voice;
            }
        }
        return "未知教学内容";
    }

    @JSONField(serialize = false)
    public NormalVariable getNormalVariable() {
        if (!g.d(this.variableList)) {
            return null;
        }
        for (Variable variable : this.variableList) {
            if (variable instanceof NormalVariable) {
                return (NormalVariable) variable;
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    public String getPlayText() {
        if (!g.d(this.data)) {
            return null;
        }
        for (FormModel formModel : this.data) {
            if (formModel instanceof VoiceModel) {
                return ((VoiceModel) formModel).getPlayText();
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    public String getPointTypeDesc() {
        int i = this.pointType;
        if (i == 1) {
            return "【预报点】";
        }
        if (i == 2) {
            return "【操作点】";
        }
        return i == 3 ? "【提示点】" : "";
    }

    @JSONField(serialize = false)
    public String getShowText() {
        if (!g.d(this.data)) {
            return null;
        }
        for (FormModel formModel : this.data) {
            if (formModel instanceof VoiceModel) {
                return ((VoiceModel) formModel).getShowText();
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    public String getStepAndPlayText() {
        String[] strArr;
        Step stepFindWithType = Step.findWithType(this.step);
        if (stepFindWithType == Step.K2_DaoCheRuKu) {
            strArr = this.stepDirection == 1 ? new String[]{"驶入项目", "左倒库", "右出库", "右倒库", "左出库"} : new String[]{"驶入项目", "右倒库", "左出库", "左倒库", "右出库"};
        } else {
            strArr = stepFindWithType == Step.K2_CeFangTingChe ? new String[]{"驶入项目", "倒入侧方", "驶出侧方"} : null;
        }
        if (strArr == null) {
            return stepFindWithType.stepName + "-" + getPlayText();
        }
        return stepFindWithType.stepName + "-" + strArr[this.subStep - 1] + "-" + getPlayText();
    }

    @JSONField(serialize = false)
    public TraceVariable getTraceVariable() {
        if (!g.d(this.variableList)) {
            return null;
        }
        for (Variable variable : this.variableList) {
            if (variable instanceof TraceVariable) {
                return (TraceVariable) variable;
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    public VoiceModel getVoiceModel() {
        if (!g.d(this.data)) {
            return null;
        }
        for (FormModel formModel : this.data) {
            if (formModel instanceof VoiceModel) {
                return (VoiceModel) formModel;
            }
        }
        return null;
    }

    @JSONField(serialize = false)
    public boolean isReverse() {
        return TeachCollectHelper.i(this.step, this.stepDirection);
    }

    @JSONField(serialize = false)
    public boolean isStopTeach() {
        if (!g.d(this.data)) {
            return false;
        }
        for (FormModel formModel : this.data) {
            if (formModel instanceof VoiceModel) {
                return ((VoiceModel) formModel).sound;
            }
        }
        return false;
    }

    @JSONField(serialize = false)
    public boolean isTraceTeach() {
        if (this.traceState == 0) {
            if (getTraceVariable() == null) {
                this.traceState = 1;
            } else {
                this.traceState = 2;
            }
        }
        return this.traceState == 2;
    }

    @JSONField(serialize = false)
    public void setVoice(String str) {
        if (g.d(this.data)) {
            for (FormModel formModel : this.data) {
                if (formModel instanceof VoiceModel) {
                    VoiceModel voiceModel = (VoiceModel) formModel;
                    voiceModel.voice = str;
                    voiceModel.sound = false;
                    return;
                }
            }
        }
    }
}
