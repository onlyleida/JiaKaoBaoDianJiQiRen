package cn.mucang.sundial.library.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
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
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtItemNumKeyboardBinding;
import com.tencent.connect.common.Constants;
import f.a.a.a.viewbinding.a;
import f.a.a.a.viewbinding.c;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\n\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB'\b\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lkotlin/v;", "deletedEdit", "()V", "Landroid/widget/EditText;", "edit", "bindEditText", "(Landroid/widget/EditText;)V", "onDetachedFromWindow", "cn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1", "mHandler", "Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;", "mEditText", "Landroid/widget/EditText;", "", "mSpanCount", "I", "", "", "mKeyWords", "[Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "ItemBinder", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SundialNumKeyBoardView extends RecyclerView {
    public static final String KEY_DELETE = "删除";
    public static final int MSG_DELETE = 101;
    public static final String TAG = "NumKeyBoardView";
    private EditText mEditText;
    private final SundialNumKeyBoardView$mHandler$1 mHandler;
    private final String[] mKeyWords;
    private final int mSpanCount;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\b\u001a\u00020\u00072\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0015¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;", "Lf/a/a/a/u/a;", "", "Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;", "Lf/a/a/a/u/c;", "holder", "key", "Lkotlin/v;", "onBindViewHolder", "(Lf/a/a/a/u/c;Ljava/lang/String;)V", "<init>", "(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public final class ItemBinder extends a<String, TtItemNumKeyboardBinding> {
        public ItemBinder() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // me.drakeet.multitype.b
        @SuppressLint({"ClickableViewAccessibility"})
        public void onBindViewHolder(c<TtItemNumKeyboardBinding> holder, final String key) {
            r.e(holder, "holder");
            r.e(key, "key");
            if (TextUtils.equals(key, SundialNumKeyBoardView.KEY_DELETE)) {
                ImageView imageView = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel;
                r.d(imageView, "holder.viewBinding.tvKeyDel");
                imageView.setVisibility(0);
                TextView textView = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey;
                r.d(textView, "holder.viewBinding.tvKey");
                textView.setVisibility(8);
            } else {
                ImageView imageView2 = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel;
                r.d(imageView2, "holder.viewBinding.tvKeyDel");
                imageView2.setVisibility(8);
                TextView textView2 = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey;
                r.d(textView2, "holder.viewBinding.tvKey");
                textView2.setVisibility(0);
                TextView textView3 = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey;
                r.d(textView3, "holder.viewBinding.tvKey");
                textView3.setText(key);
                ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setTextColor(Color.parseColor("#40464D"));
                ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setBackgroundResource(R.drawable.tt__selector_num_key);
                TextView textView4 = ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey;
                Context context = SundialNumKeyBoardView.this.getContext();
                r.d(context, "context");
                textView4.setTextSize(0, context.getResources().getDimension(R.dimen.rpx_45));
            }
            ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKey.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditText editText = SundialNumKeyBoardView.this.mEditText;
                    if (editText != null) {
                        if (editText.getSelectionStart() < 0 || editText.getSelectionStart() >= editText.getEditableText().length()) {
                            editText.getEditableText().append((CharSequence) key);
                        } else {
                            editText.getEditableText().insert(editText.getSelectionStart(), key);
                        }
                    }
                }
            });
            ((TtItemNumKeyboardBinding) holder.getViewBinding()).tvKeyDel.setOnTouchListener(new View.OnTouchListener() { // from class: cn.mucang.sundial.library.widget.SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent event) {
                    r.d(event, "event");
                    int action = event.getAction();
                    if (action == 0) {
                        sendEmptyMessageDelayed(101, 800L);
                        return false;
                    }
                    if (action == 1) {
                        removeCallbacksAndMessages(null);
                        SundialNumKeyBoardView.this.deletedEdit();
                        return false;
                    }
                    if (action != 3) {
                        return false;
                    }
                    removeCallbacksAndMessages(null);
                    return false;
                }
            });
        }
    }

    public SundialNumKeyBoardView(Context context) {
        this(context, null, 0, 6, null);
    }

    public SundialNumKeyBoardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ SundialNumKeyBoardView(Context context, AttributeSet attributeSet, int i, int i2, o oVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deletedEdit() {
        int selectionStart;
        Editable editableText;
        EditText editText = this.mEditText;
        if (editText == null || (selectionStart = editText.getSelectionStart() - 1) < 0 || (editableText = editText.getEditableText()) == null) {
            return;
        }
        editableText.delete(selectionStart, editText.getSelectionStart());
    }

    public final void bindEditText(EditText edit) {
        r.e(edit, "edit");
        this.mEditText = edit;
        if (edit != null) {
            edit.setShowSoftInputOnFocus(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacksAndMessages(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v1, types: [cn.mucang.sundial.library.widget.SundialNumKeyBoardView$mHandler$1] */
    public SundialNumKeyBoardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        r.e(context, "context");
        String[] strArr = {"1", "2", "3", Constants.VIA_TO_TYPE_QZONE, "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, "X", "0", KEY_DELETE};
        this.mKeyWords = strArr;
        this.mSpanCount = 3;
        final Looper mainLooper = Looper.getMainLooper();
        this.mHandler = new Handler(mainLooper) { // from class: cn.mucang.sundial.library.widget.SundialNumKeyBoardView$mHandler$1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                r.e(msg, "msg");
                super.handleMessage(msg);
                if (msg.what == 101) {
                    this.this$0.deletedEdit();
                    sendEmptyMessageDelayed(101, 100L);
                }
            }
        };
        setLayoutManager(new GridLayoutManager(context, 3));
        d dVar = new d(n.c(strArr));
        dVar.f(String.class, new ItemBinder());
        addItemDecoration(new SundialRecycleGridDivider((int) context.getResources().getDimension(R.dimen.rpx_2)));
        setAdapter(dVar);
    }
}
