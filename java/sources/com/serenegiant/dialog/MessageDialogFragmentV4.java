package com.serenegiant.dialog;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import androidx.lifecycle.o0;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import com.mobile.auth.gatewayauth.Constant;
import com.serenegiant.utils.BuildCheck;

/* JADX INFO: loaded from: classes6.dex */
public class MessageDialogFragmentV4 extends DialogFragmentEx {
    private static final String ARGS_KEY_PERMISSIONS = "permissions";
    private static final String TAG = MessageDialogFragmentV4.class.getSimpleName();
    private MessageDialogListener mDialogListener;
    private final DialogInterface.OnClickListener mOnClickListener = new DialogInterface.OnClickListener() { // from class: com.serenegiant.dialog.MessageDialogFragmentV4.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            MessageDialogFragmentV4.this.callOnMessageDialogResult(i == -1);
        }
    };

    public interface MessageDialogListener {
        void onMessageDialogResult(MessageDialogFragmentV4 messageDialogFragmentV4, int i, String[] strArr, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOnMessageDialogResult(boolean z) throws IllegalStateException {
        Bundle bundleRequireArguments = requireArguments();
        try {
            this.mDialogListener.onMessageDialogResult(this, bundleRequireArguments.getInt(Constant.LOGIN_ACTIVITY_REQUEST_CODE), bundleRequireArguments.getStringArray(ARGS_KEY_PERMISSIONS), z);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    public static MessageDialogFragmentV4 newInstance(int i, int i2, int i3, String[] strArr) {
        MessageDialogFragmentV4 messageDialogFragmentV4 = new MessageDialogFragmentV4();
        Bundle bundle = new Bundle();
        bundle.putInt(Constant.LOGIN_ACTIVITY_REQUEST_CODE, i);
        bundle.putInt("title", i2);
        bundle.putInt(ErrorDialogParams.EXTRA_MESSAGE, i3);
        bundle.putStringArray(ARGS_KEY_PERMISSIONS, strArr);
        messageDialogFragmentV4.setArguments(bundle);
        return messageDialogFragmentV4;
    }

    public static MessageDialogFragmentV4 showDialog(d dVar, int i, int i2, int i3, String[] strArr) throws IllegalStateException {
        MessageDialogFragmentV4 messageDialogFragmentV4NewInstance = newInstance(i, i2, i3, strArr);
        messageDialogFragmentV4NewInstance.show(dVar.getSupportFragmentManager(), TAG);
        return messageDialogFragmentV4NewInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof MessageDialogListener) {
            this.mDialogListener = (MessageDialogListener) context;
        }
        if (this.mDialogListener == null) {
            o0 targetFragment = getTargetFragment();
            if (targetFragment instanceof MessageDialogListener) {
                this.mDialogListener = (MessageDialogListener) targetFragment;
            }
        }
        if (this.mDialogListener == null && BuildCheck.isAndroid4_2()) {
            o0 parentFragment = getParentFragment();
            if (parentFragment instanceof MessageDialogListener) {
                this.mDialogListener = (MessageDialogListener) parentFragment;
            }
        }
        if (this.mDialogListener == null) {
            throw new ClassCastException(context.toString());
        }
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        callOnMessageDialogResult(false);
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle == null) {
            bundle = requireArguments();
        }
        int i = bundle.getInt("title");
        return new AlertDialog.Builder(requireActivity()).setIcon(R.drawable.ic_dialog_alert).setTitle(i).setMessage(bundle.getInt(ErrorDialogParams.EXTRA_MESSAGE)).setPositiveButton(R.string.ok, this.mOnClickListener).setNegativeButton(R.string.cancel, this.mOnClickListener).create();
    }

    public static MessageDialogFragmentV4 showDialog(Fragment fragment, int i, int i2, int i3, String[] strArr) throws IllegalStateException {
        MessageDialogFragmentV4 messageDialogFragmentV4NewInstance = newInstance(i, i2, i3, strArr);
        messageDialogFragmentV4NewInstance.setTargetFragment(fragment, fragment.getId());
        messageDialogFragmentV4NewInstance.show(fragment.requireFragmentManager(), TAG);
        return messageDialogFragmentV4NewInstance;
    }
}
