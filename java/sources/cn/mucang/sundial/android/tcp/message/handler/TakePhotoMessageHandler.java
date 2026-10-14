package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.TakePhotoEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.TakePhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.send.TakePhotoResponse;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.upload.UploadImageManager;
import cn.mucang.sundial.android.tcp.upload.UploadMode;

/* JADX INFO: loaded from: classes5.dex */
public class TakePhotoMessageHandler extends BaseMessageHandler<TakePhotoRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(TakePhotoRequest takePhotoRequest) {
        UploadMode uploadMode;
        CoachInfo lastCoach;
        StudentInfo studentInfo;
        TakePhotoResponse takePhotoResponse = new TakePhotoResponse();
        if (!UploadImageManager.getInstance().isIdle() || TakePhotoManager.isTakingPhoto()) {
            t.h("TakePhotoMessageHandler", "有任务在上传或者正在拍照");
            SundialLog.com("有任务在上传或者正在拍照");
            takePhotoResponse.setResult(TakePhotoResponse.Result.TAKING.valueOf());
        } else {
            t.h("TakePhotoMessageHandler", "可以拍摄");
            SundialLog.com("可以拍摄");
            takePhotoResponse.setResult(TakePhotoResponse.Result.TAKE.valueOf());
            int uploadMode2 = takePhotoRequest.getUploadMode();
            if (uploadMode2 == 2) {
                uploadMode = UploadMode.TMP_SAVE_LOCAL;
            } else {
                uploadMode = uploadMode2 == 255 ? UploadMode.STOP_TO_UPLOAD : UploadMode.SERVER_ORDER_UPLOAD;
            }
            PersonMode personMode = PersonMode.NONE;
            EventType eventType = EventType.PLATFORM_QUERY;
            StudentInfo lastStudent = null;
            if (SundialManager.getInstance().studentLoginSuccess()) {
                personMode = PersonMode.STUDENT;
                lastStudent = SundialManager.getInstance().getLastStudent();
                lastCoach = SundialManager.getInstance().getLastCoach();
                eventType = EventType.STUDENT_TRAINING;
            } else {
                if (SundialManager.getInstance().coachLoginSuccess()) {
                    personMode = PersonMode.COACH;
                    lastCoach = SundialManager.getInstance().getLastCoach();
                } else {
                    lastCoach = null;
                    studentInfo = null;
                }
                LiveBus.post(new TakePhotoEvent(personMode.ordinal(), uploadMode.valueOf(), eventType.valueOf(), lastCoach, studentInfo));
            }
            studentInfo = lastStudent;
            LiveBus.post(new TakePhotoEvent(personMode.ordinal(), uploadMode.valueOf(), eventType.valueOf(), lastCoach, studentInfo));
        }
        takePhotoResponse.setUploadMode(takePhotoRequest.getUploadMode());
        takePhotoResponse.setCameraChannel(0);
        takePhotoResponse.setImageSize(4);
        return takePhotoResponse;
    }
}
