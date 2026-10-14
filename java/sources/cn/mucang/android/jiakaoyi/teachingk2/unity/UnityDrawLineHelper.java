package cn.mucang.android.jiakaoyi.teachingk2.unity;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.b1.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/UnityDrawLineHelper;", "", "()V", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UnityDrawLineHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6360a = new a(null);
    private static AtomicInteger b = new AtomicInteger(10000);
    private static final Map<Integer, HashSet<Integer>> c = new LinkedHashMap();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.b1.b$a */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006H\u0007J$\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u0015\u001a\u00020\u0006H\u0007J\u0088\u0001\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\b\b\u0002\u0010$\u001a\u00020\u001a2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0007J\u0018\u0010'\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00060\u000fj\b\u0012\u0004\u0012\u00020\u0006`\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/UnityDrawLineHelper$Companion;", "", "()V", "DEFAULT_COLOR", "", "DEFAULT_WIDTH", "", "MAT_ALPHA_COLOR", "MAT_COLOR", "MAT_CORRECT_LINE", "TAG", "autoId", "Ljava/util/concurrent/atomic/AtomicInteger;", "groupIdsMap", "", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "clearLineByGroup", "", "group", "clearLineById", TtmlNode.ATTR_ID, "drawLine", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;", "forceDraw", "", "type", "points", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", TtmlNode.ATTR_TTS_COLOR, "alpha", "", "width", "height", "isSeal", Constant.PROTOCOL_WEBVIEW_NAME, "material", "updateCacheMap", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public static /* synthetic */ int e(a aVar, int i, int i2, int i3, List list, String str, float f2, int i4, int i5, boolean z, String str2, String str3, boolean z2, int i6, Object obj) {
            return aVar.c((i6 & 1) != 0 ? -1 : i, (i6 & 2) != 0 ? 0 : i2, i3, list, (i6 & 16) != 0 ? "#0000FF" : str, (i6 & 32) != 0 ? BitmapDescriptorFactory.HUE_RED : f2, (i6 & 64) != 0 ? 15 : i4, i5, (i6 & 256) != 0 ? false : z, (i6 & 512) != 0 ? "" : str2, (i6 & 1024) != 0 ? "alphaColorMat" : str3, (i6 & 2048) != 0 ? false : z2);
        }

        public static /* synthetic */ int f(a aVar, UnityLineModel unityLineModel, boolean z, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                z = false;
            }
            if ((i2 & 4) != 0) {
                i = -1;
            }
            return aVar.d(unityLineModel, z, i);
        }

        private final void g(int i, int i2) {
            HashSet hashSet = (HashSet) UnityDrawLineHelper.c.get(Integer.valueOf(i));
            if (hashSet == null) {
                hashSet = new HashSet();
            }
            hashSet.add(Integer.valueOf(i2));
            UnityDrawLineHelper.c.put(Integer.valueOf(i), hashSet);
        }

        public final void a(int i) {
            UnityLineModel unityLineModel = new UnityLineModel();
            unityLineModel.id = 0;
            unityLineModel.group = i;
            unityLineModel.open = false;
            d.e(unityLineModel);
            UnityDrawLineHelper.c.remove(Integer.valueOf(i));
        }

        public final void b(int i) {
            Iterator it = UnityDrawLineHelper.c.entrySet().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((HashSet) ((Map.Entry) it.next()).getValue()).iterator();
                r.d(it2, "entry.value.iterator()");
                while (it2.hasNext()) {
                    Object next = it2.next();
                    r.d(next, "iterator.next()");
                    if (i == ((Number) next).intValue()) {
                        UnityLineModel unityLineModel = new UnityLineModel();
                        unityLineModel.id = i;
                        unityLineModel.open = false;
                        d.e(unityLineModel);
                        it2.remove();
                        return;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int c(int i, int i2, int i3, List<? extends Pos> list, String str, float f2, int i4, int i5, boolean z, String str2, String str3, boolean z2) {
            if (i == -1) {
                i = UnityDrawLineHelper.b.getAndIncrement();
            }
            UnityLineModel unityLineModel = new UnityLineModel();
            unityLineModel.id = i;
            unityLineModel.open = true;
            unityLineModel.type = i2;
            unityLineModel.group = i3;
            unityLineModel.positions = list;
            unityLineModel.color = str;
            unityLineModel.alpha = f2;
            unityLineModel.width = i4;
            unityLineModel.height = i5;
            unityLineModel.isSeal = z;
            unityLineModel.showName = str2;
            unityLineModel.material = str3;
            d.f(unityLineModel, z2);
            g(i3, i);
            return i;
        }

        public final int d(UnityLineModel model, boolean z, int i) {
            r.e(model, "model");
            if (TextUtils.isEmpty(model.material)) {
                model.material = "alphaColorMat";
            }
            return e(this, i, model.type, model.group, model.positions, model.color, model.alpha, model.width, model.height, model.isSeal, model.showName, null, z, 1024, null);
        }
    }
}
