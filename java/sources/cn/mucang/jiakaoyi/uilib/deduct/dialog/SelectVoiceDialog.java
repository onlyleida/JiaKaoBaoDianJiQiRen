package cn.mucang.jiakaoyi.uilib.deduct.dialog;

import android.app.Dialog;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import cn.mucang.jiakaoyi.uilib.utils.UriConvertFile;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogSelectVoiceBinding;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.dialog.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u001d\u001a\u00020\u000fH\u0016J\b\u0010\u001e\u001a\u00020\u000fH\u0016J\u001a\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00182\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/dialog/SelectVoiceDialog;", "Landroidx/fragment/app/DialogFragment;", "voiceName", "", "(Ljava/lang/String;)V", "REQUEST_CODE_SELECT_FILE", "", "hasUserVoice", "", "mediaPlayer", "Landroid/media/MediaPlayer;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;", "voiceFilePath", "onActivityResult", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onDestroy", "onStart", "onViewCreated", "view", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectVoiceDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9256a;
    private DialogSelectVoiceBinding b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MediaPlayer f9259f;

    public SelectVoiceDialog(String voiceName) {
        r.e(voiceName, "voiceName");
        this.f9256a = voiceName;
        this.c = 100;
        this.f9257d = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(SelectVoiceDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f9257d = "";
        DialogSelectVoiceBinding dialogSelectVoiceBinding = this$0.b;
        if (dialogSelectVoiceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding.fileName.setText("");
        DialogSelectVoiceBinding dialogSelectVoiceBinding2 = this$0.b;
        if (dialogSelectVoiceBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding2.audition.setVisibility(8);
        DialogSelectVoiceBinding dialogSelectVoiceBinding3 = this$0.b;
        if (dialogSelectVoiceBinding3 != null) {
            dialogSelectVoiceBinding3.delete.setVisibility(8);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(SelectVoiceDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(SelectVoiceDialog this$0, View view) throws IOException {
        r.e(this$0, "this$0");
        if (this$0.f9259f == null) {
            this$0.f9259f = new MediaPlayer();
        }
        MediaPlayer mediaPlayer = this$0.f9259f;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
        }
        MediaPlayer mediaPlayer2 = this$0.f9259f;
        if (mediaPlayer2 != null) {
            mediaPlayer2.setDataSource(this$0.f9257d);
        }
        MediaPlayer mediaPlayer3 = this$0.f9259f;
        if (mediaPlayer3 != null) {
            mediaPlayer3.prepareAsync();
        }
        MediaPlayer mediaPlayer4 = this$0.f9259f;
        if (mediaPlayer4 == null) {
            return;
        }
        mediaPlayer4.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.k
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer5) {
                SelectVoiceDialog.D(mediaPlayer5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(MediaPlayer mp) {
        r.e(mp, "mp");
        mp.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(SelectVoiceDialog this$0, File file, View view) {
        r.e(this$0, "this$0");
        if (n0.e(this$0.f9257d)) {
            if (!this$0.f9258e) {
                u.h("请选择语音文件");
                return;
            } else if (!file.delete()) {
                u.h("设置失败");
                return;
            } else {
                u.h("设置成功");
                this$0.dismissAllowingStateLoss();
                return;
            }
        }
        if (AccountUtils.c() == null) {
            u.h("请先登录");
            return;
        }
        if (file != null && r.a(file.getPath(), this$0.f9257d)) {
            u.h("设置成功");
            this$0.dismissAllowingStateLoss();
            return;
        }
        if (this$0.f9258e) {
            file.delete();
        }
        File fileG = cn.mucang.android.jiakaoyi.framework.tts.i.b.g();
        if (fileG != null) {
            String path = fileG.getPath();
            if (!cn.mucang.android.core.utils.m.d(this$0.f9257d, ((Object) path) + '/' + this$0.f9256a)) {
                u.h("设置失败");
                return;
            }
            ActionLog.f3431a.m("关联音频 " + ((Object) path) + '/' + this$0.f9256a);
            u.h("设置成功");
            this$0.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(SelectVoiceDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(SelectVoiceDialog this$0, View view) {
        r.e(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("audio/*");
        intent.addCategory("android.intent.category.OPENABLE");
        this$0.startActivityForResult(Intent.createChooser(intent, "语音文件选择"), this$0.c);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) throws Throwable {
        Uri data2;
        if (requestCode != this.c || resultCode != -1 || data == null || (data2 = data.getData()) == null) {
            return;
        }
        String strB = UriConvertFile.f9585a.b(getContext(), data2);
        if (strB == null) {
            strB = "";
        }
        this.f9257d = strB;
        if (r.a(strB, "")) {
            return;
        }
        DialogSelectVoiceBinding dialogSelectVoiceBinding = this.b;
        if (dialogSelectVoiceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding.fileName.setText(cn.mucang.android.core.utils.m.l(this.f9257d));
        DialogSelectVoiceBinding dialogSelectVoiceBinding2 = this.b;
        if (dialogSelectVoiceBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding2.audition.setVisibility(0);
        DialogSelectVoiceBinding dialogSelectVoiceBinding3 = this.b;
        if (dialogSelectVoiceBinding3 != null) {
            dialogSelectVoiceBinding3.delete.setVisibility(0);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setTitle("语音选择");
        }
        DialogSelectVoiceBinding dialogSelectVoiceBindingInflate = DialogSelectVoiceBinding.inflate(getLayoutInflater());
        r.d(dialogSelectVoiceBindingInflate, "inflate(layoutInflater)");
        this.b = dialogSelectVoiceBindingInflate;
        if (dialogSelectVoiceBindingInflate != null) {
            return dialogSelectVoiceBindingInflate.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPlayer mediaPlayer = this.f9259f;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
        MediaPlayer mediaPlayer2 = this.f9259f;
        if (mediaPlayer2 != null) {
            mediaPlayer2.release();
        }
        this.f9259f = null;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 == null) {
            return;
        }
        dialog3.setCanceledOnTouchOutside(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final File fileH = cn.mucang.android.jiakaoyi.framework.tts.i.b.h(this.f9256a);
        if (fileH != null && fileH.exists()) {
            this.f9258e = true;
            String path = fileH.getPath();
            r.d(path, "userVoiceFile.path");
            this.f9257d = path;
            DialogSelectVoiceBinding dialogSelectVoiceBinding = this.b;
            if (dialogSelectVoiceBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectVoiceBinding.fileName.setText(cn.mucang.android.core.utils.m.l(path));
            DialogSelectVoiceBinding dialogSelectVoiceBinding2 = this.b;
            if (dialogSelectVoiceBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectVoiceBinding2.audition.setVisibility(0);
            DialogSelectVoiceBinding dialogSelectVoiceBinding3 = this.b;
            if (dialogSelectVoiceBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectVoiceBinding3.delete.setVisibility(0);
        }
        DialogSelectVoiceBinding dialogSelectVoiceBinding4 = this.b;
        if (dialogSelectVoiceBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding4.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SelectVoiceDialog.y(this.f9246a, view2);
            }
        });
        DialogSelectVoiceBinding dialogSelectVoiceBinding5 = this.b;
        if (dialogSelectVoiceBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding5.selectFile.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SelectVoiceDialog.z(this.f9252a, view2);
            }
        });
        DialogSelectVoiceBinding dialogSelectVoiceBinding6 = this.b;
        if (dialogSelectVoiceBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding6.delete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SelectVoiceDialog.A(this.f9247a, view2);
            }
        });
        DialogSelectVoiceBinding dialogSelectVoiceBinding7 = this.b;
        if (dialogSelectVoiceBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding7.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SelectVoiceDialog.B(this.f9250a, view2);
            }
        });
        DialogSelectVoiceBinding dialogSelectVoiceBinding8 = this.b;
        if (dialogSelectVoiceBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSelectVoiceBinding8.audition.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws IOException {
                SelectVoiceDialog.C(this.f9251a, view2);
            }
        });
        DialogSelectVoiceBinding dialogSelectVoiceBinding9 = this.b;
        if (dialogSelectVoiceBinding9 != null) {
            dialogSelectVoiceBinding9.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.dialog.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SelectVoiceDialog.E(this.f9248a, fileH, view2);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
