package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class h extends androidx.fragment.app.c {
    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        return new g(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.c
    public void setupDialog(Dialog dialog, int i) {
        if (!(dialog instanceof g)) {
            super.setupDialog(dialog, i);
            return;
        }
        g gVar = (g) dialog;
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        gVar.supportRequestWindowFeature(1);
    }
}
