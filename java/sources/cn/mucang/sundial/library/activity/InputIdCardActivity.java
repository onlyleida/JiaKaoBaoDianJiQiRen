package cn.mucang.sundial.library.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.InputKeyBinder;
import cn.mucang.sundial.library.databinding.TtActivityInputIdCardBinding;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.InputKeyItem;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.widget.GridDividerItemDecoration;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.common.Constants;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcn/mucang/sundial/library/activity/InputIdCardActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "initView", "()V", "initData", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "personMode", "I", "Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;", "binding", "Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class InputIdCardActivity extends BaseActivity {
    public static final String DELETE = "delete";
    public static final int MAX_SPAN_COUNT = 3;
    private final d adapter;
    private TtActivityInputIdCardBinding binding;
    private final Items items;
    private int personMode;

    public InputIdCardActivity() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
        this.personMode = PersonMode.COACH.ordinal();
    }

    private final void initView() {
        String stringExtra;
        final TtActivityInputIdCardBinding ttActivityInputIdCardBinding = this.binding;
        if (ttActivityInputIdCardBinding == null) {
            r.u("binding");
            throw null;
        }
        RecyclerView inputKeys = ttActivityInputIdCardBinding.inputKeys;
        r.d(inputKeys, "inputKeys");
        inputKeys.setLayoutManager(new GridLayoutManager(this, 3));
        this.adapter.f(InputKeyItem.class, new InputKeyBinder(new InputKeyBinder.KeyListener() { // from class: cn.mucang.sundial.library.activity.InputIdCardActivity$initView$1$1
            @Override // cn.mucang.sundial.library.binder.InputKeyBinder.KeyListener
            public void onClick(String key) {
                r.e(key, "key");
                EditText idCardNum = ttActivityInputIdCardBinding.idCardNum;
                r.d(idCardNum, "idCardNum");
                Editable text = idCardNum.getText();
                int length = text != null ? text.length() : 0;
                EditText idCardNum2 = ttActivityInputIdCardBinding.idCardNum;
                r.d(idCardNum2, "idCardNum");
                int selectionStart = idCardNum2.getSelectionStart();
                EditText idCardNum3 = ttActivityInputIdCardBinding.idCardNum;
                r.d(idCardNum3, "idCardNum");
                int selectionEnd = idCardNum3.getSelectionEnd();
                if (r.a(key, InputIdCardActivity.DELETE)) {
                    if (text == null || length <= 0) {
                        return;
                    }
                    if (selectionStart != selectionEnd) {
                        text.delete(selectionStart, selectionEnd);
                    }
                    if (selectionStart > 0) {
                        text.delete(selectionStart - 1, selectionEnd);
                        return;
                    }
                    return;
                }
                if (length < 18) {
                    if (text == null) {
                        ttActivityInputIdCardBinding.idCardNum.setText(key);
                        return;
                    }
                    if (selectionStart != selectionEnd) {
                        text.replace(selectionStart, selectionEnd, key);
                        ttActivityInputIdCardBinding.idCardNum.setSelection(selectionStart + 1);
                    } else if (selectionStart >= 0) {
                        text.insert(selectionStart, key);
                    } else {
                        text.append((CharSequence) key);
                    }
                }
            }
        }));
        RecyclerView inputKeys2 = ttActivityInputIdCardBinding.inputKeys;
        r.d(inputKeys2, "inputKeys");
        inputKeys2.setAdapter(this.adapter);
        ttActivityInputIdCardBinding.inputKeys.addItemDecoration(new GridDividerItemDecoration(this, 1, 3));
        ttActivityInputIdCardBinding.inputKeys.addItemDecoration(new GridDividerItemDecoration(this, 0, 3));
        ttActivityInputIdCardBinding.login.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.InputIdCardActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditText idCardNum = ttActivityInputIdCardBinding.idCardNum;
                r.d(idCardNum, "idCardNum");
                String string = idCardNum.getText().toString();
                Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
                String string2 = StringsKt__StringsKt.J0(string).toString();
                if (string2.length() < 11) {
                    ToastUtil.INSTANCE.showToastOnce(R.string.tt_please_input_id_or_phone);
                    return;
                }
                LoginUtil loginUtil = LoginUtil.INSTANCE;
                InputIdCardActivity inputIdCardActivity = this;
                loginUtil.loginWithFaceCheck(inputIdCardActivity, inputIdCardActivity.personMode, (24 & 4) != 0 ? "" : string2, (24 & 8) != 0 ? "" : null, (24 & 16) != 0 ? "" : null);
            }
        });
        EditText idCardNum = ttActivityInputIdCardBinding.idCardNum;
        r.d(idCardNum, "idCardNum");
        idCardNum.setShowSoftInputOnFocus(false);
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra(ExtraKey.idNum)) == null) {
            stringExtra = "";
        }
        r.d(stringExtra, "intent?.getStringExtra(ExtraKey.idNum) ?: \"\"");
        ttActivityInputIdCardBinding.idCardNum.setText(stringExtra);
        ttActivityInputIdCardBinding.idCardNum.setSelection(stringExtra.length());
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        Iterator it = u.p("1", "2", "3", Constants.VIA_TO_TYPE_QZONE, "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, "X", "0", DELETE).iterator();
        while (it.hasNext()) {
            this.items.add(new InputKeyItem((String) it.next()));
        }
        Intent intent = getIntent();
        if (intent != null) {
            this.personMode = intent.getIntExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
        }
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        TtActivityInputIdCardBinding ttActivityInputIdCardBinding = this.binding;
        Intent intent = null;
        if (ttActivityInputIdCardBinding == null) {
            r.u("binding");
            throw null;
        }
        EditText editText = ttActivityInputIdCardBinding.idCardNum;
        r.d(editText, "binding.idCardNum");
        String string = editText.getText().toString();
        Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
        String string2 = StringsKt__StringsKt.J0(string).toString();
        if (string2.length() == 18) {
            intent = new Intent();
            intent.putExtra(ExtraKey.idNum, string2);
        }
        setResult(resultCode, intent);
        finish();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityInputIdCardBinding ttActivityInputIdCardBindingInflate = TtActivityInputIdCardBinding.inflate(LayoutInflater.from(this));
        r.d(ttActivityInputIdCardBindingInflate, "TtActivityInputIdCardBin…ayoutInflater.from(this))");
        this.binding = ttActivityInputIdCardBindingInflate;
        initView();
        TtActivityInputIdCardBinding ttActivityInputIdCardBinding = this.binding;
        if (ttActivityInputIdCardBinding == null) {
            r.u("binding");
            throw null;
        }
        LinearLayout root = ttActivityInputIdCardBinding.getRoot();
        r.d(root, "binding.root");
        return root;
    }
}
