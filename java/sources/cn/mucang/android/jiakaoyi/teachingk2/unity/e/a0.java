package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.ErrorPointHandler;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.d0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityPageModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.AutoTeachPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.FirstPracticePage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.HelpTeachPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.TrainPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3.K3ExamPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3.K3LightPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3.K3ReadyPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.k3.K3TrainPage;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.v0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.w0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.x0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.y0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import com.alibaba.fastjson.JSON;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class a0 implements c<UnityPageModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static KeMu f6363a = null;
    public static boolean b = false;
    private static final Map<String, a> c;

    public interface a {
        void g();

        void n();

        void o();
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        c = concurrentHashMap;
        concurrentHashMap.put("BaseOperatePanel", new v0());
        concurrentHashMap.put("TrainPanel", new TrainPage());
        concurrentHashMap.put("ExamPanel", new w0());
        concurrentHashMap.put("MainPanel", new y0(KeMu.K2));
        concurrentHashMap.put("PartIdentityPanel", new x0());
        concurrentHashMap.put("AutoTeachPanel", new AutoTeachPage());
        concurrentHashMap.put("K3MainPanel", new y0(KeMu.K3));
        concurrentHashMap.put("K3LightTrainPanel", new K3LightPage());
        concurrentHashMap.put("K3ReadyPanel", new K3ReadyPage());
        concurrentHashMap.put("K3TrainPanel", new K3TrainPage());
        concurrentHashMap.put("K3ExamPanel", new K3ExamPage());
        concurrentHashMap.put("FirstTrainPanel", new FirstPracticePage());
        concurrentHashMap.put("HelpTeachPanel", new HelpTeachPage());
    }

    public static cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.a0 b() {
        w0 w0Var = (w0) c.get("ExamPanel");
        if (w0Var != null) {
            return w0Var.b;
        }
        return null;
    }

    public static AutoTeachPage c() {
        return (AutoTeachPage) c.get("AutoTeachPanel");
    }

    public static HelpTeachPage d() {
        return (HelpTeachPage) c.get("HelpTeachPanel");
    }

    public static K3ExamPage e() {
        return (K3ExamPage) c.get("K3ExamPanel");
    }

    public static K3LightPage f() {
        return (K3LightPage) c.get("K3LightTrainPanel");
    }

    public static K3TrainPage g() {
        return (K3TrainPage) c.get("K3TrainPanel");
    }

    public static TrainPage h() {
        return (TrainPage) c.get("TrainPanel");
    }

    public static boolean i() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(UnityMessage unityMessage) {
        l((UnityPageModel) unityMessage.data);
    }

    private void l(UnityPageModel unityPageModel) {
        for (Map.Entry<String, a> entry : c.entrySet()) {
            a value = entry.getValue();
            if (value != null && entry.getKey().equals(unityPageModel.state)) {
                int i = unityPageModel.action;
                if (i == 1) {
                    value.g();
                } else if (i == 2) {
                    value.o();
                }
            }
        }
        int i2 = unityPageModel.action;
        if (i2 == 1) {
            if (unityPageModel.state.contains("TrainInfoPanel")) {
                ErrorPointHandler.f();
            }
            RobotTips.f7184a.Q(unityPageModel.state);
            if ("VideoPanel".equals(unityPageModel.state)) {
                GlobalChecker.i(true);
                return;
            }
            return;
        }
        if (i2 == 2) {
            RobotTips.f7184a.S(unityPageModel.state);
            if ("VideoPanel".equals(unityPageModel.state)) {
                GlobalChecker.i(false);
            }
        }
    }

    public static void m() {
        Iterator<Map.Entry<String, a>> it = c.entrySet().iterator();
        while (it.hasNext()) {
            final a value = it.next().getValue();
            if (value != null) {
                value.getClass();
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        value.n();
                    }
                });
            }
        }
    }

    public static d0 n() {
        return h().getF8558a();
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityPageModel> a(final UnityMessage<UnityPageModel> unityMessage, Activity activity) {
        T t = unityMessage.data;
        if (((UnityPageModel) t).type != 0 && ((UnityPageModel) t).type != 1) {
            return null;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f6370a.k(unityMessage);
            }
        });
        cn.mucang.jiakaoyi.uilib.socket.u.q(JSON.toJSONString(unityMessage.data));
        return null;
    }
}
