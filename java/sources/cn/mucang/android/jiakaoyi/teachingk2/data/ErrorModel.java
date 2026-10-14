package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.StopPositionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayDistanceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayTimeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDegreeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ErrorModel implements Serializable {
    public static final int CheckContinue = 1;
    public static final int CheckPoint = 0;
    public static final int TypeLeftHead = 9;
    public static final int TypeLeftStop = 1;
    public static final int TypeLightClose = 5;
    public static final int TypeLightError = 6;
    public static final int TypeMoreLeftStop = 3;
    public static final int TypeMoreRightStop = 4;
    public static final int TypeNoBrake = 7;
    public static final int TypeNoHead = 8;
    public static final int TypeNone = 0;
    public static final int TypeRightHead = 10;
    public static final int TypeRightStop = 2;
    public int checkType;
    public FormModel errorForm;
    public int errorType;
    public List<Variable> errorVariables;
    public transient boolean expand;
    public transient boolean hasSelect;
    public boolean isRightCheck = false;
    public transient StopPositionHandler.StopArea stopArea;
    public List<Variable> stopVariables;

    public static ErrorModel create(int i) {
        ErrorModel errorModel = new ErrorModel();
        errorModel.errorType = i;
        errorModel.expand = true;
        errorModel.errorForm = new VoiceModel();
        ArrayList arrayList = new ArrayList();
        errorModel.stopVariables = arrayList;
        arrayList.add(new CarHeaderDistanceToLineVariable());
        errorModel.stopVariables.add(new DelayTimeVariable());
        errorModel.stopVariables.add(new DelayDistanceVariable());
        ArrayList arrayList2 = new ArrayList();
        errorModel.errorVariables = arrayList2;
        arrayList2.add(new RepeatVariable());
        if (i == 0) {
            errorModel.errorVariables.add(new WheelDegreeVariable());
            errorModel.errorVariables.add(new LightVariable());
            errorModel.errorVariables.add(new FootBrakeVariable());
            errorModel.errorVariables.add(new TurnHeadVariable());
        } else if (i == 5 || i == 6) {
            errorModel.errorVariables.add(new LightVariable());
        } else if (i == 7) {
            errorModel.errorVariables.add(new FootBrakeVariable());
        } else if (i == 8 || i == 9 || i == 10) {
            errorModel.errorVariables.add(new TurnHeadVariable());
        }
        return errorModel;
    }

    public String getConditionId() {
        FormModel formModel = this.errorForm;
        if (formModel instanceof VoiceModel) {
            return ((VoiceModel) formModel).conditionId;
        }
        return null;
    }
}
