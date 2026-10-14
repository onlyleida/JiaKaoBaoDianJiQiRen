package com.unity3d.player;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends Dialog implements TextWatcher, View.OnClickListener {
    private static int c = 1627389952;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f14305d = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14306a;
    private UnityPlayer b;

    public k(Context context, UnityPlayer unityPlayer, String str, int i, boolean z, boolean z2, boolean z3, String str2, int i2, boolean z4) {
        super(context);
        this.f14306a = null;
        this.b = null;
        this.f14306a = context;
        this.b = unityPlayer;
        a(z4);
        getWindow().requestFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        final View viewCreateSoftInputView = createSoftInputView();
        setContentView(viewCreateSoftInputView);
        getWindow().setLayout(-1, -2);
        getWindow().clearFlags(2);
        getWindow().clearFlags(134217728);
        getWindow().clearFlags(AlarmInfo.VEHICLE_STOLEN);
        EditText editText = (EditText) findViewById(1057292289);
        Button button = (Button) findViewById(1057292290);
        a(editText, str, i, z, z2, z3, str2, i2);
        button.setOnClickListener(this);
        this.b.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.unity3d.player.k.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (viewCreateSoftInputView.isShown()) {
                    Rect rect = new Rect();
                    k.this.b.getWindowVisibleDisplayFrame(rect);
                    int[] iArr = new int[2];
                    k.this.b.getLocationOnScreen(iArr);
                    Point point = new Point(rect.left - iArr[0], rect.height() - viewCreateSoftInputView.getHeight());
                    Point point2 = new Point();
                    k.this.getWindow().getWindowManager().getDefaultDisplay().getSize(point2);
                    int height = k.this.b.getHeight() - point2.y;
                    int height2 = k.this.b.getHeight() - point.y;
                    if (height2 != height + viewCreateSoftInputView.getHeight()) {
                        k.this.b.reportSoftInputIsVisible(true);
                    } else {
                        k.this.b.reportSoftInputIsVisible(false);
                    }
                    k.this.b.reportSoftInputArea(new Rect(point.x, point.y, viewCreateSoftInputView.getWidth(), height2));
                }
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.unity3d.player.k.2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z5) {
                if (z5) {
                    k.this.getWindow().setSoftInputMode(5);
                }
            }
        });
        editText.requestFocus();
    }

    private static int a(int i, boolean z, boolean z2, boolean z3) {
        int i2 = (z ? 32768 : 524288) | (z2 ? 131072 : 0) | (z3 ? 128 : 0);
        if (i < 0 || i > 11) {
            return i2;
        }
        int[] iArr = {1, 16385, 12290, 17, 2, 3, 8289, 33, 1, 16417, 17, InputDeviceCompat.SOURCE_MOUSE};
        return (iArr[i] & 2) != 0 ? iArr[i] : iArr[i] | i2;
    }

    private void a(EditText editText, String str, int i, boolean z, boolean z2, boolean z3, String str2, int i2) {
        editText.setImeOptions(6);
        editText.setText(str);
        editText.setHint(str2);
        editText.setHintTextColor(c);
        editText.setInputType(a(i, z, z2, z3));
        editText.setImeOptions(AlarmInfo.VEHICLE_GAS_EXCEPTION);
        if (i2 > 0) {
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2)});
        }
        editText.addTextChangedListener(this);
        editText.setSelection(editText.getText().length());
        editText.setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        ((EditText) findViewById(1057292289)).setSelection(0, 0);
        this.b.reportSoftInputStr(str, 1, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        EditText editText = (EditText) findViewById(1057292289);
        if (editText == null) {
            return null;
        }
        return editText.getText().toString().trim();
    }

    public final String a() {
        InputMethodSubtype currentInputMethodSubtype = ((InputMethodManager) this.f14306a.getSystemService("input_method")).getCurrentInputMethodSubtype();
        if (currentInputMethodSubtype == null) {
            return null;
        }
        String locale = currentInputMethodSubtype.getLocale();
        if (locale != null && !locale.equals("")) {
            return locale;
        }
        return currentInputMethodSubtype.getMode() + " " + currentInputMethodSubtype.getExtraValue();
    }

    public final void a(int i) {
        EditText editText = (EditText) findViewById(1057292289);
        if (editText != null) {
            if (i > 0) {
                editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
            } else {
                editText.setFilters(new InputFilter[0]);
            }
        }
    }

    public final void a(int i, int i2) {
        int i3;
        EditText editText = (EditText) findViewById(1057292289);
        if (editText == null || editText.getText().length() < (i3 = i2 + i)) {
            return;
        }
        editText.setSelection(i, i3);
    }

    public final void a(String str) {
        EditText editText = (EditText) findViewById(1057292289);
        if (editText != null) {
            editText.setText(str);
            editText.setSelection(str.length());
        }
    }

    public final void a(boolean z) {
        int i;
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z) {
            attributes.gravity = 8;
            i = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
        } else {
            attributes.gravity = 80;
            i = 0;
        }
        attributes.x = i;
        attributes.y = i;
        window.setAttributes(attributes);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.b.reportSoftInputStr(editable.toString(), 0, false);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected final View createSoftInputView() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f14306a);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(f14305d);
        EditText editText = new EditText(this.f14306a) { // from class: com.unity3d.player.k.3
            @Override // android.widget.TextView, android.view.View
            public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
                if (i == 4) {
                    k kVar = k.this;
                    kVar.a(kVar.b(), true);
                    return true;
                }
                if (i == 84) {
                    return true;
                }
                return super.onKeyPreIme(i, keyEvent);
            }

            @Override // android.widget.TextView
            protected final void onSelectionChanged(int i, int i2) {
                k.this.b.reportSoftInputSelection(i, i2 - i);
            }

            @Override // android.widget.TextView, android.view.View
            public final void onWindowFocusChanged(boolean z) {
                super.onWindowFocusChanged(z);
                if (z) {
                    ((InputMethodManager) k.this.f14306a.getSystemService("input_method")).showSoftInput(this, 0);
                }
            }
        };
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, 1057292290);
        editText.setLayoutParams(layoutParams);
        editText.setId(1057292289);
        relativeLayout.addView(editText);
        Button button = new Button(this.f14306a);
        button.setText(this.f14306a.getResources().getIdentifier("ok", "string", "android"));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(11);
        button.setLayoutParams(layoutParams2);
        button.setId(1057292290);
        button.setBackgroundColor(0);
        relativeLayout.addView(button);
        ((EditText) relativeLayout.findViewById(1057292289)).setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.unity3d.player.k.4
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i == 6) {
                    k kVar = k.this;
                    kVar.a(kVar.b(), false);
                }
                return false;
            }
        });
        relativeLayout.setPadding(16, 16, 16, 16);
        return relativeLayout;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        a(b(), true);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a(b(), false);
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
