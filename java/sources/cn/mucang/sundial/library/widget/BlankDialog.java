package cn.mucang.sundial.library.widget;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.g;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtBlankDialogBinding;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001:\u0003\u0013\u0014\u0015B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcn/mucang/sundial/library/widget/BlankDialog;", "Landroidx/appcompat/app/g;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onCreate", "(Landroid/os/Bundle;)V", "Landroidx/viewbinding/a;", "customViewBinding", "replaceCustomView", "(Landroidx/viewbinding/a;)V", "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", SpeechConstant.PARAMS, "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", "Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;", "<init>", "(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V", "Builder", "Params", "ViewListener", "library_release"}, k = 1, mv = {1, 1, 15})
public class BlankDialog extends g {
    private final Params params;
    private TtBlankDialogBinding viewBinding;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\"\u0010#J\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001e\u001a\u00020\u001d8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "", "", "theme", "setTheme", "(I)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "Landroidx/viewbinding/a;", "customViewBinding", "setCustomViewBinding", "(Landroidx/viewbinding/a;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "resId", "setBgResId", "(Ljava/lang/Integer;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "", "cancellable", "setCancellable", "(Z)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "setCancellableOnTouchOutside", "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "viewListener", "setViewListener", "(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "create", "()Lcn/mucang/sundial/library/widget/BlankDialog;", "show", "Landroid/content/Context;", "context", "Landroid/content/Context;", "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", SpeechConstant.PARAMS, "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", "getParams", "()Lcn/mucang/sundial/library/widget/BlankDialog$Params;", "<init>", "(Landroid/content/Context;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static class Builder {
        private final Context context;
        private final Params params;

        public Builder(Context context) {
            r.e(context, "context");
            this.context = context;
            this.params = new Params(context, 0, null, null, false, false, null, 126, null);
        }

        public final BlankDialog create() {
            return new BlankDialog(this.params);
        }

        protected final Params getParams() {
            return this.params;
        }

        public final Builder setBgResId(Integer resId) {
            this.params.setBgResId(resId);
            return this;
        }

        public final Builder setCancellable(boolean cancellable) {
            this.params.setCancellable(cancellable);
            return this;
        }

        public final Builder setCancellableOnTouchOutside(boolean cancellable) {
            this.params.setCancellableOnTouchOutside(cancellable);
            return this;
        }

        public final Builder setCustomViewBinding(a customViewBinding) {
            this.params.setCustomViewBinding(customViewBinding);
            return this;
        }

        public final Builder setTheme(int theme) {
            this.params.setTheme(theme);
            return this;
        }

        public final Builder setViewListener(ViewListener viewListener) {
            this.params.setViewListener(viewListener);
            return this;
        }

        public BlankDialog show() {
            BlankDialog blankDialogCreate = create();
            blankDialogCreate.show();
            return blankDialogCreate;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b,\u0010-R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0019\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR$\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010&\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006."}, d2 = {"Lcn/mucang/sundial/library/widget/BlankDialog$Params;", "", "", "cancellable", "Z", "getCancellable", "()Z", "setCancellable", "(Z)V", "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "viewListener", "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "getViewListener", "()Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "setViewListener", "(Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)V", "cancellableOnTouchOutside", "getCancellableOnTouchOutside", "setCancellableOnTouchOutside", "", "theme", "I", "getTheme", "()I", "setTheme", "(I)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroidx/viewbinding/a;", "customViewBinding", "Landroidx/viewbinding/a;", "getCustomViewBinding", "()Landroidx/viewbinding/a;", "setCustomViewBinding", "(Landroidx/viewbinding/a;)V", "bgResId", "Ljava/lang/Integer;", "getBgResId", "()Ljava/lang/Integer;", "setBgResId", "(Ljava/lang/Integer;)V", "<init>", "(Landroid/content/Context;ILandroidx/viewbinding/a;Ljava/lang/Integer;ZZLcn/mucang/sundial/library/widget/BlankDialog$ViewListener;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Params {
        private Integer bgResId;
        private boolean cancellable;
        private boolean cancellableOnTouchOutside;
        private final Context context;
        private a customViewBinding;
        private int theme;
        private ViewListener viewListener;

        public Params(Context context, int i, a aVar, Integer num, boolean z, boolean z2, ViewListener viewListener) {
            r.e(context, "context");
            this.context = context;
            this.theme = i;
            this.customViewBinding = aVar;
            this.bgResId = num;
            this.cancellable = z;
            this.cancellableOnTouchOutside = z2;
            this.viewListener = viewListener;
        }

        public final Integer getBgResId() {
            return this.bgResId;
        }

        public final boolean getCancellable() {
            return this.cancellable;
        }

        public final boolean getCancellableOnTouchOutside() {
            return this.cancellableOnTouchOutside;
        }

        public final Context getContext() {
            return this.context;
        }

        public final a getCustomViewBinding() {
            return this.customViewBinding;
        }

        public final int getTheme() {
            return this.theme;
        }

        public final ViewListener getViewListener() {
            return this.viewListener;
        }

        public final void setBgResId(Integer num) {
            this.bgResId = num;
        }

        public final void setCancellable(boolean z) {
            this.cancellable = z;
        }

        public final void setCancellableOnTouchOutside(boolean z) {
            this.cancellableOnTouchOutside = z;
        }

        public final void setCustomViewBinding(a aVar) {
            this.customViewBinding = aVar;
        }

        public final void setTheme(int i) {
            this.theme = i;
        }

        public final void setViewListener(ViewListener viewListener) {
            this.viewListener = viewListener;
        }

        public /* synthetic */ Params(Context context, int i, a aVar, Integer num, boolean z, boolean z2, ViewListener viewListener, int i2, o oVar) {
            this(context, (i2 & 2) != 0 ? R.style.Sundial_Blank_Dialog : i, (i2 & 4) != 0 ? null : aVar, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? true : z, (i2 & 32) == 0 ? z2 : true, (i2 & 64) == 0 ? viewListener : null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Landroidx/viewbinding/a;", "viewBinding", "Lkotlin/v;", "setViews", "(Lcn/mucang/sundial/library/widget/BlankDialog;Landroidx/viewbinding/a;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public interface ViewListener {
        void setViews(BlankDialog dialog, a viewBinding);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlankDialog(Params params) {
        super(params.getContext(), params.getTheme());
        r.e(params, "params");
        this.params = params;
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TtBlankDialogBinding ttBlankDialogBindingInflate = TtBlankDialogBinding.inflate(LayoutInflater.from(getContext()));
        r.d(ttBlankDialogBindingInflate, "TtBlankDialogBinding.inf…utInflater.from(context))");
        this.viewBinding = ttBlankDialogBindingInflate;
        if (ttBlankDialogBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(ttBlankDialogBindingInflate.getRoot());
        Integer bgResId = this.params.getBgResId();
        if (bgResId != null) {
            int iIntValue = bgResId.intValue();
            TtBlankDialogBinding ttBlankDialogBinding = this.viewBinding;
            if (ttBlankDialogBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            ttBlankDialogBinding.getRoot().setBackgroundResource(iIntValue);
        }
        replaceCustomView(this.params.getCustomViewBinding());
        setCancelable(this.params.getCancellable());
        setCanceledOnTouchOutside(this.params.getCancellableOnTouchOutside());
        ViewListener viewListener = this.params.getViewListener();
        if (viewListener != null) {
            viewListener.setViews(this, this.params.getCustomViewBinding());
        }
    }

    public final void replaceCustomView(a customViewBinding) {
        if (customViewBinding != null) {
            TtBlankDialogBinding ttBlankDialogBinding = this.viewBinding;
            if (ttBlankDialogBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            ttBlankDialogBinding.getRoot().removeAllViews();
            TtBlankDialogBinding ttBlankDialogBinding2 = this.viewBinding;
            if (ttBlankDialogBinding2 != null) {
                ttBlankDialogBinding2.getRoot().addView(customViewBinding.getRoot(), -1, -2);
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
    }
}
