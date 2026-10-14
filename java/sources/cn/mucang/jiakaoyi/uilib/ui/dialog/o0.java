package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.tts.models.VoicePackEntity;
import cn.mucang.android.jiakaoyi.framework.tts.voice.VoicePackType;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.t0;
import cn.mucang.jiakaoyi.uilib.api.ResConfigApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class o0 extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RecyclerView f9839a;
    private ImageView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f9840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<VoicePackEntity> f9841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f9842f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private VoicePackType f9843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<VoicePackEntity> f9844h;

    private static class a extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f9845a;
        TextView b;
        TextView c;

        public a(View view) {
            super(view);
            this.f9845a = (TextView) view.findViewById(R.id.voice_name_tv);
            this.b = (TextView) view.findViewById(R.id.voice_size_tv);
            this.c = (TextView) view.findViewById(R.id.voice_action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends RecyclerView.Adapter<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<VoicePackEntity> f9846a;
        private boolean b = false;
        private final long c = ExamSiteUtil.n(KeMu.parse(AppUtils.a()), 0);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private cn.mucang.android.jiakaoyi.framework.h.b<VoicePackEntity> f9847d;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ View f9848a;
            final /* synthetic */ VoicePackEntity b;

            /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.o0$b$a$a, reason: collision with other inner class name */
            class C0163a implements cn.mucang.android.jiakaoyi.framework.h.b<Float> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ View f9849a;

                C0163a(a aVar, View view) {
                    this.f9849a = view;
                }

                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void callback(final Float f2) {
                    final View view = this.f9849a;
                    cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.z
                        @Override // java.lang.Runnable
                        public final void run() {
                            ((TextView) view).setText(FormatUtils.a(f2.floatValue() * 100.0f) + "%");
                        }
                    });
                }
            }

            a(View view, VoicePackEntity voicePackEntity) {
                this.f9848a = view;
                this.b = voicePackEntity;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void b() {
                b.this.notifyDataSetChanged();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void f(VoicePackEntity voicePackEntity, View view) {
                voicePackEntity.enable = true;
                view.setTag(3);
                cn.mucang.android.jiakaoyi.framework.tts.i.c.d().b(voicePackEntity.name, Long.valueOf(voicePackEntity.packId), voicePackEntity.version);
                b.this.notifyDataSetChanged();
                if (b.this.f9847d != null) {
                    b.this.f9847d.callback(voicePackEntity);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void h(VoicePackEntity voicePackEntity, View view, String str) {
                b.this.b = true;
                File fileB = cn.mucang.android.jiakaoyi.framework.tts.i.a.b(voicePackEntity, new C0163a(this, view));
                if (fileB == null || !fileB.exists()) {
                    cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            cn.mucang.android.core.utils.u.h("下载失败");
                        }
                    });
                } else {
                    File parentFile = new File(str).getParentFile();
                    try {
                        t0.f(fileB.getPath(), parentFile.getPath());
                        view.setTag(1);
                        fileB.delete();
                        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.b0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9808a.b();
                            }
                        });
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        cn.mucang.android.jiakaoyi.framework.log.f.o("解压异常 " + Log.getStackTraceString(e2));
                        parentFile.delete();
                        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.e0
                            @Override // java.lang.Runnable
                            public final void run() {
                                cn.mucang.android.core.utils.u.h("解压异常");
                            }
                        });
                    }
                }
                b.this.b = false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void j(final VoicePackEntity voicePackEntity, final View view, final cn.mucang.android.account.ui.a aVar) {
                Runnable runnable;
                try {
                    try {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("点击启用语音包: name = " + voicePackEntity.name + " ; packId " + voicePackEntity.packId);
                        if (new ResConfigApi().n(b.this.c, 2, voicePackEntity.packId, voicePackEntity.name)) {
                            cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.c0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f9810a.f(voicePackEntity, view);
                                }
                            });
                        } else {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("启用语音包失败");
                            cn.mucang.android.core.utils.u.h("启用语音包失败");
                        }
                        aVar.getClass();
                        runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                aVar.dismiss();
                            }
                        };
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        cn.mucang.android.jiakaoyi.framework.log.f.o("启用语音包报错 " + e2.getLocalizedMessage());
                        cn.mucang.android.core.utils.u.h("启用语音包失败");
                        aVar.getClass();
                        runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                aVar.dismiss();
                            }
                        };
                    }
                    cn.mucang.android.core.utils.u.f(runnable);
                } catch (Throwable th) {
                    aVar.getClass();
                    cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            aVar.dismiss();
                        }
                    });
                    throw th;
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                int i = Integer.parseInt(this.f9848a.getTag().toString());
                if (i != 2) {
                    if (i == 1) {
                        final cn.mucang.android.account.ui.a aVar = new cn.mucang.android.account.ui.a(MucangConfig.i());
                        aVar.b("启用中...");
                        final VoicePackEntity voicePackEntity = this.b;
                        final View view = this.f9848a;
                        cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.a0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f9805a.j(voicePackEntity, view, aVar);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (b.this.b) {
                    cn.mucang.android.core.utils.u.h("正在下载中");
                    return;
                }
                if (cn.mucang.android.core.utils.m.i(cn.mucang.android.jiakaoyi.framework.tts.i.b.b()) < this.b.fileSize) {
                    cn.mucang.android.core.utils.u.h("内存卡空间不足");
                    return;
                }
                final String str = cn.mucang.android.jiakaoyi.framework.tts.i.b.l() + this.b.packId + "/" + this.b.version + "/" + this.b.name + ".zip";
                final VoicePackEntity voicePackEntity2 = this.b;
                voicePackEntity2.filePath = str;
                final View view2 = this.f9848a;
                cn.mucang.android.jiakaoyi.framework.utils.n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9812a.h(voicePackEntity2, view2, str);
                    }
                });
            }
        }

        public b(List<VoicePackEntity> list, cn.mucang.android.jiakaoyi.framework.h.b<VoicePackEntity> bVar) {
            this.f9846a = list;
            this.f9847d = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h(VoicePackEntity voicePackEntity, View view) {
            DebounceUtil.f3633a.b("voicePackClick", 2000, new a(view, voicePackEntity));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<VoicePackEntity> list = this.f9846a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(a aVar, int i) {
            final VoicePackEntity voicePackEntity = this.f9846a.get(i);
            aVar.f9845a.setText(voicePackEntity.name);
            aVar.b.setText(cn.mucang.android.core.utils.m.m(voicePackEntity.fileSize, 2));
            if (!cn.mucang.android.jiakaoyi.framework.tts.i.b.i(voicePackEntity.packId, voicePackEntity.version)) {
                aVar.c.setText("下载");
                aVar.c.setTag(2);
                aVar.c.setTextColor(Color.parseColor("#008AFF"));
                aVar.c.setBackgroundResource(R.drawable.shape_r2_s1_008aff);
            } else if (cn.mucang.android.jiakaoyi.framework.tts.i.c.d().e(voicePackEntity.packId, voicePackEntity.version)) {
                aVar.c.setText("使用中");
                aVar.c.setTag(3);
                aVar.c.setTextColor(-1);
                aVar.c.setBackgroundResource(R.drawable.selector_base_btn_blue);
            } else {
                aVar.c.setText("启用");
                aVar.c.setTag(1);
                aVar.c.setTextColor(Color.parseColor("#008AFF"));
                aVar.c.setBackgroundResource(R.drawable.shape_r2_s1_008aff);
            }
            aVar.c.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f9819a.h(voicePackEntity, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.voice_pack_dialog_list_item, viewGroup, false));
        }
    }

    public o0(Context context, cn.mucang.android.jiakaoyi.framework.h.b<VoicePackEntity> bVar) {
        super(context, R.style.jiakaoyi_list_dialog);
        this.f9844h = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b() {
        this.f9840d.setVisibility(8);
        if (cn.mucang.android.core.utils.g.b(this.f9841e)) {
            cn.mucang.android.core.utils.u.h("暂无语音包");
            return;
        }
        b bVar = new b(this.f9841e, this.f9844h);
        this.f9842f = bVar;
        this.f9839a.setAdapter(bVar);
        this.f9839a.setVisibility(0);
        this.c.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        try {
            if (AppUtils.k()) {
                this.f9843g = VoicePackType.Robot_Voice;
            } else if (AppUtils.g()) {
                this.f9843g = VoicePackType.K3_Voice;
            } else {
                this.f9843g = VoicePackType.K2_Voice;
            }
            this.f9841e = new cn.mucang.android.jiakaoyi.framework.tts.h.b().m(this.f9843g);
            cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.h0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f9821a.b();
                }
            });
        } catch (ApiException | HttpException | InternalException e2) {
            e2.printStackTrace();
            cn.mucang.android.core.utils.u.h("服务异常");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.b) {
            dismiss();
            return;
        }
        if (view == this.c) {
            cn.mucang.android.jiakaoyi.framework.tts.i.c.d().a();
            cn.mucang.android.jiakaoyi.framework.h.b<VoicePackEntity> bVar = this.f9844h;
            if (bVar != null) {
                bVar.callback(null);
            }
            b bVar2 = this.f9842f;
            if (bVar2 != null) {
                bVar2.notifyDataSetChanged();
            }
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.voice_pack_dialog_list);
        ImageView imageView = (ImageView) findViewById(R.id.closeIv);
        this.b = imageView;
        imageView.setOnClickListener(this);
        this.f9839a = (RecyclerView) findViewById(R.id.dialog_voice_rv);
        this.f9840d = (LinearLayout) findViewById(R.id.loading_layout);
        this.f9839a.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        TextView textView = (TextView) findViewById(R.id.dialog_voice_cancel);
        this.c = textView;
        textView.setOnClickListener(this);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f9859a.d();
            }
        });
        if (getWindow() != null) {
            getWindow().setGravity(17);
            getWindow().setLayout((int) (getContext().getResources().getDisplayMetrics().widthPixels - (getContext().getResources().getDimension(R.dimen.dp_160) * 2.0f)), (int) (getContext().getResources().getDisplayMetrics().heightPixels - (getContext().getResources().getDimension(R.dimen.dp_90) * 2.0f)));
        }
    }
}
