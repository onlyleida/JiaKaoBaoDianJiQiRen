package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import android.text.TextUtils;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapPreviewActivity;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.HighErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResLoadModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityUIActionModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.AutoTeachPage;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.android.jiakaoyi.teachingk2.teachplan.a;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import cn.mucang.jiakaoyi.uilib.language.LanguageSelectDialog;
import cn.mucang.jiakaoyi.uilib.ui.setting.AboutActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes4.dex */
public class g0 implements c<UnityUIActionModel> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void d(UnityMessage<UnityUIActionModel> unityMessage, Activity activity) {
        f.o("Unity 点击:" + ((UnityUIActionModel) unityMessage.data).url + ", " + ((UnityUIActionModel) unityMessage.data).content);
        if (TextUtils.equals("EXIT", ((UnityUIActionModel) unityMessage.data).url)) {
            TtsManager.F();
            RobotAccount.o("Unity Exit", "");
            return;
        }
        if (TextUtils.equals("RESOURCE_PAGE", ((UnityUIActionModel) unityMessage.data).url)) {
            float fH = ResourceManager.h();
            ResLoadModel resLoadModel = new ResLoadModel();
            resLoadModel.process = fH;
            d.e(resLoadModel);
            return;
        }
        if (TextUtils.equals("PHONE", ((UnityUIActionModel) unityMessage.data).url)) {
            AudioManager.C();
            return;
        }
        if (TextUtils.equals("EGG", ((UnityUIActionModel) unityMessage.data).url)) {
            K2TeachCollectActivity.w(activity, String.valueOf(a.a(ExamSiteUtil.e(0L))));
            return;
        }
        if (TextUtils.equals("MAP", ((UnityUIActionModel) unityMessage.data).url)) {
            if (a0.f6363a == KeMu.K2) {
                MapPreviewActivity.p(activity, ExamSiteUtil.d(), false);
                return;
            }
            return;
        }
        if (TextUtils.equals("LOGIN", ((UnityUIActionModel) unityMessage.data).url)) {
            UserSwitcher.E(activity);
            return;
        }
        if (TextUtils.equals("TEACH_PIC", ((UnityUIActionModel) unityMessage.data).url)) {
            d0 d0VarN = a0.n();
            if (d0VarN != null) {
                d0VarN.p();
                return;
            }
            return;
        }
        if (TextUtils.equals("AUTO_TEACH_PIC", ((UnityUIActionModel) unityMessage.data).url)) {
            AssistTeachManager.k();
            return;
        }
        if (TextUtils.equals("HELPER", ((UnityUIActionModel) unityMessage.data).url)) {
            n0.d();
            SpeechManager speechManager = SpeechManager.f5839a;
            if (speechManager.l()) {
                speechManager.s();
                return;
            } else {
                f.o("语音助手已被禁用");
                u.h(k0.a(R.string.teachbase_disabled_speech));
                return;
            }
        }
        if (TextUtils.equals("ABOUT", ((UnityUIActionModel) unityMessage.data).url)) {
            AboutActivity.o(activity);
            return;
        }
        if (TextUtils.equals("LANGUAGE", ((UnityUIActionModel) unityMessage.data).url)) {
            new LanguageSelectDialog(activity).show();
            return;
        }
        if (TextUtils.equals("CLOE_SECURITY", ((UnityUIActionModel) unityMessage.data).url)) {
            Safer.g(activity);
            return;
        }
        if (TextUtils.equals("CLOE_SECURITY_30", ((UnityUIActionModel) unityMessage.data).url)) {
            Safer.f(activity);
            return;
        }
        if (TextUtils.equals("DEDUCT_INFO", ((UnityUIActionModel) unityMessage.data).url)) {
            a0.e().y();
            return;
        }
        if (TextUtils.equals("PREVIEW", ((UnityUIActionModel) unityMessage.data).url)) {
            a0.e().D();
            return;
        }
        if (TextUtils.equals("JUDGE", ((UnityUIActionModel) unityMessage.data).url)) {
            a0.e().K();
            return;
        }
        if (TextUtils.equals("AUTO_TEACH_DEBUG", ((UnityUIActionModel) unityMessage.data).url)) {
            AutoTeachPage.Q(!AutoTeachPage.f());
            return;
        }
        if (TextUtils.equals("HIGH_ERROR", ((UnityUIActionModel) unityMessage.data).url)) {
            HighErrorHandler.h();
            return;
        }
        if (TextUtils.equals("QRCODE", ((UnityUIActionModel) unityMessage.data).url)) {
            HighlightVideoManager.u(activity, ((UnityUIActionModel) unityMessage.data).content);
            return;
        }
        if (TextUtils.equals("SHARE", ((UnityUIActionModel) unityMessage.data).url)) {
            HighlightVideoManager.v(activity);
            return;
        }
        if (TextUtils.equals("FOCUS_MODE", ((UnityUIActionModel) unityMessage.data).url)) {
            HighlightVideoManager.s(((UnityUIActionModel) unityMessage.data).content);
            return;
        }
        if (!TextUtils.equals("DRIVE_GUIDE", ((UnityUIActionModel) unityMessage.data).url)) {
            if (TextUtils.equals("USER_FIRST_TRAIN", ((UnityUIActionModel) unityMessage.data).url)) {
                cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.a(true, cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.b);
                return;
            } else {
                if (TextUtils.equals("SETTING", ((UnityUIActionModel) unityMessage.data).url)) {
                    SettingActivity.o(activity, 2);
                    return;
                }
                return;
            }
        }
        if (a0.f6363a == KeMu.K3) {
            u.h("请切换到科目二进行学车指引");
            TtsManager.r("请切换到科目二进行学车指引", TtsGrade.GlobalTip);
        } else {
            if (UserLevelManager.s(true, null, null)) {
                return;
            }
            TtsManager.r("恭喜您，导训项目已完成，请按教练指导进行练习", TtsGrade.GlobalTip);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityUIActionModel> a(final UnityMessage<UnityUIActionModel> unityMessage, final Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f6373a.d(unityMessage, activity);
            }
        });
        return null;
    }
}
