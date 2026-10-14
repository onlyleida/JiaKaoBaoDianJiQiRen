package cn.mucang.android.jiakaoyi.teachingk2.login.ui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemNumKeyboardBinding;
import cn.mucang.jiakaoyi.uilib.ui.widget.e;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.c;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006*\u0001\f\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nJ\b\u0010\u0016\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\u0014H\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;", "Landroidx/recyclerview/widget/RecyclerView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mEditText", "Landroid/widget/EditText;", "mHandler", "cn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1;", "mKeyWords", "", "", "[Ljava/lang/String;", "mSpanCount", "bindEditText", "", "edit", "deletedEdit", "onDetachedFromWindow", "Companion", "ItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NumKeyBoardView extends RecyclerView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f7401a;
    private EditText b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f7402d;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0015¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$ItemBinder;", "Lcn/mucang/android/core/viewbinding/ViewBindingBinder;", "", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemNumKeyboardBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/core/viewbinding/ViewBindingHolder;", "key", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends f.a.a.a.viewbinding.a<String, ItemNumKeyboardBinding> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ NumKeyBoardView f7403a;

        public a(NumKeyBoardView this$0) {
            r.e(this$0, "this$0");
            this.f7403a = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(NumKeyBoardView this$0, String key, View view) {
            r.e(this$0, "this$0");
            r.e(key, "$key");
            EditText editText = this$0.b;
            if (editText == null) {
                return;
            }
            if (editText.getSelectionStart() < 0 || editText.getSelectionStart() >= editText.getEditableText().length()) {
                editText.getEditableText().append((CharSequence) key);
            } else {
                editText.getEditableText().insert(editText.getSelectionStart(), key);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean d(NumKeyBoardView this$0, View view, MotionEvent motionEvent) {
            r.e(this$0, "this$0");
            int action = motionEvent.getAction();
            if (action == 0) {
                this$0.f7402d.sendEmptyMessageDelayed(101, 400L);
                return false;
            }
            if (action == 1) {
                this$0.f7402d.removeCallbacksAndMessages(null);
                this$0.deletedEdit();
                return false;
            }
            if (action != 3) {
                return false;
            }
            this$0.f7402d.removeCallbacksAndMessages(null);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // me.drakeet.multitype.b
        @SuppressLint({"ClickableViewAccessibility"})
        public void onBindViewHolder(c<ItemNumKeyboardBinding> holder, final String key) {
            r.e(holder, "holder");
            r.e(key, "key");
            if (TextUtils.equals(key, SundialNumKeyBoardView.KEY_DELETE)) {
                ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel.setVisibility(0);
                ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setVisibility(8);
            } else {
                ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel.setVisibility(8);
                ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setVisibility(0);
                ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setText(key);
            }
            TextView textView = ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKey;
            final NumKeyBoardView numKeyBoardView = this.f7403a;
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.widget.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NumKeyBoardView.a.c(numKeyBoardView, key, view);
                }
            });
            ImageView imageView = ((ItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel;
            final NumKeyBoardView numKeyBoardView2 = this.f7403a;
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.widget.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return NumKeyBoardView.a.d(numKeyBoardView2, view, motionEvent);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/login/ui/widget/NumKeyBoardView$mHandler$1", "Landroid/os/Handler;", "handleMessage", "", SocialConstants.PARAM_SEND_MSG, "Landroid/os/Message;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            r.e(msg, "msg");
            super.handleMessage(msg);
            if (msg.what == 101) {
                NumKeyBoardView.this.deletedEdit();
                sendEmptyMessageDelayed(101, 100L);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NumKeyBoardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        r.e(context, "context");
    }

    public /* synthetic */ NumKeyBoardView(Context context, AttributeSet attributeSet, int i, int i2, o oVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deletedEdit() {
        int selectionStart;
        Editable editableText;
        EditText editText = this.b;
        if (editText == null || (selectionStart = editText.getSelectionStart() - 1) < 0 || (editableText = editText.getEditableText()) == null) {
            return;
        }
        editableText.delete(selectionStart, editText.getSelectionStart());
    }

    public final void bindEditText(EditText edit) {
        r.e(edit, "edit");
        this.b = edit;
        if (edit == null) {
            return;
        }
        edit.setShowSoftInputOnFocus(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7402d.removeCallbacksAndMessages(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumKeyBoardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        r.e(context, "context");
        String[] strArr = {"1", "2", "3", Constants.VIA_TO_TYPE_QZONE, "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, "X", "0", SundialNumKeyBoardView.KEY_DELETE};
        this.f7401a = strArr;
        this.c = 3;
        this.f7402d = new b(Looper.getMainLooper());
        setLayoutManager(new GridLayoutManager(context, 3));
        d dVar = new d(n.c(strArr));
        dVar.f(String.class, new a(this));
        addItemDecoration(new e((int) context.getResources().getDimension(R.dimen.rpx_2)));
        setAdapter(dVar);
    }
}
