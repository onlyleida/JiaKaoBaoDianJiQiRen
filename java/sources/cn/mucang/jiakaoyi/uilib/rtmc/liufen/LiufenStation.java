package cn.mucang.jiakaoyi.uilib.rtmc.liufen;

import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.handle.gps.d;
import cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation;
import cn.mucang.jiakaoyi.uilib.rtmc.DiffDataListener;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;
import cn.mucang.jiakaoyi.uilib.socket.u;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sixents.sdk.base.IDiffDataCallBack;
import com.sixents.sdk.base.IStatusCallBack;
import com.sixents.sdk.base.SixentsSDKManagerImp;
import com.sixents.sdk.conf.SdkConf;
import com.sixents.sdk.types.APIType;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.i.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\fH\u0016J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010\u001c\u001a\u00020\u000eH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0016H\u0016J\b\u0010!\u001a\u00020\u0016H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/liufen/LiufenStation;", "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;", "Lcom/sixents/sdk/base/IDiffDataCallBack;", "Lcom/sixents/sdk/base/IStatusCallBack;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "stationModel", "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;", "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;)V", "ggaLogTime", "", "ggaSendCount", "", "isValid", "", "lastStatus", "getLastStatus", "()I", "setLastStatus", "(I)V", "lastTime", "diffdata", "", "data", "", "dataType", "getstatus", "status", "init", "sendGGa", "gga", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;", TtmlNode.START, "stop", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LiufenStation extends AbsGpsStation implements IDiffDataCallBack, IStatusCallBack {
    private final GpsStationModel b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9495g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiufenStation(DiffDataListener diffDataListener, GpsStationModel stationModel) {
        super(diffDataListener);
        r.e(stationModel, "stationModel");
        this.b = stationModel;
        this.f9495g = 9999999;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public boolean b() {
        f.f("init六分基站：ak:" + ((Object) this.b.key) + " sn:" + ((Object) this.b.sn));
        try {
            int iSdkInit = SixentsSDKManagerImp.getInstance().sdkInit(new SdkConf.SdkConfBuilder().keyType(APIType.API_TYPE_AK).key(this.b.key).secret(this.b.secret).devID(this.b.sn).devType("Tablet").diffDataCallBack(this).statusCallBack(this).build());
            if (iSdkInit == 0) {
                iSdkInit = SixentsSDKManagerImp.getInstance().sdkStart();
            }
            boolean z = iSdkInit == 0;
            this.f9492d = z;
            if (!z) {
                SixentsSDKManagerImp.getInstance().sdkFinal();
                f.f(r.m("六分初始化失败:", Integer.valueOf(iSdkInit)));
            }
        } catch (Exception e2) {
            this.f9492d = false;
            SixentsSDKManagerImp.getInstance().sdkFinal();
            f.f(r.m("六分初始化异常:", e2.getMessage()));
        }
        return this.f9492d;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    /* JADX INFO: renamed from: c, reason: from getter */
    public boolean getF9492d() {
        return this.f9492d;
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public int d(d gga) {
        r.e(gga, "gga");
        this.f9493e++;
        if (System.currentTimeMillis() - this.f9494f >= 120000) {
            f.q(r.m("六分发送gga数据:", Integer.valueOf(this.f9493e)));
            this.f9494f = System.currentTimeMillis();
        }
        return SixentsSDKManagerImp.getInstance().sdkSendGGAStr(gga.f5705a);
    }

    @Override // com.sixents.sdk.base.IDiffDataCallBack
    public void diffdata(byte[] data, int dataType) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.c == 0) {
            this.c = jCurrentTimeMillis - ((long) 1000);
        }
        long j = jCurrentTimeMillis - this.c;
        int iH = cn.mucang.android.jiakaoyi.signal.c.d.m.h();
        if (j > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS || MucangConfig.v() || iH != 4) {
            StringBuilder sb = new StringBuilder();
            sb.append("liuFen : len=");
            sb.append(data == null ? null : Integer.valueOf(data.length));
            sb.append(" , dt=");
            sb.append(j);
            sb.append(" , gpsType=");
            sb.append(iH);
            sb.append(",dataType=");
            sb.append(dataType);
            f.q(sb.toString());
        }
        GpsAnalysis.f().i((int) j);
        this.c = jCurrentTimeMillis;
        DiffDataListener f9484a = getF9484a();
        if (f9484a == null) {
            return;
        }
        f9484a.b(data);
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public void e() {
        f.f("start六分基站");
    }

    @Override // cn.mucang.jiakaoyi.uilib.rtmc.AbsGpsStation
    public void f() {
        this.f9492d = false;
        f.f("stop六分基站");
        SixentsSDKManagerImp.getInstance().sdkStop();
        SixentsSDKManagerImp.getInstance().sdkFinal();
        if (TextUtils.isEmpty(this.b.sn)) {
            return;
        }
        u.s(this.b.sn);
    }

    @Override // com.sixents.sdk.base.IStatusCallBack
    public void getstatus(int status) {
        if ((status < 0 || (status != 1401 && status != 1301 && status != 1307 && status != 1201 && status != 1501)) && status != this.f9495g) {
            f.f(r.m("六分基站状态回调:", Integer.valueOf(status)));
        }
        this.f9495g = status;
    }
}
