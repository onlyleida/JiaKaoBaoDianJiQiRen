package cn.mucang.android.jiakaoyi.unity.c;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.open.SocialConstants;
import com.unity3d.player.UnityPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f8800a;
    private static volatile boolean b;
    private static Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Integer, a<c<? extends MessageModel>>> f8801d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<Integer, Class<? extends MessageModel>> f8802e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ExecutorService f8803f = Executors.newSingleThreadExecutor();

    public interface a<T> {
        T create();
    }

    public static String a(String str, Activity activity) {
        try {
            JSONObject object = JSON.parseObject(str);
            UnityMessage unityMessage = new UnityMessage();
            unityMessage.code = object.getInteger("code").intValue();
            unityMessage.id = object.getInteger(TtmlNode.ATTR_ID).intValue();
            unityMessage.msg = object.getString(SocialConstants.PARAM_SEND_MSG);
            unityMessage.args = object.getString("args");
            Class<? extends MessageModel> cls = f8802e.get(Integer.valueOf(unityMessage.id));
            a<c<? extends MessageModel>> aVar = f8801d.get(Integer.valueOf(unityMessage.id));
            if (cls != null && aVar != null) {
                JSONObject jSONObject = object.getJSONObject("data");
                if (unityMessage.code == 0) {
                    try {
                        unityMessage.data = (T) JSON.toJavaObject(jSONObject, cls);
                    } catch (Throwable unused) {
                    }
                }
                Object objA = aVar.create().a(unityMessage, activity);
                return objA == null ? "" : JSON.toJSONString(objA);
            }
            object.put(SocialConstants.PARAM_SEND_MSG, (Object) "不支持这个调用");
            object.put("code", (Object) 1);
            return object.toJSONString();
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void b(int i) {
        g(new UnityMessage(i), true);
    }

    public static <T extends MessageModel> void c(int i, T t) {
        g(new UnityMessage(i, t), false);
    }

    public static <T extends MessageModel> void d(int i, T t, boolean z) {
        g(new UnityMessage(i, t), z);
    }

    public static <T extends MessageModel> void e(T t) {
        g(new UnityMessage(t), true);
    }

    public static <T extends MessageModel> void f(T t, boolean z) {
        g(new UnityMessage(t), z);
    }

    private static <T extends MessageModel> void g(final UnityMessage<T> unityMessage, final boolean z) {
        f8803f.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.unity.c.a
            @Override // java.lang.Runnable
            public final void run() {
                d.j(unityMessage, z);
            }
        });
    }

    public static <T extends MessageModel> int h(Class<T> cls) {
        Map<Integer, Class<? extends MessageModel>> map = f8802e;
        if (!map.containsValue(cls)) {
            return 0;
        }
        for (Map.Entry<Integer, Class<? extends MessageModel>> entry : map.entrySet()) {
            if (entry.getValue() == cls) {
                return entry.getKey().intValue();
            }
        }
        return 0;
    }

    public static void i() {
        Runnable runnable = c;
        if (runnable != null) {
            runnable.run();
        }
    }

    static /* synthetic */ void j(UnityMessage unityMessage, boolean z) {
        if (b.a()) {
            LiveBus.c(unityMessage.data);
            return;
        }
        if (q()) {
            if (r() || z) {
                String jSONString = JSON.toJSONString(unityMessage, SerializerFeature.DisableCircularReferenceDetect);
                if (k(unityMessage.id)) {
                    f.o("发送给unity消息:" + jSONString);
                }
                UnityPlayer.UnitySendMessage("AndroidCOM", "CallFromNative", jSONString);
            }
        }
    }

    private static boolean k(int i) {
        return (!MucangConfig.v() || 10001 == i || 10002 == i || 10003 == i || 20004 == i || 20017 == i || 30013 == i || 30004 == i || 30008 == i || 11001 == i) ? false : true;
    }

    public static <T extends MessageModel, C extends c<T>> void l(int i, Class<T> cls, a<C> aVar) {
        m(i, cls);
        f8801d.put(Integer.valueOf(i), aVar);
    }

    public static void m(int i, Class<? extends MessageModel> cls) {
        f8802e.put(Integer.valueOf(i), cls);
    }

    public static void n(Runnable runnable) {
        c = runnable;
    }

    public static void o(boolean z) {
        f8800a = z;
    }

    public static void p(boolean z) {
        b = z;
    }

    public static boolean q() {
        return f8800a;
    }

    public static boolean r() {
        return b;
    }
}
