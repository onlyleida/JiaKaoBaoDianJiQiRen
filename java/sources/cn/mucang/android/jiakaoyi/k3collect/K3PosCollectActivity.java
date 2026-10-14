package cn.mucang.android.jiakaoyi.k3collect;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.DashLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.LayoutDataHelper;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.customview.VerticalSeekBar;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.helper.CollectCurveEditHelper;
import cn.mucang.android.jiakaoyi.k3collect.helper.LineTypeSpinnerHelper;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.q0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsBaseModel;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0006\n\u0002\b\u0004\u0018\u0000 l2\u00020\u0001:\u0002lmB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020)H\u0002J\b\u0010/\u001a\u00020-H\u0002J\u0016\u00100\u001a\u00020-2\f\u00101\u001a\b\u0012\u0004\u0012\u00020-02H\u0002J\u0010\u00103\u001a\u00020-2\u0006\u0010.\u001a\u00020)H\u0002J\u0018\u00104\u001a\u00020-2\u0006\u00105\u001a\u00020\u00042\u0006\u0010.\u001a\u00020)H\u0002J\b\u00106\u001a\u00020-H\u0002J\b\u00107\u001a\u00020-H\u0002J\b\u00108\u001a\u00020\u0004H\u0002J\b\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u00020-H\u0002J\b\u0010<\u001a\u00020-H\u0002J\u001e\u0010=\u001a\u00020-2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?2\u0006\u0010A\u001a\u00020\bH\u0002J\u001e\u0010B\u001a\u00020-2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?2\u0006\u0010C\u001a\u00020\bH\u0002J\b\u0010D\u001a\u00020-H\u0002J\b\u0010E\u001a\u00020-H\u0002J\b\u0010F\u001a\u00020-H\u0002J\b\u0010G\u001a\u00020-H\u0002J\b\u0010H\u001a\u00020-H\u0002J\u0010\u0010I\u001a\u00020\r2\u0006\u0010J\u001a\u00020)H\u0002J\u0006\u0010K\u001a\u00020\rJ\u0010\u0010K\u001a\u00020\r2\b\u0010.\u001a\u0004\u0018\u00010)J\b\u0010L\u001a\u00020-H\u0016J\u0012\u0010M\u001a\u00020-2\b\u0010N\u001a\u0004\u0018\u00010OH\u0014J\b\u0010P\u001a\u00020-H\u0014J\b\u0010Q\u001a\u00020-H\u0014J\b\u0010R\u001a\u00020-H\u0014J\b\u0010S\u001a\u00020-H\u0014J\b\u0010T\u001a\u00020-H\u0002J\b\u0010U\u001a\u00020-H\u0002J\u0010\u0010V\u001a\u00020-2\u0006\u0010.\u001a\u00020)H\u0002J \u0010W\u001a\u00020-2\u0016\b\u0002\u0010X\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020-\u0018\u00010YH\u0002J\b\u0010Z\u001a\u00020-H\u0002J\u0016\u0010[\u001a\u00020\r2\f\u0010\\\u001a\b\u0012\u0004\u0012\u00020]0?H\u0002J\u0016\u0010^\u001a\u00020-2\f\u0010_\u001a\b\u0012\u0004\u0012\u00020-02H\u0002J\u0010\u0010`\u001a\u00020-2\u0006\u0010a\u001a\u00020\bH\u0015J\u0010\u0010b\u001a\u00020-2\u0006\u0010c\u001a\u00020:H\u0002J\b\u0010d\u001a\u00020-H\u0002J\u0018\u0010e\u001a\u00020-2\u0006\u00105\u001a\u00020\u00042\u0006\u0010.\u001a\u00020)H\u0002J\b\u0010f\u001a\u00020-H\u0002J\b\u0010g\u001a\u00020-H\u0002J\u0018\u0010h\u001a\u00020:2\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040&X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000f0&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006n"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/BaseCollectActivity;", "()V", "clickPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "currentLineLayout", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "currentLineType", "", "currentLineTypeIndex", "examSiteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "hasEditMap", "", "hintTime", "", "initZoom", "", "isPreviewMap", "lastCenter", "lastPlayingTime", "lastZoom", "Ljava/lang/Float;", "lineTypeAdapter", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$LineTypeSpinnerAdapter;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "locationLayer", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/LocationLayer;", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "getMapLayerHelper", "()Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "setMapLayerHelper", "(Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;)V", "maxScale", "minZoom", "previewPosList", "", "previewSrcList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "selectLayerIds", "selectSrcData", "addLine", "", "srcData", "createConverter", "deleteDialogHint", "deleteCallback", "Lkotlin/Function0;", "deleteLine", "deletePos", "selectPos", "dismissLoadingDialog", "exitActivity", "getNearestCenter", "getStatName", "", "initBackEvent", "initDeleteView", "initLineTypeSpinner", "lineLayoutTypes", "", "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "initPosition", "initLineTypeSpinnerByLineType", "lineType", "initMapSelectListener", "initMultiLance", "initSaveLine", "initSeekBar", "initSelectLineLayout", "isCanEditCurve", "it", "isSelectLine", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onResume", "onStop", "playCollectDistance", "refreshLayers", "removeLine", "saveMapData", "callback", "Lkotlin/Function1;", "saveMapDataAndExit", "saveMapToServer", "mapEntitys", "Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;", "saveOriginGps", "setOriginCallBack", "setGpsInfo", "satelliteNumber", "showLoadingDialog", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "showMap", "splitLine", "startMultilanceDialog", "switchLineLayout", "trimGpsLatLon", "d", "", "n", "Companion", "LineTypeSpinnerAdapter", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3PosCollectActivity extends q0 {
    public static final Companion I = new Companion(null);
    private Pos B;
    private Float C;
    private cn.mucang.android.jiakaoyi.hpmap.view.p.j D;
    private boolean E;
    private boolean F;
    private long G;
    private long H;
    private int m;
    private int n;
    private BaseLineLayout o;
    private ExamSiteModel q;
    private K3SrcData t;
    private Pos v;
    private JLoadingDialog w;
    private a x;
    private cn.mucang.android.jiakaoyi.k3collect.k0.n p = new cn.mucang.android.jiakaoyi.k3collect.k0.n();
    private final CopyOnWriteArrayList<K3SrcData> r = new CopyOnWriteArrayList<>();
    private final List<Pos> s = new ArrayList();
    private List<Long> u = new ArrayList();
    private float y = 0.02f;
    private float z = 0.02f;
    private float A = 0.5f;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;", "", "()V", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", TtmlNode.START, "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(Context context, ExamSiteModel examSiteModel) {
            Intent intent = new Intent(context, (Class<?>) K3PosCollectActivity.class);
            intent.addFlags(268435456);
            cn.mucang.android.jiakaoyi.mapcollect.a.c(examSiteModel, intent);
            context.startActivity(intent);
        }

        public final void b(Context context, ExamSiteModel siteModel) {
            r.e(context, "context");
            r.e(siteModel, "siteModel");
            JLoadingDialog jLoadingDialog = new JLoadingDialog(context);
            jLoadingDialog.b("加载地图数据中");
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$Companion$launch$1(siteModel, context, jLoadingDialog, null), 3, null);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$LineTypeSpinnerAdapter;", "Landroid/widget/ArrayAdapter;", "", "context", "Landroid/content/Context;", "resId", "", "data", "", "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "(Landroid/content/Context;ILjava/util/List;)V", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "getDropDownView", "Landroid/view/View;", "position", "convertView", "parent", "Landroid/view/ViewGroup;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<? extends LineLayoutType> f3783a;

        public a(Context context, int i, List<? extends LineLayoutType> data) {
            r.e(context, "context");
            r.e(data, "data");
            int i2 = R.layout.k3_simple_spinner_item;
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(data, 10));
            Iterator<T> it = data.iterator();
            while (it.hasNext()) {
                arrayList.add(((LineLayoutType) it.next()).getLineName());
            }
            super(context, i2, arrayList);
            this.f3783a = data;
        }

        public final List<LineLayoutType> a() {
            return this.f3783a;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            r.e(parent, "parent");
            if (convertView == null) {
                convertView = LayoutInflater.from(getContext()).inflate(R.layout.k3_common_spinner_dropdown_item, parent, false);
            }
            ((TextView) convertView.findViewById(R.id.text)).setText(this.f3783a.get(position).getLineName());
            r.d(convertView, "view");
            return convertView;
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initLineTypeSpinner$1", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "p0", "Landroid/widget/AdapterView;", "p1", "Landroid/view/View;", "position", "", "p3", "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AdapterView.OnItemSelectedListener {
        final /* synthetic */ List<LineLayoutType> b;

        /* JADX WARN: Multi-variable type inference failed */
        b(List<? extends LineLayoutType> list) {
            this.b = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(K3PosCollectActivity this$0, int i, int i2, K3SrcData k3SrcData, DialogInterface dialogInterface, int i3) {
            r.e(this$0, "this$0");
            ((Spinner) this$0.findViewById(R.id.spLineTypeList)).setTag(Integer.valueOf(i));
            this$0.m = i;
            this$0.n = i2;
            this$0.getP().f(k3SrcData, ((q0) this$0).c);
            this$0.x1();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(int i, K3PosCollectActivity this$0, DialogInterface dialogInterface, int i2) {
            r.e(this$0, "this$0");
            if (i == -1) {
                i = 0;
            }
            int i3 = R.id.spLineTypeList;
            ((Spinner) this$0.findViewById(i3)).setTag(Integer.valueOf(i));
            ((Spinner) this$0.findViewById(i3)).setSelection(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> p0, View p1, final int position, long p3) {
            K3PosCollectActivity k3PosCollectActivity = K3PosCollectActivity.this;
            int i = R.id.spLineTypeList;
            Object tag = ((Spinner) k3PosCollectActivity.findViewById(i)).getTag();
            Integer num = tag instanceof Integer ? (Integer) tag : null;
            final int iIntValue = num == null ? -1 : num.intValue();
            final int iC = d0.c(this.b.get(position));
            BaseLineLayout baseLineLayout = K3PosCollectActivity.this.o;
            final K3SrcData k3SrcDataJ = baseLineLayout == null ? null : baseLineLayout.j();
            if (K3PosCollectActivity.this.n == iC && K3PosCollectActivity.this.u.isEmpty() && position == iIntValue) {
                return;
            }
            BaseLineLayout baseLineLayout2 = K3PosCollectActivity.this.o;
            boolean z = false;
            if (baseLineLayout2 != null && baseLineLayout2.o()) {
                z = true;
            }
            if (z) {
                if ((k3SrcDataJ != null ? k3SrcDataJ.id : null) == null) {
                    androidx.appcompat.app.c.a message = new androidx.appcompat.app.c.a(K3PosCollectActivity.this).setMessage("当前正在采集，还没保存，切换将导致已经采集的数据丢失，确定切换?");
                    final K3PosCollectActivity k3PosCollectActivity2 = K3PosCollectActivity.this;
                    androidx.appcompat.app.c.a positiveButton = message.setPositiveButton("确定切换", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.q
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            K3PosCollectActivity.b.c(k3PosCollectActivity2, position, iC, k3SrcDataJ, dialogInterface, i2);
                        }
                    });
                    final K3PosCollectActivity k3PosCollectActivity3 = K3PosCollectActivity.this;
                    positiveButton.setNegativeButton("不切换", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.p
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            K3PosCollectActivity.b.d(iIntValue, k3PosCollectActivity3, dialogInterface, i2);
                        }
                    }).create().show();
                    return;
                }
            }
            ((Spinner) K3PosCollectActivity.this.findViewById(i)).setTag(Integer.valueOf(position));
            K3PosCollectActivity.this.m = position;
            K3PosCollectActivity.this.n = iC;
            K3PosCollectActivity.this.x1();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> p0) {
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initLineTypeSpinner$2", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onGlobalLayout", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            K3PosCollectActivity k3PosCollectActivity = K3PosCollectActivity.this;
            int i = R.id.spLineTypeList;
            ((Spinner) k3PosCollectActivity.findViewById(i)).setDropDownVerticalOffset(((Spinner) K3PosCollectActivity.this.findViewById(i)).getMeasuredHeight());
            ((Spinner) K3PosCollectActivity.this.findViewById(i)).getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initSeekBar$3", "Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$SlideChangeListener;", "onProgress", "", "slideView", "Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;", "progress", "", "onStart", "onStop", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d implements VerticalSeekBar.a {
        d() {
        }

        @Override // cn.mucang.android.jiakaoyi.k3collect.customview.VerticalSeekBar.a
        public void a(VerticalSeekBar verticalSeekBar, float f2) {
        }

        @Override // cn.mucang.android.jiakaoyi.k3collect.customview.VerticalSeekBar.a
        public void b(VerticalSeekBar verticalSeekBar, float f2) {
        }

        @Override // cn.mucang.android.jiakaoyi.k3collect.customview.VerticalSeekBar.a
        public void c(VerticalSeekBar verticalSeekBar, float f2) {
            cn.mucang.android.core.utils.t.h("K3PosCollectActivity", r.m("progress. progress: ", Float.valueOf(f2)));
            ((q0) K3PosCollectActivity.this).c.setCurrentZoom(((f2 / 100) * (K3PosCollectActivity.this.A - K3PosCollectActivity.this.y)) + K3PosCollectActivity.this.y);
            ((q0) K3PosCollectActivity.this).c.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(final K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        try {
            BaseLineLayout baseLineLayout = this$0.o;
            if (baseLineLayout == null) {
                return;
            }
            ExamSiteModel examSiteModel = this$0.q;
            if (examSiteModel != null) {
                baseLineLayout.u(examSiteModel.examSiteId, new Function1<K3SrcData, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initSaveLine$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(K3SrcData k3SrcData) {
                        invoke2(k3SrcData);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(K3SrcData srcData) {
                        Object next;
                        r.e(srcData, "srcData");
                        this.this$0.E = true;
                        Toast.makeText(this.this$0, "保存成功", 1).show();
                        Iterator it = this.this$0.r.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!r.a(((K3SrcData) next).id, srcData.id));
                        K3SrcData k3SrcData = (K3SrcData) next;
                        if (k3SrcData == null) {
                            this.this$0.r.add(srcData);
                        } else {
                            this.this$0.r.remove(k3SrcData);
                            this.this$0.r.add(srcData);
                        }
                        if (this.this$0.u.size() > 0) {
                            this.this$0.u.clear();
                            this.this$0.t = null;
                            this.this$0.l1();
                        }
                    }
                });
            } else {
                r.u("examSiteModel");
                throw null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("tvSaveLine ", cn.mucang.android.core.utils.t.g(e2)));
            cn.mucang.android.core.utils.u.h("保存失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(final K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.r1(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initSaveLine$2$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.z0();
                this.this$0.s1();
            }
        });
    }

    private final void C0() {
        int i = R.id.seekBar;
        ((VerticalSeekBar) findViewById(i)).setMaxProgress(100);
        ((VerticalSeekBar) findViewById(i)).setMaxProgress(100);
        ((VerticalSeekBar) findViewById(i)).setOrientation(0);
        ((VerticalSeekBar) findViewById(i)).setThumb(R.drawable.ic_map_scale_thumb);
        ((VerticalSeekBar) findViewById(i)).d(28, 28);
        ((VerticalSeekBar) findViewById(i)).setUnSelectColor(-1);
        ((VerticalSeekBar) findViewById(i)).setSelectColor(-1);
        ((VerticalSeekBar) findViewById(i)).setmInnerProgressWidthPx(6);
        ((VerticalSeekBar) findViewById(i)).setProgress(BitmapDescriptorFactory.HUE_RED);
        final float f2 = (this.A - this.z) / 10;
        ((ImageView) findViewById(R.id.scaleAdd)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.D0(this.f4073a, f2, view);
            }
        });
        ((ImageView) findViewById(R.id.scaleMinus)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.E0(this.f3789a, f2, view);
            }
        });
        ((VerticalSeekBar) findViewById(i)).setOnSlideChangeListener(new d());
        this.c.setOnZoomCallbackListener(new cn.mucang.android.jiakaoyi.hpmap.view.n() { // from class: cn.mucang.android.jiakaoyi.k3collect.v
            @Override // cn.mucang.android.jiakaoyi.hpmap.view.n
            public final void a(float f3) {
                K3PosCollectActivity.F0(this.f4180a, f3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(K3PosCollectActivity this$0, float f2, View view) {
        r.e(this$0, "this$0");
        if (((VerticalSeekBar) this$0.findViewById(R.id.seekBar)).getProgress() >= 100.0f) {
            return;
        }
        float currentZoom = this$0.c.getCurrentZoom() + f2;
        float currentZoom2 = this$0.A;
        if (currentZoom < currentZoom2) {
            currentZoom2 = this$0.c.getCurrentZoom() + f2;
        }
        Pos posL0 = this$0.l0();
        this$0.getP().j(this$0.c, (float) posL0.x, (float) posL0.y, currentZoom2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(K3PosCollectActivity this$0, float f2, View view) {
        r.e(this$0, "this$0");
        if (((VerticalSeekBar) this$0.findViewById(R.id.seekBar)).getProgress() <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float currentZoom = this$0.c.getCurrentZoom() - f2;
        float currentZoom2 = this$0.y;
        if (currentZoom > currentZoom2) {
            currentZoom2 = this$0.c.getCurrentZoom() - f2;
        }
        Pos posL0 = this$0.l0();
        this$0.getP().j(this$0.c, (float) posL0.x, (float) posL0.y, currentZoom2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(final K3PosCollectActivity this$0, float f2) {
        r.e(this$0, "this$0");
        cn.mucang.android.core.utils.t.h("K3PosCollectActivity", r.m("onZoom. zoom: ", Float.valueOf(f2)));
        this$0.runOnUiThread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.c
            @Override // java.lang.Runnable
            public final void run() {
                K3PosCollectActivity.G0(this.f3791a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(K3PosCollectActivity this$0) {
        r.e(this$0, "this$0");
        float currentZoom = this$0.c.getCurrentZoom();
        float f2 = this$0.y;
        float f3 = (100 * (currentZoom - f2)) / (this$0.A - f2);
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            cn.mucang.android.core.utils.t.h("K3PosCollectActivity", r.m("onZoom. progress: ", Float.valueOf(f3)));
            VerticalSeekBar verticalSeekBar = (VerticalSeekBar) this$0.findViewById(R.id.seekBar);
            if (f3 > 100.0f) {
                f3 = 100.0f;
            }
            verticalSeekBar.setProgress(f3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        if (this.u.isEmpty()) {
            this.t = null;
            BaseLineLayout baseLineLayout = this.o;
            if (baseLineLayout != null) {
                baseLineLayout.q();
            }
            s0(ArraysKt___ArraysKt.h0(LineLayoutType.values()), 0);
            return;
        }
        K3SrcData k3SrcData = this.t;
        if (k3SrcData != null) {
            LineLayoutType k3LineType = d0.b(k3SrcData);
            LineTypeSpinnerHelper lineTypeSpinnerHelper = LineTypeSpinnerHelper.f3939a;
            r.d(k3LineType, "k3LineType");
            List<LineLayoutType> listA = lineTypeSpinnerHelper.a(k3LineType);
            s0(listA, listA.indexOf(k3LineType));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean I0(K3SrcData k3SrcData) {
        if (k3SrcData instanceof SingleLineSrcData) {
            return ((SingleLineSrcData) k3SrcData).isCurve;
        }
        if (k3SrcData instanceof ShuangHuangSrcData) {
            return ((ShuangHuangSrcData) k3SrcData).isCurve;
        }
        return false;
    }

    private final void Z(K3SrcData k3SrcData) {
        cn.mucang.android.jiakaoyi.k3collect.db.a aVarC = cn.mucang.android.jiakaoyi.k3collect.db.a.c();
        ExamSiteModel examSiteModel = this.q;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        aVarC.f(String.valueOf(examSiteModel.examSiteId), k3SrcData);
        this.r.add(k3SrcData);
        this.p.g(k3SrcData, this.c, this.f4813d);
    }

    private final void a0() {
        ExamSiteModel examSiteModel = this.q;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        if (examSiteModel.hasOriginGps()) {
            ExamSiteModel examSiteModel2 = this.q;
            if (examSiteModel2 == null) {
                r.u("examSiteModel");
                throw null;
            }
            double d2 = examSiteModel2.originLatitude;
            if (examSiteModel2 == null) {
                r.u("examSiteModel");
                throw null;
            }
            double d3 = examSiteModel2.originLongitude;
            if (examSiteModel2 != null) {
                this.f4813d = new cn.mucang.android.jiakaoyi.signal.i.b(new Gps(d2, d3, examSiteModel2.originAltitude));
            } else {
                r.u("examSiteModel");
                throw null;
            }
        }
    }

    private final void b0(final Function0<kotlin.v> function0) {
        new androidx.appcompat.app.c.a(this).setMessage("确定要删除当前线段吗？删除后将不可恢复！").setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                K3PosCollectActivity.c0(function0, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(Function0 deleteCallback, DialogInterface dialogInterface, int i) {
        r.e(deleteCallback, "$deleteCallback");
        deleteCallback.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0(K3SrcData k3SrcData) {
        m1(k3SrcData);
        this.E = true;
        MapView mapView = this.c;
        if (mapView == null) {
            return;
        }
        mapView.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0(Pos pos, K3SrcData k3SrcData) {
        CollectCurveEditHelper collectCurveEditHelper = CollectCurveEditHelper.f3938a;
        cn.mucang.android.jiakaoyi.signal.i.b converter = this.f4813d;
        r.d(converter, "converter");
        if (collectCurveEditHelper.a(converter, k3SrcData, pos)) {
            cn.mucang.android.jiakaoyi.k3collect.k0.n nVar = this.p;
            K3SrcData k3SrcData2 = this.t;
            nVar.h(k3SrcData2, this.c, this.f4813d, K0(k3SrcData2));
            cn.mucang.android.jiakaoyi.k3collect.db.a.c().g(this.t);
            this.E = true;
            cn.mucang.android.core.utils.u.h("删除点成功");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        JLoadingDialog jLoadingDialog = this.w;
        if (jLoadingDialog != null) {
            r.c(jLoadingDialog);
            if (jLoadingDialog.isShowing()) {
                JLoadingDialog jLoadingDialog2 = this.w;
                r.c(jLoadingDialog2);
                jLoadingDialog2.dismiss();
            }
        }
    }

    private final void g0() {
        BaseLineLayout baseLineLayout = this.o;
        boolean z = false;
        if (baseLineLayout != null && baseLineLayout.o()) {
            z = true;
        }
        if (z) {
            new androidx.appcompat.app.c.a(this).setMessage("检测到你正在采集路线，退出将会丢失，确定退出?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.a0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K3PosCollectActivity.h0(this.f3788a, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        } else if (this.E) {
            new androidx.appcompat.app.c.a(this).setMessage("检测到你的地图有更新，但是没有同步到服务端，退出将会丢失这部分修改，确定退出?").setPositiveButton("保存", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K3PosCollectActivity.i0(this.f3937a, dialogInterface, i);
                }
            }).setNegativeButton("退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K3PosCollectActivity.j0(this.f3932a, dialogInterface, i);
                }
            }).create().show();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(K3PosCollectActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        o1(this$0, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(K3PosCollectActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        this$0.p1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.f4813d == null) {
            return;
        }
        if (this$0.F) {
            ((TextView) this$0.findViewById(R.id.backCurrentLocation)).setText("全局预览");
            Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(this$0.b, this$0.f4813d);
            this$0.getP().i(this$0.c, (float) posJ.x, (float) posJ.y);
            this$0.F = !this$0.F;
            return;
        }
        if (this$0.r.isEmpty()) {
            TtsManager.r("该地图目前还没有保存过线", TtsGrade.GlobalTip);
            return;
        }
        this$0.s.clear();
        Iterator<K3SrcData> it = this$0.r.iterator();
        while (it.hasNext()) {
            List<Gps> listCenter = it.next().center();
            if (listCenter != null) {
                List<Pos> list = this$0.s;
                List<Pos> listF = cn.mucang.android.jiakaoyi.k3collect.k0.o.f(this$0.f4813d, listCenter);
                r.d(listF, "transCurve(converter, centerList)");
                list.addAll(listF);
            }
        }
        if (!this$0.s.isEmpty()) {
            this$0.getP().e(this$0.c, this$0.s);
            ((TextView) this$0.findViewById(R.id.backCurrentLocation)).setText("当前位置");
            this$0.F = !this$0.F;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(K3PosCollectActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(K3PosCollectActivity this$0, GpsBaseModel gpsBaseModel) {
        r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder();
        sb.append("采集考场 ");
        ExamSiteModel examSiteModel = this$0.q;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        sb.append(examSiteModel.examSiteId);
        sb.append(" 基站id ");
        ExamSiteModel examSiteModel2 = this$0.q;
        if (examSiteModel2 == null) {
            r.u("examSiteModel");
            throw null;
        }
        sb.append(examSiteModel2.gpsBaseId);
        sb.append(" 基站名字");
        ExamSiteModel examSiteModel3 = this$0.q;
        if (examSiteModel3 == null) {
            r.u("examSiteModel");
            throw null;
        }
        sb.append((Object) examSiteModel3.gpsBaseName);
        sb.append(" 当前连接基站 ");
        sb.append((Object) (gpsBaseModel != null ? gpsBaseModel.getGpsBaseName() : null));
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        if (gpsBaseModel == null) {
            return;
        }
        ((TextView) this$0.findViewById(R.id.gps_base_name_value)).setText(gpsBaseModel.getGpsBaseName());
        TtsManager.r(r.m("当前连接基站是", gpsBaseModel.getGpsBaseName()), TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(r.m("当前连接基站是", gpsBaseModel.getGpsBaseName()));
    }

    private final void k1() {
        Gps gpsV;
        BaseLineLayout baseLineLayout = this.o;
        boolean z = false;
        if (baseLineLayout instanceof SingleLineLayout) {
            ((TextView) findViewById(R.id.tvDistance)).setVisibility(0);
            BaseLineLayout baseLineLayout2 = this.o;
            Objects.requireNonNull(baseLineLayout2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout");
            gpsV = ((SingleLineLayout) baseLineLayout2).Q();
        } else if (baseLineLayout instanceof BaseShuangHuangLayout) {
            ((TextView) findViewById(R.id.tvDistance)).setVisibility(0);
            BaseLineLayout baseLineLayout3 = this.o;
            Objects.requireNonNull(baseLineLayout3, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout");
            gpsV = ((BaseShuangHuangLayout) baseLineLayout3).V();
        } else {
            int i = R.id.tvDistance;
            ((TextView) findViewById(i)).setVisibility(8);
            ((TextView) findViewById(i)).setText("");
            gpsV = null;
        }
        if (gpsV != null) {
            int iDistanceTo = (int) gpsV.distanceTo(this.f4812a);
            if (this.b != null && SystemClock.elapsedRealtime() - this.H > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                if (1 <= iDistanceTo && iDistanceTo <= 40) {
                    z = true;
                }
                if (z && iDistanceTo % 10 == 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(iDistanceTo);
                    sb.append((char) 31859);
                    TtsManager.r(sb.toString(), TtsGrade.GlobalTip);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iDistanceTo);
                    sb2.append((char) 31859);
                    cn.mucang.android.core.utils.u.h(sb2.toString());
                    this.H = SystemClock.elapsedRealtime();
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(iDistanceTo);
            sb3.append((char) 31859);
            String string = sb3.toString();
            int i2 = R.id.tvDistance;
            if (r.a(string, ((TextView) findViewById(i2)).getText())) {
                return;
            }
            TextView textView = (TextView) findViewById(i2);
            StringBuilder sb4 = new StringBuilder();
            sb4.append(iDistanceTo);
            sb4.append((char) 31859);
            textView.setText(sb4.toString());
        }
    }

    private final Pos l0() {
        cn.mucang.android.jiakaoyi.signal.pos.c currentViewport = this.c.getCurrentViewport();
        r.d(currentViewport, "mapView.currentViewport");
        Pos center = currentViewport.b();
        if (this.s.size() > 0) {
            double d2 = Double.MAX_VALUE;
            Pos pos = null;
            for (Pos pos2 : this.s) {
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(currentViewport, pos2)) {
                    double dDistanceTo = center.distanceTo(pos2);
                    if (dDistanceTo < d2) {
                        pos = pos2;
                        d2 = dDistanceTo;
                    }
                }
            }
            if (pos != null) {
                return pos;
            }
        }
        r.d(center, "center");
        return center;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1() {
        int i;
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = this.c.u.s();
        r.d(listS, "mapView.mapManager.layers");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listS.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar = (cn.mucang.android.jiakaoyi.hpmap.view.p.k) next;
            if (kVar != null && (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j)) {
                i = 1;
            }
            if (i != 0) {
                arrayList.add(next);
            }
        }
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar2 = (cn.mucang.android.jiakaoyi.hpmap.view.p.k) obj;
            if (kVar2 instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                boolean zContains = this.u.contains(((cn.mucang.android.jiakaoyi.k3collect.g0.j) kVar2).j);
                kVar2.f3759d = zContains;
                if (zContains) {
                    kVar2.f3760e = this.v;
                } else {
                    kVar2.f3760e = null;
                }
            }
            i = i2;
        }
        MapView mapView = this.c;
        if (mapView == null) {
            return;
        }
        mapView.r();
    }

    private final void m0() {
        ((ImageView) findViewById(R.id.back)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.n0(this.f3947a, view);
            }
        });
    }

    private final void m1(K3SrcData k3SrcData) {
        Object next;
        Iterator<T> it = this.r.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!r.a(((K3SrcData) next).id, k3SrcData.id));
        K3SrcData k3SrcData2 = (K3SrcData) next;
        if (k3SrcData2 != null) {
            this.r.remove(k3SrcData2);
        }
        cn.mucang.android.jiakaoyi.k3collect.db.a.c().a(k3SrcData.id);
        this.p.f(k3SrcData, this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.g0();
    }

    private final void n1(Function1<? super Boolean, kotlin.v> function1) {
        JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
        this.w = jLoadingDialog;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在保存到线上");
        }
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$saveMapData$1(this, System.currentTimeMillis(), function1, null), 3, null);
    }

    private final void o0() {
        ((Button) findViewById(R.id.tvDeletePos)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.p0(this.f3941a, view);
            }
        });
        ((Button) findViewById(R.id.tvSplit)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.q0(this.f4165a, view);
            }
        });
        ((TextView) findViewById(R.id.tvDeleteLine)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.r0(this.f3944a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void o1(K3PosCollectActivity k3PosCollectActivity, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        k3PosCollectActivity.n1(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$initDeleteView$1$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1() {
        n1(new K3PosCollectActivity$saveMapDataAndExit$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$initDeleteView$2$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean q1(List<? extends K3HpMapEntity> list) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                ExamSiteModel examSiteModel = this.q;
                if (examSiteModel == null) {
                    r.u("examSiteModel");
                    throw null;
                }
                examSiteModel.mapData = cn.mucang.android.jiakaoyi.k3collect.src.a.d(list);
                cn.mucang.android.core.utils.t.a("mapUpload", r.m("序列化成JSON时间 ", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis2)));
                ExamSiteModel examSiteModel2 = this.q;
                if (examSiteModel2 == null) {
                    r.u("examSiteModel");
                    throw null;
                }
                String str = examSiteModel2.mapData;
                r.d(str, "examSiteModel.mapData");
                Charset charsetDefaultCharset = Charset.defaultCharset();
                r.d(charsetDefaultCharset, "defaultCharset()");
                byte[] bytes = str.getBytes(charsetDefaultCharset);
                r.d(bytes, "(this as java.lang.String).getBytes(charset)");
                cn.mucang.android.core.utils.t.a("mapUpload", r.m("上传数据大小 size ", Integer.valueOf(bytes.length)));
                GeneralBusinessApi generalBusinessApi = new GeneralBusinessApi();
                ExamSiteModel examSiteModel3 = this.q;
                if (examSiteModel3 == null) {
                    r.u("examSiteModel");
                    throw null;
                }
                generalBusinessApi.u(examSiteModel3);
                File file = new File(getCacheDir(), "map.tmp");
                if (file.exists()) {
                    file.deleteOnExit();
                }
                cn.mucang.android.core.utils.t.a("mapUpload", r.m("保存路线需要的总时间 ", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("保存地图 ", e2.getLocalizedMessage()));
                if (e2 instanceof ApiException) {
                    String message = e2.getMessage();
                    if (message == null) {
                        message = "保存地图设置原点失败";
                    }
                    cn.mucang.android.core.utils.u.h(message);
                }
                File file2 = new File(getCacheDir(), "map.tmp");
                if (file2.exists()) {
                    file2.deleteOnExit();
                }
                cn.mucang.android.core.utils.t.a("mapUpload", r.m("保存路线需要的总时间 ", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
                return false;
            }
        } catch (Throwable th) {
            File file3 = new File(getCacheDir(), "map.tmp");
            if (file3.exists()) {
                file3.deleteOnExit();
            }
            cn.mucang.android.core.utils.t.a("mapUpload", r.m("保存路线需要的总时间 ", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(final K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.J0()) {
            final K3SrcData k3SrcData = this$0.t;
            if (k3SrcData == null) {
                return;
            }
            this$0.b0(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initDeleteView$3$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.u.clear();
                    this.this$0.v = null;
                    this.this$0.l1();
                    this.this$0.d0(k3SrcData);
                    this.this$0.t0(ArraysKt___ArraysKt.h0(LineLayoutType.values()), k3SrcData.type);
                    this.this$0.t = null;
                    BaseLineLayout baseLineLayout = this.this$0.o;
                    if (baseLineLayout == null) {
                        return;
                    }
                    baseLineLayout.q();
                }
            });
            return;
        }
        BaseLineLayout baseLineLayout = this$0.o;
        if (baseLineLayout != null && baseLineLayout.o()) {
            this$0.b0(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$initDeleteView$3$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BaseLineLayout baseLineLayout2 = this.this$0.o;
                    if (baseLineLayout2 == null) {
                        return;
                    }
                    baseLineLayout2.s();
                }
            });
        } else {
            Toast.makeText(this$0, "暂无可删除线段", 0).show();
        }
    }

    private final void r1(Function0<kotlin.v> function0) {
        Gps gpsK = k();
        if (gpsK == null || gpsK.longitude < 1.0E-10d || gpsK.latitude < 1.0E-10d) {
            m("当前原点非法");
        } else {
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$saveOriginGps$1(this, gpsK, function0, null), 3, null);
        }
    }

    private final void s0(List<? extends LineLayoutType> list, int i) {
        this.x = new a(this, android.R.layout.simple_spinner_item, list);
        int i2 = R.id.spLineTypeList;
        ((Spinner) findViewById(i2)).setAdapter((SpinnerAdapter) this.x);
        ((Spinner) findViewById(i2)).setOnItemSelectedListener(new b(list));
        ((Spinner) findViewById(i2)).getViewTreeObserver().addOnGlobalLayoutListener(new c());
        if (i <= -1) {
            i = 0;
        } else if (i > list.size() - 1) {
            i = list.size() - 1;
        }
        ((Spinner) findViewById(i2)).setSelection(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s1() {
        if (this.f4813d == null) {
            return;
        }
        showLoadingDialog("正在加载地图");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$showMap$1(this, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    private final void showLoadingDialog(String content) {
        JLoadingDialog jLoadingDialog = this.w;
        if (jLoadingDialog != null) {
            r.c(jLoadingDialog);
            if (!jLoadingDialog.isShowing()) {
                this.w = new JLoadingDialog(this);
            }
        } else {
            this.w = new JLoadingDialog(this);
        }
        JLoadingDialog jLoadingDialog2 = this.w;
        if (jLoadingDialog2 == null) {
            return;
        }
        jLoadingDialog2.b(content);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0(List<? extends LineLayoutType> list, int i) {
        Iterator<? extends LineLayoutType> it = list.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            int i4 = i3 + 1;
            if (it.next().getLineType() == i) {
                i2 = i3;
                break;
            }
            i3 = i4;
        }
        s0(list, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1(Pos pos, K3SrcData k3SrcData) {
        if (k3SrcData instanceof SingleLineSrcData) {
            List<SingleLineSrcData> listE = CollectCurveEditHelper.f3938a.e(this.f4813d, (SingleLineSrcData) k3SrcData, pos);
            if (listE == null || listE.size() != 2) {
                return;
            }
            Z(listE.get(0));
            Z(listE.get(1));
            m1(k3SrcData);
            return;
        }
        if (k3SrcData instanceof ShuangHuangSrcData) {
            CollectCurveEditHelper collectCurveEditHelper = CollectCurveEditHelper.f3938a;
            cn.mucang.android.jiakaoyi.signal.i.b converter = this.f4813d;
            r.d(converter, "converter");
            List<ShuangHuangSrcData> listD = collectCurveEditHelper.d(converter, (ShuangHuangSrcData) k3SrcData, pos);
            if (listD == null || listD.size() != 2) {
                return;
            }
            Z(listD.get(0));
            Z(listD.get(1));
            m1(k3SrcData);
        }
    }

    private final void u0() {
        this.c.setOnClickListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3collect.e
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                K3PosCollectActivity.v0(this.f3934a, (Pos) obj);
            }
        });
    }

    private final void u1() {
        MultilaneCollectActivity.a aVar = MultilaneCollectActivity.m;
        ExamSiteModel examSiteModel = this.q;
        if (examSiteModel != null) {
            aVar.a(this, examSiteModel, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3collect.o
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    K3PosCollectActivity.v1(this.f4155a, i, i2, intent);
                }
            });
        } else {
            r.u("examSiteModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [T, cn.mucang.android.jiakaoyi.k3collect.g0.j] */
    public static final void v0(K3PosCollectActivity this$0, Pos pos) {
        r.e(this$0, "this$0");
        BaseLineLayout baseLineLayout = this$0.o;
        if (baseLineLayout == null) {
            return;
        }
        if (baseLineLayout.o() && baseLineLayout.j().id == null) {
            cn.mucang.android.core.utils.u.h("当前正在采集,不能选中线");
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.q.a aVarQ = this$0.c.u.q(pos);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (aVarQ != null) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar = aVarQ.c;
            if (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                Objects.requireNonNull(kVar, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.layers.K3BaseLayer<*>");
                ref$ObjectRef.element = (cn.mucang.android.jiakaoyi.k3collect.g0.j) kVar;
                this$0.v = aVarQ.b;
            }
        } else {
            this$0.v = null;
        }
        T t = ref$ObjectRef.element;
        if (t == 0) {
            K3SrcData k3SrcData = this$0.t;
            if (k3SrcData != null) {
                int i = k3SrcData == null ? 0 : k3SrcData.type;
                this$0.getP().g(this$0.t, this$0.c, this$0.f4813d);
                BaseLineLayout baseLineLayout2 = this$0.o;
                if (baseLineLayout2 != null) {
                    baseLineLayout2.q();
                }
                this$0.t0(ArraysKt___ArraysKt.h0(LineLayoutType.values()), i);
                this$0.u.clear();
                this$0.t = null;
            }
        } else if (((cn.mucang.android.jiakaoyi.k3collect.g0.j) t).j != null) {
            this$0.u.clear();
            List<Long> list = this$0.u;
            Long l = ((cn.mucang.android.jiakaoyi.k3collect.g0.j) ref$ObjectRef.element).j;
            r.d(l, "selectLayer.id");
            list.add(l);
        }
        this$0.l1();
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$initMapSelectListener$1$1$1(this$0, ref$ObjectRef, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(final K3PosCollectActivity this$0, int i, final int i2, final Intent intent) {
        r.e(this$0, "this$0");
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.n
            @Override // java.lang.Runnable
            public final void run() {
                K3PosCollectActivity.w1(i2, intent, this$0);
            }
        }, 1000L);
    }

    private final void w0() {
        ((TextView) findViewById(R.id.topRightAction)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.x0(this.f3943a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w1(int i, Intent intent, K3PosCollectActivity this$0) {
        long[] longArrayExtra;
        r.e(this$0, "this$0");
        if (i != 200 || (longArrayExtra = intent.getLongArrayExtra("idsJson")) == null) {
            return;
        }
        if (!(longArrayExtra.length == 0)) {
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new K3PosCollectActivity$startMultilanceDialog$1$1$1(longArrayExtra, this$0, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(final K3PosCollectActivity this$0, View view) {
        r.e(this$0, "this$0");
        BaseLineLayout baseLineLayout = this$0.o;
        boolean z = false;
        if (baseLineLayout != null && baseLineLayout.o()) {
            z = true;
        }
        if (z) {
            new androidx.appcompat.app.c.a(this$0).setMessage("还有信息没有保存，继续将丢失，是否继续？").setPositiveButton("继续", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.c0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    K3PosCollectActivity.y0(this.f3792a, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        } else {
            this$0.u1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1() {
        K3SrcData k3SrcDataJ;
        if (J0()) {
            k3SrcDataJ = this.t;
        } else {
            BaseLineLayout baseLineLayout = this.o;
            k3SrcDataJ = baseLineLayout == null ? null : baseLineLayout.j();
        }
        a aVar = this.x;
        if (aVar == null) {
            return;
        }
        int i = this.m;
        if (i == -1) {
            i = 0;
        }
        this.m = i;
        LineLayoutType lineLayoutType = aVar.a().get(this.m);
        BaseLineLayout baseLineLayout2 = this.o;
        if (baseLineLayout2 != null) {
            baseLineLayout2.b();
        }
        cn.mucang.android.core.utils.t.a("dsh", "collect createLineLayout");
        int i2 = R.id.container;
        ((FrameLayout) findViewById(i2)).removeAllViews();
        BaseLineLayout baseLineLayoutA = LayoutDataHelper.f3848a.a(this, lineLayoutType, k3SrcDataJ);
        this.o = baseLineLayoutA;
        if (baseLineLayoutA == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(i2);
        LayoutInflater layoutInflater = getLayoutInflater();
        r.d(layoutInflater, "layoutInflater");
        MapView mapView = this.c;
        r.d(mapView, "mapView");
        frameLayout.addView(baseLineLayoutA.k(layoutInflater, mapView).getRoot());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(K3PosCollectActivity this$0, DialogInterface dialogInterface, int i) {
        r.e(this$0, "this$0");
        BaseLineLayout baseLineLayout = this$0.o;
        if (baseLineLayout != null) {
            baseLineLayout.s();
        }
        this$0.u1();
    }

    private final String y1(double d2, int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String str = String.format("%." + i + 'f', Arrays.copyOf(new Object[]{Double.valueOf(d2)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0() {
        ExamSiteModel examSiteModel = this.q;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        if (examSiteModel.hasOriginGps()) {
            int i = R.id.tvSaveLine;
            ((TextView) findViewById(i)).setText("保存");
            ((TextView) findViewById(R.id.topRightAction)).setVisibility(0);
            ((TextView) findViewById(i)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    K3PosCollectActivity.A0(this.f4074a, view);
                }
            });
            return;
        }
        m("当前考场的原点为空,请点击右下角的设置原点按钮设置原点");
        int i2 = R.id.tvSaveLine;
        ((TextView) findViewById(i2)).setText("设置原点");
        ((TextView) findViewById(R.id.topRightAction)).setVisibility(8);
        ((TextView) findViewById(i2)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.B0(this.f4164a, view);
            }
        });
    }

    public final boolean J0() {
        return this.u.size() > 0;
    }

    public final boolean K0(K3SrcData k3SrcData) {
        if ((k3SrcData == null ? null : k3SrcData.id) == null || this.u.isEmpty()) {
            return false;
        }
        return this.u.contains(k3SrcData.id);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "K3PosCollectActivity";
    }

    /* JADX INFO: renamed from: k0, reason: from getter */
    public final cn.mucang.android.jiakaoyi.k3collect.k0.n getP() {
        return this.p;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.q0
    @SuppressLint({"SetTextI18n"})
    protected void l(int i) {
        TextView textView = (TextView) findViewById(R.id.gps_info_value);
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append((char) 39063);
        textView.setText(sb.toString());
        ((TextView) findViewById(R.id.gps_longitude_value)).setText(y1(this.b.longitude, 10));
        ((TextView) findViewById(R.id.gps_latitude_value)).setText(y1(this.b.latitude, 10));
        ((TextView) findViewById(R.id.gps_status_value)).setText(String.valueOf(this.f4815f));
        if (j() == null) {
            return;
        }
        TextView textView2 = (TextView) findViewById(R.id.gps_baseX_value);
        cn.mucang.android.jiakaoyi.signal.i.b bVarJ = j();
        r.c(bVarJ);
        textView2.setText(y1(bVarJ.c().longitude, 10));
        TextView textView3 = (TextView) findViewById(R.id.gps_baseY_value);
        cn.mucang.android.jiakaoyi.signal.i.b bVarJ2 = j();
        r.c(bVarJ2);
        textView3.setText(y1(bVarJ2.c().latitude, 10));
        if (this.D != null) {
            cn.mucang.android.jiakaoyi.signal.i.b bVarJ3 = j();
            Pos posA = bVarJ3 == null ? null : bVarJ3.a(this.f4812a);
            if (posA == null) {
                cn.mucang.android.jiakaoyi.hpmap.view.p.j jVar = this.D;
                if (jVar != null) {
                    jVar.j(new Pos(0.0d, 0.0d));
                }
            } else {
                cn.mucang.android.jiakaoyi.hpmap.view.p.j jVar2 = this.D;
                if (jVar2 != null) {
                    jVar2.j(posA);
                }
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Gps gps = this.b;
        if (gps != null && gps.latitude > 1.0E-10d && gps.longitude > 1.0E-10d && this.G == 0) {
            double dDistanceTo = j().c().distanceTo(this.b);
            if (dDistanceTo > 40000.0d) {
                this.G = jElapsedRealtime;
                TtsManager.r("当前位置距离地图原点位置太远，可能会影响采集精度", TtsGrade.GlobalTip);
                cn.mucang.android.core.utils.u.h("当前位置距离地图原点位置有" + (dDistanceTo / ((double) 1000)) + "公里");
            }
        }
        k1();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        g0();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.q0, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_k3_pos_collect);
        MapView mapView = (MapView) findViewById(R.id.mapView);
        this.c = mapView;
        mapView.setMapMode(MapView.Mode.Edit);
        m0();
        ExamSiteModel examSiteModelA = cn.mucang.android.jiakaoyi.mapcollect.a.a(getIntent());
        r.d(examSiteModelA, "get(intent)");
        this.q = examSiteModelA;
        TextView textView = (TextView) findViewById(R.id.tvRouteName);
        ExamSiteModel examSiteModel = this.q;
        View root = null;
        if (examSiteModel == null) {
            r.u("examSiteModel");
            throw null;
        }
        textView.setText(examSiteModel.examSiteName);
        int i = R.id.tvSaveRoute;
        ((TextView) findViewById(i)).getPaint().setUnderlineText(true);
        C0();
        s0(kotlin.collections.n.c(LineLayoutType.values()), 0);
        this.o = new DashLineLayout(this, null, 0, 4, null);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.container);
        BaseLineLayout baseLineLayout = this.o;
        if (baseLineLayout != null) {
            LayoutInflater layoutInflater = getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            MapView mapView2 = this.c;
            r.d(mapView2, "mapView");
            androidx.viewbinding.a aVarK = baseLineLayout.k(layoutInflater, mapView2);
            if (aVarK != null) {
                root = aVarK.getRoot();
            }
        }
        frameLayout.addView(root);
        a0();
        s1();
        o0();
        z0();
        w0();
        u0();
        ((TextView) findViewById(i)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.h1(this.f4159a, view);
            }
        });
        ((TextView) findViewById(R.id.backCurrentLocation)).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3PosCollectActivity.i1(this.f3787a, view);
            }
        });
        cn.mucang.android.jiakaoyi.hpmap.view.p.j jVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.j(this.c);
        this.D = jVar;
        this.c.u.g(jVar);
        LiveBus.d(GpsBaseModel.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3collect.b0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3PosCollectActivity.j1(this.f3790a, (GpsBaseModel) obj);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.q0, cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.p.b(this.c);
        this.c.c();
        BaseLineLayout baseLineLayout = this.o;
        if (baseLineLayout == null) {
            return;
        }
        baseLineLayout.b();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.c.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.c.n();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.u.clear();
    }
}
