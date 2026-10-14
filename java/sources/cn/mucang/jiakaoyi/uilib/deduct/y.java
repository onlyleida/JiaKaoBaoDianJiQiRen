package cn.mucang.jiakaoyi.uilib.deduct;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.jiakaoyi.uilib.ui.dialog.i0;
import cn.mucang.jiakaoyi.uilib.utils.VoiceTextUtil;
import com.mucang.android.jiakaoyi.uilib.R;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class y extends i0 {
    private BaseDeductPresenter c;

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BaseDeductPresenter f9279a;

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(cn.mucang.android.jiakaoyi.engine.model.a aVar, View view) {
            this.f9279a.a(aVar);
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(c cVar, int i) {
            final cn.mucang.android.jiakaoyi.engine.model.a aVar = this.f9279a.getData().get(i);
            cVar.f9280a.setText(new SimpleDateFormat("HH:mm:ss.SSS", Locale.CHINA).format(Long.valueOf(aVar.b)));
            Step step = aVar.f3102a.step;
            if (step == Step.K3_Global) {
                cVar.b.setText(R.string.uilib_comprehensive);
            } else {
                cVar.b.setText(step.getStepName());
            }
            if (f0.e()) {
                cVar.c.setText(aVar.f3102a.deductScore + "-");
            } else {
                cVar.c.setText("-" + aVar.f3102a.deductScore);
            }
            cVar.f9281d.setText("[" + aVar.f3102a.code + "]" + VoiceTextUtil.f9586a.a(aVar.f3102a.name));
            cVar.f9282e.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f9234a.d(aVar, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public c onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.exam_fragment_deduct_detail_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            BaseDeductPresenter baseDeductPresenter = this.f9279a;
            if (baseDeductPresenter == null) {
                return 0;
            }
            return baseDeductPresenter.getData().size();
        }

        private b(BaseDeductPresenter baseDeductPresenter) {
            this.f9279a = baseDeductPresenter;
        }
    }

    private static class c extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f9280a;
        TextView b;
        TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f9281d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f9282e;

        public c(View view) {
            super(view);
            this.f9280a = (TextView) view.findViewById(R.id.time);
            this.b = (TextView) view.findViewById(R.id.name);
            this.c = (TextView) view.findViewById(R.id.deductScore);
            this.f9281d = (TextView) view.findViewById(R.id.deductReason);
            this.f9282e = view.findViewById(R.id.delete);
        }
    }

    public static void x(BaseDeductPresenter baseDeductPresenter, FragmentManager fragmentManager) {
        y yVar = new y();
        yVar.c = baseDeductPresenter;
        yVar.show(fragmentManager, "扣分详情");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.c = null;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.deductDetailList);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 1, false));
        recyclerView.setAdapter(new b(this.c));
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.i0
    protected int v() {
        return R.layout.exam_fragment_deduct_detail;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.i0
    protected String w() {
        return k0.a(R.string.uilib_deduct_detail);
    }
}
