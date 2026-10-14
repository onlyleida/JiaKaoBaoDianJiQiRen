package com.serenegiant.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.Preference;
import com.serenegiant.common.R;

/* JADX INFO: loaded from: classes6.dex */
public class DialogPreferenceV7 extends Preference implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
    private AlertDialog.Builder mBuilder;
    private Dialog mDialog;
    private Drawable mDialogIcon;
    private int mDialogLayoutResId;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;
    private int mWhichButtonClicked;

    public DialogPreferenceV7(Context context) {
        this(context, null, 0, 0);
    }

    private void requestInputMethod(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public Drawable getDialogIcon() {
        return this.mDialogIcon;
    }

    public int getDialogLayoutResource() {
        return this.mDialogLayoutResId;
    }

    public CharSequence getDialogMessage() {
        return this.mDialogMessage;
    }

    public CharSequence getDialogTitle() {
        return this.mDialogTitle;
    }

    public CharSequence getNegativeButtonText() {
        return this.mNegativeButtonText;
    }

    public CharSequence getPositiveButtonText() {
        return this.mPositiveButtonText;
    }

    protected boolean needInputMethod() {
        return false;
    }

    public void onActivityDestroy() {
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    public void onAttached() {
        super.onAttached();
    }

    protected void onBindDialogView(View view) {
        View viewFindViewById = view.findViewById(R.id.message);
        if (viewFindViewById != null) {
            CharSequence dialogMessage = getDialogMessage();
            int i = 8;
            if (!TextUtils.isEmpty(dialogMessage)) {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(dialogMessage);
                }
                i = 0;
            }
            if (viewFindViewById.getVisibility() != i) {
                viewFindViewById.setVisibility(i);
            }
        }
    }

    protected void onClick() {
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            showDialog(null);
        }
    }

    protected View onCreateDialogView() {
        if (this.mDialogLayoutResId == 0) {
            return null;
        }
        return LayoutInflater.from(this.mBuilder.getContext()).inflate(this.mDialogLayoutResId, (ViewGroup) null);
    }

    public void onDetached() {
        onActivityDestroy();
        super.onDetached();
    }

    protected void onDialogClosed(boolean z) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.mDialog = null;
        onDialogClosed(this.mWhichButtonClicked == -1);
    }

    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isDialogShowing) {
            showDialog(savedState.dialogBundle);
        }
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Dialog dialog = this.mDialog;
        if (dialog == null || !dialog.isShowing()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.isDialogShowing = true;
        savedState.dialogBundle = this.mDialog.onSaveInstanceState();
        return savedState;
    }

    public void setDialogIcon(Drawable drawable) {
        this.mDialogIcon = drawable;
    }

    public void setDialogLayoutResource(int i) {
        this.mDialogLayoutResId = i;
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.mDialogMessage = charSequence;
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.mDialogTitle = charSequence;
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.mNegativeButtonText = charSequence;
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.mPositiveButtonText = charSequence;
    }

    protected void showDialog(Bundle bundle) {
        Context context = getContext();
        this.mWhichButtonClicked = -2;
        this.mBuilder = new AlertDialog.Builder(context).setTitle(this.mDialogTitle).setIcon(this.mDialogIcon).setPositiveButton(this.mPositiveButtonText, this).setNegativeButton(this.mNegativeButtonText, this);
        View viewOnCreateDialogView = onCreateDialogView();
        if (viewOnCreateDialogView != null) {
            onBindDialogView(viewOnCreateDialogView);
            this.mBuilder.setView(viewOnCreateDialogView);
        } else {
            this.mBuilder.setMessage(this.mDialogMessage);
        }
        onPrepareDialogBuilder(this.mBuilder);
        AlertDialog alertDialogCreate = this.mBuilder.create();
        this.mDialog = alertDialogCreate;
        if (bundle != null) {
            alertDialogCreate.onRestoreInstanceState(bundle);
        }
        if (needInputMethod()) {
            requestInputMethod(alertDialogCreate);
        }
        alertDialogCreate.setOnDismissListener(this);
        alertDialogCreate.show();
    }

    public DialogPreferenceV7(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }

    public void setDialogIcon(int i) {
        this.mDialogIcon = getContext().getResources().getDrawable(i);
    }

    public void setDialogMessage(int i) {
        setDialogMessage(getContext().getString(i));
    }

    public void setDialogTitle(int i) {
        setDialogTitle(getContext().getString(i));
    }

    public void setNegativeButtonText(int i) {
        setNegativeButtonText(getContext().getString(i));
    }

    public void setPositiveButtonText(int i) {
        setPositiveButtonText(getContext().getString(i));
    }

    private static class SavedState extends android.preference.Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.serenegiant.widget.DialogPreferenceV7.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Bundle dialogBundle;
        boolean isDialogShowing;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.isDialogShowing = parcel.readInt() == 1;
            this.dialogBundle = parcel.readBundle();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isDialogShowing ? 1 : 0);
            parcel.writeBundle(this.dialogBundle);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public DialogPreferenceV7(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.mWhichButtonClicked = i;
    }

    public DialogPreferenceV7(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.preference.R.styleable.DialogPreference, i, i2);
        String string = typedArrayObtainStyledAttributes.getString(androidx.preference.R.styleable.DialogPreference_dialogTitle);
        this.mDialogTitle = string;
        if (string == null) {
            this.mDialogTitle = getTitle();
        }
        this.mDialogMessage = typedArrayObtainStyledAttributes.getString(androidx.preference.R.styleable.DialogPreference_dialogMessage);
        this.mDialogIcon = typedArrayObtainStyledAttributes.getDrawable(androidx.preference.R.styleable.DialogPreference_dialogIcon);
        this.mPositiveButtonText = typedArrayObtainStyledAttributes.getString(androidx.preference.R.styleable.DialogPreference_positiveButtonText);
        this.mNegativeButtonText = typedArrayObtainStyledAttributes.getString(androidx.preference.R.styleable.DialogPreference_negativeButtonText);
        this.mDialogLayoutResId = typedArrayObtainStyledAttributes.getResourceId(androidx.preference.R.styleable.DialogPreference_dialogLayout, this.mDialogLayoutResId);
        typedArrayObtainStyledAttributes.recycle();
    }
}
