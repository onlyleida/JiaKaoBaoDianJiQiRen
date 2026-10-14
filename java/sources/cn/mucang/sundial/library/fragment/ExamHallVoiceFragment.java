package cn.mucang.sundial.library.fragment;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.ExamHallResEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.ExamHallVoiceBinder;
import cn.mucang.sundial.library.databinding.TtFragmentExamHallVoiceBinding;
import cn.mucang.sundial.library.entity.ExamHallVoiceItem;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcn/mucang/sundial/library/fragment/ExamHallVoiceFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Lkotlin/v;", "examHuiMa", "()V", "examYongXin", "", "resName", "play", "(Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentExamHallVoiceBinding;", "Landroid/media/MediaPlayer;", "mediaPlayer", "Landroid/media/MediaPlayer;", "selectedResName", "Ljava/lang/String;", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ExamHallVoiceFragment extends BaseFragment {
    private final d adapter;
    private final Items items;
    private MediaPlayer mediaPlayer;
    private String selectedResName;
    private TtFragmentExamHallVoiceBinding viewBinding;

    public ExamHallVoiceFragment() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
        this.selectedResName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void examHuiMa() {
        ArrayList arrayList = new ArrayList();
        int i = R.drawable.tt__ic_voice_exam;
        int i2 = R.drawable.tt__ic_voice_exam_selected;
        arrayList.add(new ExamHallVoiceItem("灯光1", r.a("exam_1_13.jk", this.selectedResName) ? i2 : i, "exam_1_13.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光2", r.a("exam_1_14.jk", this.selectedResName) ? i2 : i, "exam_1_14.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光3", r.a("exam_1_15.jk", this.selectedResName) ? i2 : i, "exam_1_15.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光4", r.a("exam_1_16.jk", this.selectedResName) ? i2 : i, "exam_1_16.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光5", r.a("exam_1_17.jk", this.selectedResName) ? i2 : i, "exam_1_17.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光6", r.a("exam_1_18.jk", this.selectedResName) ? i2 : i, "exam_1_18.jk"));
        if (r.a("exam_1_19.jk", this.selectedResName)) {
            i = i2;
        }
        arrayList.add(new ExamHallVoiceItem("灯光7", i, "exam_1_19.jk"));
        this.adapter.h(arrayList);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void examYongXin() {
        ArrayList arrayList = new ArrayList();
        int i = R.drawable.tt__ic_voice_exam;
        int i2 = R.drawable.tt__ic_voice_exam_selected;
        arrayList.add(new ExamHallVoiceItem("灯光1", r.a("exam_2_08.jk", this.selectedResName) ? i2 : i, "exam_2_08.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光2", r.a("exam_2_09.jk", this.selectedResName) ? i2 : i, "exam_2_09.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光3", r.a("exam_2_10.jk", this.selectedResName) ? i2 : i, "exam_2_10.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光4", r.a("exam_2_11.jk", this.selectedResName) ? i2 : i, "exam_2_11.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光5", r.a("exam_2_12.jk", this.selectedResName) ? i2 : i, "exam_2_12.jk"));
        arrayList.add(new ExamHallVoiceItem("灯光6", r.a("exam_2_13.jk", this.selectedResName) ? i2 : i, "exam_2_13.jk"));
        if (r.a("exam_2_14.jk", this.selectedResName)) {
            i = i2;
        }
        arrayList.add(new ExamHallVoiceItem("灯光7", i, "exam_2_14.jk"));
        this.adapter.h(arrayList);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void play(final String resName) {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.fragment.ExamHallVoiceFragment.play.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (ExamHallVoiceFragment.this.mediaPlayer != null) {
                        MediaPlayer mediaPlayer = ExamHallVoiceFragment.this.mediaPlayer;
                        r.c(mediaPlayer);
                        if (mediaPlayer.isPlaying()) {
                            MediaPlayer mediaPlayer2 = ExamHallVoiceFragment.this.mediaPlayer;
                            r.c(mediaPlayer2);
                            mediaPlayer2.stop();
                        }
                        MediaPlayer mediaPlayer3 = ExamHallVoiceFragment.this.mediaPlayer;
                        r.c(mediaPlayer3);
                        mediaPlayer3.release();
                        ExamHallVoiceFragment.this.mediaPlayer = null;
                    }
                    ExamHallVoiceFragment.this.mediaPlayer = new MediaPlayer();
                    MediaPlayer mediaPlayer4 = ExamHallVoiceFragment.this.mediaPlayer;
                    r.c(mediaPlayer4);
                    mediaPlayer4.reset();
                    MediaPlayer mediaPlayer5 = ExamHallVoiceFragment.this.mediaPlayer;
                    r.c(mediaPlayer5);
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(Environment.getExternalStorageDirectory());
                    String str = File.separator;
                    sb.append(str);
                    sb.append("JiaKaoBaoDian");
                    sb.append(str);
                    sb.append(resName);
                    mediaPlayer5.setDataSource(sb.toString());
                    MediaPlayer mediaPlayer6 = ExamHallVoiceFragment.this.mediaPlayer;
                    r.c(mediaPlayer6);
                    mediaPlayer6.setVolume(100.0f, 100.0f);
                    MediaPlayer mediaPlayer7 = ExamHallVoiceFragment.this.mediaPlayer;
                    r.c(mediaPlayer7);
                    mediaPlayer7.prepare();
                    MediaPlayer mediaPlayer8 = ExamHallVoiceFragment.this.mediaPlayer;
                    r.c(mediaPlayer8);
                    mediaPlayer8.start();
                } catch (Exception e2) {
                    SundialLog.normal("播放考场语音错误：" + e2.getLocalizedMessage());
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        final TtFragmentExamHallVoiceBinding ttFragmentExamHallVoiceBindingInflate = TtFragmentExamHallVoiceBinding.inflate(inflater);
        r.d(ttFragmentExamHallVoiceBindingInflate, "TtFragmentExamHallVoiceBinding.inflate(inflater)");
        this.viewBinding = ttFragmentExamHallVoiceBindingInflate;
        if (ttFragmentExamHallVoiceBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView tvHuima = ttFragmentExamHallVoiceBindingInflate.tvHuima;
        r.d(tvHuima, "tvHuima");
        tvHuima.setSelected(true);
        TextView tvYongxin = ttFragmentExamHallVoiceBindingInflate.tvYongxin;
        r.d(tvYongxin, "tvYongxin");
        tvYongxin.setSelected(false);
        ttFragmentExamHallVoiceBindingInflate.tvHuima.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.fragment.ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextView tvHuima2 = ttFragmentExamHallVoiceBindingInflate.tvHuima;
                r.d(tvHuima2, "tvHuima");
                if (tvHuima2.isSelected()) {
                    return;
                }
                TextView tvHuima3 = ttFragmentExamHallVoiceBindingInflate.tvHuima;
                r.d(tvHuima3, "tvHuima");
                tvHuima3.setSelected(true);
                TextView tvYongxin2 = ttFragmentExamHallVoiceBindingInflate.tvYongxin;
                r.d(tvYongxin2, "tvYongxin");
                tvYongxin2.setSelected(false);
                this.examHuiMa();
                SundialLog.normal("点击回马考场");
            }
        });
        ttFragmentExamHallVoiceBindingInflate.tvYongxin.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.fragment.ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextView tvHuima2 = ttFragmentExamHallVoiceBindingInflate.tvHuima;
                r.d(tvHuima2, "tvHuima");
                if (tvHuima2.isSelected()) {
                    TextView tvHuima3 = ttFragmentExamHallVoiceBindingInflate.tvHuima;
                    r.d(tvHuima3, "tvHuima");
                    tvHuima3.setSelected(false);
                    TextView tvYongxin2 = ttFragmentExamHallVoiceBindingInflate.tvYongxin;
                    r.d(tvYongxin2, "tvYongxin");
                    tvYongxin2.setSelected(true);
                    this.examYongXin();
                    SundialLog.normal("点击永兴考场");
                }
            }
        });
        LiveBus.INSTANCE.with(ExamHallResEvent.class).q(this, new a0<ExamHallResEvent>() { // from class: cn.mucang.sundial.library.fragment.ExamHallVoiceFragment$onCreateView$$inlined$with$lambda$3
            @Override // androidx.lifecycle.a0
            public final void onChanged(ExamHallResEvent examHallResEvent) {
                ExamHallVoiceFragment examHallVoiceFragment = this;
                String str = examHallResEvent.resName;
                r.d(str, "it.resName");
                examHallVoiceFragment.play(str);
                ExamHallVoiceFragment examHallVoiceFragment2 = this;
                String str2 = examHallResEvent.resName;
                r.d(str2, "it.resName");
                examHallVoiceFragment2.selectedResName = str2;
                TextView tvHuima2 = ttFragmentExamHallVoiceBindingInflate.tvHuima;
                r.d(tvHuima2, "tvHuima");
                if (tvHuima2.isSelected()) {
                    this.examHuiMa();
                } else {
                    this.examYongXin();
                }
            }
        });
        this.adapter.f(ExamHallVoiceItem.class, new ExamHallVoiceBinder());
        RecyclerView recyclerView = ttFragmentExamHallVoiceBindingInflate.recyclerView;
        r.d(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        examHuiMa();
        TtFragmentExamHallVoiceBinding ttFragmentExamHallVoiceBinding = this.viewBinding;
        if (ttFragmentExamHallVoiceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentExamHallVoiceBinding.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            r.c(mediaPlayer);
            if (mediaPlayer.isPlaying()) {
                MediaPlayer mediaPlayer2 = this.mediaPlayer;
                r.c(mediaPlayer2);
                mediaPlayer2.stop();
            }
            MediaPlayer mediaPlayer3 = this.mediaPlayer;
            r.c(mediaPlayer3);
            mediaPlayer3.release();
            this.mediaPlayer = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SundialLog.normal("显示考场灯光语音");
    }
}
