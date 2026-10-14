package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserInfoModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;

/* JADX INFO: loaded from: classes4.dex */
public class j0 implements c<UserInfoModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UserInfoModel> a(UnityMessage<UserInfoModel> unityMessage, Activity activity) {
        XyUserModel xyUserModelE = RobotAccount.i().e();
        if (xyUserModelE == null) {
            return null;
        }
        UserInfoModel userInfoModel = new UserInfoModel();
        userInfoModel.gender = xyUserModelE.getGender();
        userInfoModel.name = xyUserModelE.getName();
        userInfoModel.headImg = xyUserModelE.getAvatar();
        userInfoModel.idCard = xyUserModelE.getIdCardMask();
        userInfoModel.studentId = xyUserModelE.getStudentId() + "";
        return new UnityMessage<>(userInfoModel);
    }
}
