package cn.mucang.jiakaoyi.uilib.message.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.jiakaoyi.uilib.message.ButtonConfig;
import cn.mucang.jiakaoyi.uilib.message.DialogConfig;
import cn.mucang.jiakaoyi.uilib.message.DialogMessageDetail;
import cn.mucang.jiakaoyi.uilib.message.DialogMessageManager;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DialogMessageDetail f9446a;
    private final JCommonDialog b;
    private final cn.mucang.android.jiakaoyi.framework.h.b<DialogMessageDetail> c;

    public g(Context context, final DialogMessageDetail dialogMessageDetail, cn.mucang.android.jiakaoyi.framework.h.b<DialogMessageDetail> bVar) {
        String str;
        View.OnClickListener onClickListener;
        String str2;
        View.OnClickListener onClickListener2;
        View.OnClickListener onClickListener3;
        boolean z;
        String name;
        String name2;
        View.OnClickListener onClickListener4;
        View.OnClickListener onClickListener5;
        View.OnClickListener onClickListener6 = null;
        if (dialogMessageDetail.getConfig() != null) {
            final DialogConfig config = dialogMessageDetail.getConfig();
            List<ButtonConfig> buttonConfig = config.getButtonConfig();
            boolean zIsCloseable = config.isCloseable();
            if (buttonConfig != null) {
                if (buttonConfig.size() > 0) {
                    final ButtonConfig buttonConfig2 = buttonConfig.get(0);
                    name2 = buttonConfig2.getName();
                    onClickListener4 = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.message.dialog.a
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f9438a.f(dialogMessageDetail, config, buttonConfig2, view);
                        }
                    };
                } else {
                    name2 = null;
                    onClickListener4 = null;
                }
                if (buttonConfig.size() > 1) {
                    final ButtonConfig buttonConfig3 = buttonConfig.get(1);
                    name = buttonConfig3.getName();
                    onClickListener5 = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.message.dialog.b
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f9440a.h(dialogMessageDetail, config, buttonConfig3, view);
                        }
                    };
                } else {
                    name = null;
                    onClickListener5 = null;
                }
            } else {
                name = null;
                name2 = null;
                onClickListener4 = null;
                onClickListener5 = null;
            }
            if (zIsCloseable) {
                final ButtonConfig buttonConfig4 = new ButtonConfig();
                buttonConfig4.setName("关闭");
                buttonConfig4.setAction("close");
                onClickListener6 = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.message.dialog.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f9442a.j(dialogMessageDetail, config, buttonConfig4, view);
                    }
                };
            }
            onClickListener3 = onClickListener6;
            str2 = name;
            z = zIsCloseable;
            str = name2;
            onClickListener = onClickListener4;
            onClickListener2 = onClickListener5;
        } else {
            str = null;
            onClickListener = null;
            str2 = null;
            onClickListener2 = null;
            onClickListener3 = null;
            z = false;
        }
        JCommonDialog jCommonDialog = new JCommonDialog(context, new JCommonDialog.DialogParams(dialogMessageDetail.getTitle(), dialogMessageDetail.getContent() != null ? dialogMessageDetail.getContent() : "", str, onClickListener, str2, onClickListener2, false, onClickListener3, z));
        this.b = jCommonDialog;
        jCommonDialog.s(dialogMessageDetail.getConfig().getImageUrl());
        this.f9446a = dialogMessageDetail;
        this.c = bVar;
    }

    private void d(DialogMessageDetail dialogMessageDetail, DialogConfig dialogConfig, ButtonConfig buttonConfig) {
        if (!dialogConfig.isAutoConfirm()) {
            DialogMessageManager.f9433a.c(dialogMessageDetail.getMessageId(), buttonConfig, null);
        }
        this.b.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(DialogMessageDetail dialogMessageDetail, DialogConfig dialogConfig, ButtonConfig buttonConfig, View view) {
        d(dialogMessageDetail, dialogConfig, buttonConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(DialogMessageDetail dialogMessageDetail, DialogConfig dialogConfig, ButtonConfig buttonConfig, View view) {
        d(dialogMessageDetail, dialogConfig, buttonConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(DialogMessageDetail dialogMessageDetail, DialogConfig dialogConfig, ButtonConfig buttonConfig, View view) {
        d(dialogMessageDetail, dialogConfig, buttonConfig);
    }

    static /* synthetic */ void k(e eVar, DialogInterface dialogInterface) {
        if (eVar != null) {
            eVar.c();
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.message.dialog.f
    public boolean a() {
        JCommonDialog jCommonDialog = this.b;
        return jCommonDialog != null && jCommonDialog.isShowing();
    }

    @Override // cn.mucang.jiakaoyi.uilib.message.dialog.f
    public int b() {
        return this.f9446a.getPriority();
    }

    @Override // cn.mucang.jiakaoyi.uilib.message.dialog.f
    public void c(final e eVar) {
        if (this.b.isShowing()) {
            return;
        }
        this.b.show();
        this.b.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.jiakaoyi.uilib.message.dialog.d
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                g.k(eVar, dialogInterface);
            }
        });
        cn.mucang.android.jiakaoyi.framework.h.b<DialogMessageDetail> bVar = this.c;
        if (bVar != null) {
            bVar.callback(this.f9446a);
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.message.dialog.f
    public String getId() {
        return this.f9446a.getMessageId();
    }
}
