package cn.mucang.android.jiakaoyi.teachingk2.calibration;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class CalibrationItem implements Serializable {
    public int calibrationType;
    public Cmd cmd;
    public String head;
    public boolean isStart;
    public boolean needInputValue;
    public String startText = "开始标定";
    public String stepName;
    public String tip;
    public int value;
}
