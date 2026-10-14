package cn.mucang.sundial.android.tcp.message.handler;

import android.text.TextUtils;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.StudentLoginResponseEvent;
import cn.mucang.sundial.android.eventbus.event.TtsEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentLoginResponse;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.location.LocationReportManager;

/* JADX INFO: loaded from: classes5.dex */
public class StudentLoginMessageHandler extends BaseMessageHandler<StudentLoginResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(StudentLoginResponse studentLoginResponse) {
        TimeoutManager.getInstance().onMessageReply(513, true);
        StudentLoginResponse.Result result = studentLoginResponse.getResult();
        t.h(ProtocolConfig.SUNDIAL, "学员登录应答： " + result);
        SundialLog.com("学员登录应答： " + result);
        if (result == StudentLoginResponse.Result.SUCCESS) {
            StudentInfo studentInfo = DataManager.getInstance().getStudentInfo(studentLoginResponse.getStudentNo());
            if (studentInfo != null) {
                studentInfo.setStatus(StudentInfo.STATUS.LOGIN.getValue());
                studentInfo.setTotalDuration(studentLoginResponse.getTotalDuration());
                studentInfo.setTotalMileage(studentLoginResponse.getTotalMileage());
                studentInfo.setFinishedDuration(studentLoginResponse.getFinishedDuration());
                studentInfo.setFinishedMileage(studentLoginResponse.getFinishedMileage());
                DataManager.getInstance().saveStudent(studentInfo);
            }
            LocationReportManager.getInstance().restartIfNotInTempTrack();
        }
        String extraInfo = studentLoginResponse.getExtraInfo();
        if (!TextUtils.isEmpty(extraInfo) && studentLoginResponse.getSpeakExtraInfo() == StudentLoginResponse.SpeakOption.YES) {
            LiveBus.post(new TtsEvent(extraInfo));
        }
        LiveBus.post(new StudentLoginResponseEvent(extraInfo));
        return null;
    }
}
