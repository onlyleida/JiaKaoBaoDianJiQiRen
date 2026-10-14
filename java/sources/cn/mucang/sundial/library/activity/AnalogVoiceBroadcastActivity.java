package cn.mucang.sundial.library.activity;

import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.library.adapter.ExamHallVoiceTabPagerAdapter;
import cn.mucang.sundial.library.databinding.TtActivityAnalogVoiceBroadcastBinding;
import cn.mucang.sundial.library.util.AssetUtils;
import cn.mucang.sundial.library.widget.TTNavigator;
import com.blankj.utilcode.util.f;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.io.File;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001d\u0010\u0012\u001a\u00020\r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Lkotlin/v;", "onClickedRightFull", "()V", "Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;", "adapter", "Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;", "Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;", "viewBinding$delegate", "Lkotlin/f;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;", "viewBinding", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AnalogVoiceBroadcastActivity extends BaseActivity {
    private ExamHallVoiceTabPagerAdapter adapter;

    /* JADX INFO: renamed from: viewBinding$delegate, reason: from kotlin metadata */
    private final Lazy viewBinding = new ViewBindingLazy(TtActivityAnalogVoiceBroadcastBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.AnalogVoiceBroadcastActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    private final TtActivityAnalogVoiceBroadcastBinding getViewBinding() {
        return (TtActivityAnalogVoiceBroadcastBinding) this.viewBinding.getValue();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected void onClickedRightFull() {
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityAnalogVoiceBroadcastBinding viewBinding = getViewBinding();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        r.d(supportFragmentManager, "supportFragmentManager");
        ExamHallVoiceTabPagerAdapter examHallVoiceTabPagerAdapter = new ExamHallVoiceTabPagerAdapter(supportFragmentManager);
        CommonViewPager pager = viewBinding.pager;
        r.d(pager, "pager");
        pager.setAdapter(examHallVoiceTabPagerAdapter);
        CommonViewPager pager2 = viewBinding.pager;
        r.d(pager2, "pager");
        pager2.setOffscreenPageLimit(1);
        TTNavigator tTNavigator = new TTNavigator(this);
        tTNavigator.setAdjustMode(false);
        MagicIndicator tab = viewBinding.tab;
        r.d(tab, "tab");
        CommonViewPager pager3 = viewBinding.pager;
        r.d(pager3, "pager");
        tTNavigator.bindTo(tab, pager3);
        v vVar = v.f15822a;
        this.adapter = examHallVoiceTabPagerAdapter;
        viewBinding.llBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.AnalogVoiceBroadcastActivity$onCreateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.onBackPressed();
            }
        });
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.activity.AnalogVoiceBroadcastActivity.onCreateView.2
            @Override // java.lang.Runnable
            public final void run() {
                if (f.b().a("exam_voice_v3", false)) {
                    return;
                }
                AnalogVoiceBroadcastActivity analogVoiceBroadcastActivity = AnalogVoiceBroadcastActivity.this;
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(Environment.getExternalStorageDirectory());
                String str = File.separator;
                sb.append(str);
                sb.append("JiaKaoBaoDian");
                sb.append(str);
                f.b().i("exam_voice_v3", AssetUtils.copyAssetsToSD(analogVoiceBroadcastActivity, "exam", sb.toString()));
            }
        });
        LinearLayout root = getViewBinding().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }
}
