package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.collect.MaterialSelectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.MaterialModel;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.AutoTeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VideoModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.ui.widget.ListPopupHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public class e2 extends BaseFragment {
    private ViewGroup A;
    private LinearLayout B;
    private cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.m C;
    private List<String> F;
    private List<Integer> G;
    private EditText b;
    private EditText c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EditText f6592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EditText f6593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f6594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f6595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f6596h;
    private MucangRoundCornerImageView i;
    private ImageView j;
    private MucangRoundCornerImageView k;
    private RadioGroup l;
    private RadioGroup m;
    private EditText n;
    private TextView o;
    private TextView p;
    private View q;
    private RadioButton r;
    private RadioButton s;
    private RadioButton t;
    private TeachModel u;
    private VoiceModel v;
    private PictureModel w;
    private VideoModel x;
    private AutoTeachModel y;
    private List<LineTipModel> z;
    private final List<String> D = Arrays.asList("无", "左转灯", "右转灯");
    private final List<Integer> E = Arrays.asList(0, 2, 3);
    private final InputFilter[] H = {new InputFilter.LengthFilter(10)};
    private final InputFilter[] I = {new InputFilter.LengthFilter(100)};
    private final TextWatcher K = new a();
    private final TextWatcher M = new b();
    private final TextWatcher N = new c();
    private final TextWatcher Q = new d();
    private final TextWatcher T = new e();

    class a extends f {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (e2.this.v == null) {
                e2.this.v = new VoiceModel();
                e2.this.u.data.add(e2.this.v);
            }
            e2.this.v.voice = editable.toString();
            e2.this.x();
        }
    }

    class b extends f {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (e2.this.v == null) {
                e2.this.v = new VoiceModel();
                e2.this.u.data.add(e2.this.v);
            }
            e2.this.v.middleVoice = editable.toString();
            e2.this.x();
        }
    }

    class c extends f {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (e2.this.v == null) {
                e2.this.v = new VoiceModel();
                e2.this.u.data.add(e2.this.v);
            }
            e2.this.v.highVoice = editable.toString();
            e2.this.x();
        }
    }

    class d extends f {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (e2.this.v == null) {
                e2.this.v = new VoiceModel();
                e2.this.u.data.add(e2.this.v);
            }
            e2.this.v.shortVoice = editable.toString();
            e2.this.x();
        }
    }

    class e extends f {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                e2.this.y.wheelDegree = Integer.parseInt(editable.toString());
                e2.this.x();
            } catch (Exception unused) {
                e2.this.y.wheelDegree = 0;
            }
        }
    }

    public static class f implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ kotlin.v B(Integer num) {
        this.y.lightId = this.E.get(num.intValue()).intValue();
        x();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ kotlin.v D(Integer num) {
        this.y.gear = this.G.get(num.intValue()).intValue();
        x();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(View view) {
        this.u.data.remove(this.w);
        m0("", this.i, this.f6596h, this.f6595g);
        this.w = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(View view) {
        i0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void J(View view) {
        i0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void L(View view) {
        i0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void N(View view) {
        i0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void P(f2.f fVar) {
        l0(fVar.f6622a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void R(TeachModel teachModel) {
        TeachModel teachModel2 = this.u;
        if (teachModel2 != null) {
            teachModel2.boundary = teachModel.boundary;
        }
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.m mVar = this.C;
        if (mVar != null) {
            mVar.m(teachModel.boundary);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void T(View view) {
        ListPopupHelper.b(view, this.D, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f6732a.B((Integer) obj);
            }
        }, R.layout.common_list_popup_item, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void V(View view) {
        ListPopupHelper.b(view, this.F, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f6693a.D((Integer) obj);
            }
        }, R.layout.common_list_popup_item, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void X(View view) {
        this.n.setText(cn.mucang.android.jiakaoyi.signal.c.d.t().d().r + "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void Z(CompoundButton compoundButton, boolean z) {
        this.v.sound = z;
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b0(LineTipModel lineTipModel) {
        this.z.remove(lineTipModel);
        this.u.data.remove(lineTipModel);
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d0(LineTipModel lineTipModel) {
        this.z.add(0, lineTipModel);
        this.u.data.add(lineTipModel);
        this.C.a(lineTipModel, true);
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f0(RadioGroup radioGroup, int i) {
        if (i == R.id.middleRb) {
            this.u.grade = 20;
        } else if (i == R.id.highRb) {
            this.u.grade = 30;
        } else {
            this.u.grade = 10;
        }
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h0(RadioGroup radioGroup, int i) {
        if (i == R.id.reportRb) {
            this.u.pointType = 1;
        } else if (i == R.id.operateRb) {
            this.u.pointType = 2;
        } else if (i == R.id.tipRb) {
            this.u.pointType = 3;
        } else {
            this.u.pointType = 0;
        }
        j0();
        x();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    private void i0(final int i) {
        String str;
        if (i == 1) {
            PictureModel pictureModel = this.w;
            if (pictureModel != null) {
                str = pictureModel.imageUrl;
            } else {
                str = null;
            }
        } else {
            VideoModel videoModel = this.x;
            if (videoModel != null) {
                str = videoModel.videoUrl;
            } else {
                str = null;
            }
        }
        String str2 = str;
        androidx.fragment.app.d activity = getActivity();
        if (activity == null) {
            return;
        }
        f.a.a.a.j.a aVarA = f.a.a.a.j.a.a(activity);
        TeachModel teachModel = this.u;
        aVarA.c(MaterialSelectActivity.l(activity, i, teachModel.step, teachModel.subStep, teachModel.examSiteId, str2), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.w0
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i2, int i3, Intent intent) {
                this.f6722a.z(i, i2, i3, intent);
            }
        });
    }

    private void j0() {
        if (TeachModelEditor.l()) {
            if (this.u.pointType == 2) {
                this.b.setFilters(this.H);
                this.c.setFilters(this.H);
                this.f6592d.setFilters(this.H);
                this.f6594f.setEnabled(true);
                return;
            }
            this.b.setFilters(this.I);
            this.c.setFilters(this.I);
            this.f6592d.setFilters(this.I);
            VoiceModel voiceModel = this.v;
            if (voiceModel != null) {
                voiceModel.sound = false;
            }
            this.f6594f.setChecked(false);
            this.f6594f.setEnabled(false);
        }
    }

    @SuppressLint({"SetTextI18n"})
    private void k0() {
        this.n.removeTextChangedListener(this.T);
        this.n.setText(this.y.wheelDegree + "");
        this.n.addTextChangedListener(this.T);
        Light lightFindLightWithId = Light.findLightWithId(this.y.lightId);
        if (lightFindLightWithId == Light.Off) {
            this.o.setText("无");
        } else {
            this.o.setText(lightFindLightWithId.lightName);
        }
        Gear gear = Gear.parse(this.y.gear - 1);
        if (gear == Gear.Invalid) {
            this.p.setText("无");
        } else {
            this.p.setText(gear.gearName);
        }
        if (cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
            this.F = Arrays.asList("无", "P挡", "N挡", "R挡", "D挡");
            this.G = Arrays.asList(0, 8, 1, 11, 9);
        } else {
            this.F = Arrays.asList("无", "1挡", "2挡", "3挡", "4挡", "5挡", "空挡", "倒挡");
            this.G = Arrays.asList(0, 2, 3, 4, 5, 6, 1, 11);
        }
        this.o.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6675a.T(view);
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6544a.V(view);
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6550a.X(view);
            }
        });
    }

    private void l0(TeachModel teachModel) {
        this.u = teachModel;
        this.b.removeTextChangedListener(this.K);
        this.b.setText("");
        this.c.removeTextChangedListener(this.M);
        this.c.setText("");
        this.f6592d.removeTextChangedListener(this.N);
        this.f6592d.setText("");
        this.f6593e.removeTextChangedListener(this.Q);
        this.f6593e.setText("");
        this.f6594f.setOnCheckedChangeListener(null);
        this.f6594f.setChecked(false);
        m0("", this.i, this.f6596h, this.f6595g);
        m0("", this.k, this.j, null);
        if (teachModel.data == null) {
            teachModel.data = new ArrayList();
        }
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = new ArrayList();
        for (FormModel formModel : teachModel.data) {
            if (formModel instanceof VoiceModel) {
                VoiceModel voiceModel = (VoiceModel) formModel;
                this.v = voiceModel;
                this.b.setText(voiceModel.voice);
                this.c.setText(voiceModel.middleVoice);
                this.f6592d.setText(voiceModel.highVoice);
                this.f6593e.setText(voiceModel.shortVoice);
                this.f6594f.setChecked(this.v.sound);
                this.f6594f.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.x0
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        this.f6726a.Z(compoundButton, z);
                    }
                });
            } else if (formModel instanceof PictureModel) {
                this.w = (PictureModel) formModel;
                w(false);
            } else if (formModel instanceof VideoModel) {
                this.x = (VideoModel) formModel;
                w(true);
            } else if (formModel instanceof LineTipModel) {
                this.z.add((LineTipModel) formModel);
            } else if (formModel instanceof AutoTeachModel) {
                this.y = (AutoTeachModel) formModel;
            }
        }
        if (this.y == null) {
            AutoTeachModel autoTeachModel = new AutoTeachModel();
            this.y = autoTeachModel;
            this.u.data.add(autoTeachModel);
        }
        k0();
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.m mVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.m(this.B, this.z, this.u.boundary, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.r0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f6684a.b0((LineTipModel) obj);
            }
        });
        this.C = mVar;
        mVar.i();
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.l(this.A, this.u.step, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.t0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f6690a.d0((LineTipModel) obj);
            }
        });
        this.b.addTextChangedListener(this.K);
        this.c.addTextChangedListener(this.M);
        this.f6592d.addTextChangedListener(this.N);
        this.f6593e.addTextChangedListener(this.Q);
        n0();
        o0();
    }

    private void m0(String str, MucangRoundCornerImageView mucangRoundCornerImageView, ImageView imageView, ImageView imageView2) {
        if (!cn.mucang.android.core.utils.n0.g(str)) {
            mucangRoundCornerImageView.setVisibility(8);
            imageView.setVisibility(0);
            if (imageView2 != null) {
                imageView2.setVisibility(8);
                return;
            }
            return;
        }
        mucangRoundCornerImageView.setVisibility(0);
        imageView.setVisibility(8);
        f.a.a.b.a.a.i(mucangRoundCornerImageView, str, 0);
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
    }

    private void n0() {
        if (this.u == null) {
            return;
        }
        this.l.setOnCheckedChangeListener(null);
        int i = this.u.grade;
        if (i >= 30) {
            this.l.check(R.id.highRb);
        } else if (i >= 20) {
            this.l.check(R.id.middleRb);
        } else {
            this.l.check(R.id.lowRb);
        }
        this.l.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.v0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                this.f6696a.f0(radioGroup, i2);
            }
        });
    }

    private void o0() {
        if (this.u == null) {
            return;
        }
        this.m.setOnCheckedChangeListener(null);
        int i = this.u.pointType;
        if (i == 1) {
            this.m.check(R.id.reportRb);
        } else if (i == 2) {
            this.m.check(R.id.operateRb);
        } else if (i == 3) {
            this.m.check(R.id.tipRb);
        } else {
            this.m.check(R.id.noneRb);
        }
        j0();
        if (TeachModelEditor.l()) {
            if (this.u.pointType == 1) {
                this.s.setEnabled(false);
                this.t.setEnabled(false);
            } else {
                this.r.setEnabled(false);
            }
        }
        this.m.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.m0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                this.f6669a.h0(radioGroup, i2);
            }
        });
    }

    private void w(boolean z) {
        if (z) {
            m0(this.x.videoUrl, this.k, this.j, null);
        } else {
            m0(this.w.imageUrl, this.i, this.f6596h, this.f6595g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        LiveBus.d(f2.e.class).l(new f2.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(int i, int i2, int i3, Intent intent) {
        if (i3 == -1) {
            MaterialModel materialModel = (MaterialModel) intent.getSerializableExtra("key.result");
            if (i == 1) {
                if (this.w == null) {
                    PictureModel pictureModel = new PictureModel();
                    this.w = pictureModel;
                    this.u.data.add(pictureModel);
                }
                this.w.imageUrl = materialModel.getPath();
                w(false);
            } else {
                if (this.x == null) {
                    VideoModel videoModel = new VideoModel();
                    this.x = videoModel;
                    this.u.data.add(videoModel);
                }
                this.x.videoUrl = materialModel.getPath();
                w(true);
            }
            x();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "输出形式页面";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_collect_form, viewGroup, false);
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = (EditText) view.findViewById(R.id.voice_input);
        this.c = (EditText) view.findViewById(R.id.middle_input);
        this.f6592d = (EditText) view.findViewById(R.id.high_input);
        this.f6593e = (EditText) view.findViewById(R.id.short_input);
        this.f6594f = (CheckBox) view.findViewById(R.id.selectSound);
        this.f6596h = (ImageView) view.findViewById(R.id.addImageIv);
        this.i = (MucangRoundCornerImageView) view.findViewById(R.id.imageIv);
        this.j = (ImageView) view.findViewById(R.id.addVideoIv);
        this.k = (MucangRoundCornerImageView) view.findViewById(R.id.videoIv);
        ImageView imageView = (ImageView) view.findViewById(R.id.closeIv);
        this.f6595g = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6666a.F(view2);
            }
        });
        this.f6596h.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6687a.H(view2);
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6672a.J(view2);
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6573a.L(view2);
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6681a.N(view2);
            }
        });
        this.A = (ViewGroup) view.findViewById(R.id.addLineModelContainer);
        this.B = (LinearLayout) view.findViewById(R.id.lineTipsContainer);
        this.n = (EditText) view.findViewById(R.id.wheelEt);
        this.o = (TextView) view.findViewById(R.id.lightTv);
        this.p = (TextView) view.findViewById(R.id.gearTv);
        this.q = view.findViewById(R.id.refreshIv);
        this.l = (RadioGroup) view.findViewById(R.id.levelRg);
        this.m = (RadioGroup) view.findViewById(R.id.typeRg);
        this.r = (RadioButton) view.findViewById(R.id.reportRb);
        this.s = (RadioButton) view.findViewById(R.id.operateRb);
        this.t = (RadioButton) view.findViewById(R.id.tipRb);
        LiveBus.d(f2.f.class).h(getViewLifecycleOwner(), new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.p0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6678a.P((f2.f) obj);
            }
        });
        LiveBus.d(TeachModel.class).h(getViewLifecycleOwner(), new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.y0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6729a.R((TeachModel) obj);
            }
        });
        if (TeachModelEditor.l()) {
            view.findViewById(R.id.noneRb).setVisibility(8);
        } else {
            this.t.setVisibility(8);
        }
    }
}
