package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.d0;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.ExitDialog;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityMonitorBinding;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00016B\u0005¢\u0006\u0002\u0010\u0004J\u001a\u0010%\u001a\u00020&2\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010(H\u0002J\b\u0010)\u001a\u00020*H\u0002J\b\u0010+\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020.H\u0002J\b\u0010/\u001a\u00020\tH\u0016J\b\u00100\u001a\u00020&H\u0014J\b\u00101\u001a\u00020&H\u0002J\b\u00102\u001a\u00020&H\u0002J\u0010\u00103\u001a\u00020&2\u0006\u00104\u001a\u000205H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001c\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001d\u0010\u001aR\u001b\u0010\u001f\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0014\u001a\u0004\b \u0010\u0012R\u001b\u0010\"\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0014\u001a\u0004\b#\u0010\u0012¨\u00067"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityMonitorBinding;", "Landroid/view/View$OnClickListener;", "()V", "api", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorApi;", "dataMap", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "hasChanged", "", TtmlNode.ATTR_ID, "", "programmeId", "getProgrammeId", "()Ljava/lang/String;", "programmeId$delegate", "Lkotlin/Lazy;", "scenePointList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;", "step", "getStep", "()I", "step$delegate", "subStep", "getSubStep", "subStep$delegate", "teachModelDesc", "getTeachModelDesc", "teachModelDesc$delegate", "teachModelId", "getTeachModelId", "teachModelId$delegate", "doSave", "", "onSave", "Lkotlin/Function0;", "getCameraModel", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CameraModel;", "getCarModel", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/CarModel;", "getSceneModel", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/SceneModel;", "getStatName", "init", "initData", "loadData", "onClick", "v", "Landroid/view/View;", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MonitorActivity extends BaseViewBindingActivity<ActivityMonitorBinding> implements View.OnClickListener {
    public static final a l = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6516g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6517h;
    private final Lazy b = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$programmeId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.programmeId");
            return stringExtra == null ? "" : stringExtra;
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$teachModelId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.teachModelId");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f6513d = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$teachModelDesc$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.teachModelDesc");
            return stringExtra == null ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f6514e = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$step$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.teachModelStep", 0));
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f6515f = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$subStep$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.teachModelSubStep", 0));
        }
    });
    private final HashMap<String, Object> i = new HashMap<>();
    private final MonitorApi j = new MonitorApi();
    private final List<ScenePointModel> k = new ArrayList();

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J:\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$Companion;", "", "()V", "KEY_PROGRAMME_ID", "", "KEY_TEACH_MODEL_DESC", "KEY_TEACH_MODEL_ID", "KEY_TEACH_MODEL_STEP", "KEY_TEACH_MODEL_SUB_STEP", "launch", "", "context", "Landroid/content/Context;", "programmeId", "teachModelId", "step", "", "subStep", SocialConstants.PARAM_APP_DESC, "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, String programmeId, String teachModelId, int i, int i2, String str) {
            r.e(context, "context");
            r.e(programmeId, "programmeId");
            r.e(teachModelId, "teachModelId");
            Intent intent = new Intent(context, (Class<?>) MonitorActivity.class);
            intent.putExtra("key.programmeId", programmeId);
            intent.putExtra("key.teachModelId", teachModelId);
            intent.putExtra("key.teachModelStep", i);
            intent.putExtra("key.teachModelSubStep", i2);
            intent.putExtra("key.teachModelDesc", str);
            v vVar = v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$initData$5", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            r.e(s, "s");
            try {
                MonitorActivity.this.s().setTime(Integer.parseInt(s.toString()));
                MonitorActivity.this.f6517h = true;
            } catch (Exception unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity$initData$6", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            r.e(s, "s");
            try {
                MonitorActivity.this.u().setTime(Integer.parseInt(s.toString()));
                MonitorActivity.this.f6517h = true;
            } catch (Exception unused) {
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(MonitorActivity this$0, View view) {
        r.e(this$0, "this$0");
        o(this$0, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(MonitorActivity this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        this$0.r().setEnable(z);
        this$0.f6517h = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(MonitorActivity this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        this$0.s().setEnable(z);
        this$0.f6517h = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(MonitorActivity this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        this$0.u().setEnable(z);
        this$0.f6517h = true;
    }

    public static final void O(Context context, String str, String str2, int i, int i2, String str3) {
        l.a(context, str, str2, i, i2, str3);
    }

    private final void P() {
        new u(this).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.b
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                MonitorActivity.Q(this.f6521a);
            }
        }, "正在加载数据", "加载失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [T, cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorModel] */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorModel] */
    public static final void Q(final MonitorActivity this$0) throws ApiException, InternalException, HttpException {
        final List<ScenePointModel> listO;
        r.e(this$0, "this$0");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? N = this$0.j.n(this$0.t(), this$0.y());
        ref$ObjectRef.element = N;
        if (N == 0) {
            ref$ObjectRef.element = new MonitorModel();
        }
        try {
            listO = this$0.j.o();
        } catch (Exception unused) {
            listO = null;
        }
        JSONObject object = JSON.parseObject(((MonitorModel) ref$ObjectRef.element).getContent());
        if (object == null) {
            object = new JSONObject();
        }
        Object obj = object.get("201");
        String string = obj == null ? null : obj.toString();
        final CameraModel cameraModel = string != null ? (CameraModel) JSON.parseObject(string, CameraModel.class) : new CameraModel();
        Object obj2 = object.get("202");
        String string2 = obj2 == null ? null : obj2.toString();
        final CarModel carModel = string2 != null ? (CarModel) JSON.parseObject(string2, CarModel.class) : new CarModel();
        Object obj3 = object.get("203");
        String string3 = obj3 != null ? obj3.toString() : null;
        final SceneModel sceneModel = string3 != null ? (SceneModel) JSON.parseObject(string3, SceneModel.class) : new SceneModel();
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.h
            @Override // java.lang.Runnable
            public final void run() {
                MonitorActivity.R(this.f6528a, ref$ObjectRef, cameraModel, carModel, sceneModel, listO);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void R(MonitorActivity this$0, Ref$ObjectRef data, CameraModel cameraModel, CarModel carModel, SceneModel sceneModel, List list) {
        r.e(this$0, "this$0");
        r.e(data, "$data");
        this$0.f6516g = ((MonitorModel) data.element).getId();
        this$0.i.clear();
        HashMap<String, Object> map = this$0.i;
        r.d(cameraModel, "cameraModel");
        map.put("201", cameraModel);
        HashMap<String, Object> map2 = this$0.i;
        r.d(carModel, "carModel");
        map2.put("202", carModel);
        HashMap<String, Object> map3 = this$0.i;
        r.d(sceneModel, "sceneModel");
        map3.put("203", sceneModel);
        this$0.k.clear();
        if (cn.mucang.android.core.utils.g.d(list)) {
            List<ScenePointModel> list2 = this$0.k;
            r.c(list);
            list2.addAll(list);
        }
        this$0.initData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(List dataList, MonitorActivity this$0, View v, d0 pop, AdapterView adapterView, View view, int i, long j) {
        r.e(dataList, "$dataList");
        r.e(this$0, "this$0");
        r.e(v, "$v");
        r.e(pop, "$pop");
        Object obj = dataList.get(i);
        if (obj instanceof ViewPositionType) {
            ViewPositionType viewPositionType = (ViewPositionType) obj;
            this$0.r().setViewPosition(viewPositionType.getValue());
            this$0.f6517h = true;
            ((TextView) v).setText(viewPositionType.getLabel());
        } else if (obj instanceof MonitorPointType) {
            MonitorPointType monitorPointType = (MonitorPointType) obj;
            this$0.s().setPointType(monitorPointType.getValue());
            this$0.f6517h = true;
            ((TextView) v).setText(monitorPointType.getLabel());
        } else if (obj instanceof DisplayType) {
            DisplayType displayType = (DisplayType) obj;
            this$0.u().setDisplayType(displayType.getValue());
            this$0.f6517h = true;
            ((TextView) v).setText(displayType.getLabel());
        } else if (obj instanceof ScenePointModel) {
            ScenePointModel scenePointModel = (ScenePointModel) obj;
            this$0.u().setScenePointId(scenePointModel.getId());
            this$0.f6517h = true;
            ((TextView) v).setText(scenePointModel.getName());
        }
        pop.dismiss();
    }

    private final void initData() {
        Object next;
        g().assistCb.setChecked(r().getEnable());
        g().assistCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.g
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MonitorActivity.B(this.f6527a, compoundButton, z);
            }
        });
        g().bodyCb.setChecked(s().getEnable());
        g().bodyCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.i
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MonitorActivity.C(this.f6532a, compoundButton, z);
            }
        });
        g().sceneCb.setChecked(u().getEnable());
        g().sceneCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.f
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MonitorActivity.D(this.f6526a, compoundButton, z);
            }
        });
        g().viewSelect.setText(ViewPositionType.INSTANCE.a(r().getViewPosition()).getLabel());
        g().pointSelect.setText(MonitorPointType.INSTANCE.a(s().getPointType()).getLabel());
        g().typeSelect.setText(DisplayType.INSTANCE.a(u().getDisplayType()).getLabel());
        TextView textView = g().sceneSelect;
        Iterator<T> it = this.k.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((ScenePointModel) next).getId() == u().getScenePointId()));
        ScenePointModel scenePointModel = (ScenePointModel) next;
        textView.setText(scenePointModel != null ? scenePointModel.getName() : null);
        g().lightEt.setText(String.valueOf(s().getTime()));
        g().lightEt.addTextChangedListener(new b());
        g().onEt.setText(String.valueOf(u().getTime()));
        g().onEt.addTextChangedListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(final Function0<v> function0) {
        new u(this).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.a
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                MonitorActivity.p(this.f6520a, function0);
            }
        }, "正在保存", "保存失败");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void o(MonitorActivity monitorActivity, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        monitorActivity.n(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final MonitorActivity this$0, final Function0 function0) throws ApiException, InternalException, HttpException {
        r.e(this$0, "this$0");
        int i = this$0.f6516g;
        if (i <= 0) {
            MonitorApi monitorApi = this$0.j;
            String strT = this$0.t();
            String strY = this$0.y();
            int iV = this$0.v();
            int iW = this$0.w();
            String jSONString = JSON.toJSONString(this$0.i);
            r.d(jSONString, "toJSONString(dataMap)");
            monitorApi.m(strT, strY, iV, iW, jSONString);
        } else {
            MonitorApi monitorApi2 = this$0.j;
            String jSONString2 = JSON.toJSONString(this$0.i);
            r.d(jSONString2, "toJSONString(dataMap)");
            monitorApi2.p(i, jSONString2);
        }
        cn.mucang.android.core.utils.u.h("保存成功");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.e
            @Override // java.lang.Runnable
            public final void run() {
                MonitorActivity.q(this.f6525a, function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(MonitorActivity this$0, Function0 function0) {
        r.e(this$0, "this$0");
        this$0.f6517h = false;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    private final CameraModel r() {
        Object obj = this.i.get("201");
        CameraModel cameraModel = obj instanceof CameraModel ? (CameraModel) obj : null;
        return cameraModel == null ? new CameraModel() : cameraModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CarModel s() {
        Object obj = this.i.get("202");
        CarModel carModel = obj instanceof CarModel ? (CarModel) obj : null;
        return carModel == null ? new CarModel() : carModel;
    }

    private final String t() {
        return (String) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SceneModel u() {
        Object obj = this.i.get("203");
        SceneModel sceneModel = obj instanceof SceneModel ? (SceneModel) obj : null;
        return sceneModel == null ? new SceneModel() : sceneModel;
    }

    private final int v() {
        return ((Number) this.f6514e.getValue()).intValue();
    }

    private final int w() {
        return ((Number) this.f6515f.getValue()).intValue();
    }

    private final String x() {
        return (String) this.f6513d.getValue();
    }

    private final String y() {
        return (String) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(final MonitorActivity this$0, View view) {
        r.e(this$0, "this$0");
        if (this$0.f6517h) {
            new ExitDialog(this$0, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$init$1$1
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.finish();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$init$1$2
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    final MonitorActivity monitorActivity = this.this$0;
                    monitorActivity.n(new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity$init$1$2.1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ v invoke() {
                            invoke2();
                            return v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            monitorActivity.finish();
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }).show();
        } else {
            this$0.finish();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "情景触发配置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().closeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MonitorActivity.z(this.f6524a, view);
            }
        });
        g().descTv.setText(x());
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MonitorActivity.A(this.f6533a, view);
            }
        });
        g().viewSelect.setOnClickListener(this);
        g().pointSelect.setOnClickListener(this);
        g().sceneSelect.setOnClickListener(this);
        g().typeSelect.setOnClickListener(this);
        P();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(final View v) {
        final List<ScenePointModel> listJ;
        String name;
        r.e(v, "v");
        if (r.a(v, g().viewSelect)) {
            listJ = ArraysKt___ArraysKt.h0(ViewPositionType.values());
        } else if (r.a(v, g().pointSelect)) {
            listJ = ArraysKt___ArraysKt.h0(MonitorPointType.values());
        } else if (r.a(v, g().typeSelect)) {
            listJ = ArraysKt___ArraysKt.h0(DisplayType.values());
        } else {
            listJ = r.a(v, g().sceneSelect) ? this.k : kotlin.collections.u.j();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listJ) {
            String label = "";
            if (obj instanceof ViewPositionType) {
                label = ((ViewPositionType) obj).getLabel();
            } else if (obj instanceof MonitorPointType) {
                label = ((MonitorPointType) obj).getLabel();
            } else if (obj instanceof DisplayType) {
                label = ((DisplayType) obj).getLabel();
            } else if ((obj instanceof ScenePointModel) && (name = ((ScenePointModel) obj).getName()) != null) {
                label = name;
            }
            arrayList.add(label);
        }
        final d0 d0Var = new d0(v.getContext());
        d0Var.l(new ArrayAdapter(v.getContext(), R.layout.new_collect_list_item, arrayList));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(v);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.c
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                MonitorActivity.S(listJ, this, v, d0Var, adapterView, view, i, j);
            }
        });
        d0Var.show();
    }
}
