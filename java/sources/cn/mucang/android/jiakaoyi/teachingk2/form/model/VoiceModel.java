package cn.mucang.android.jiakaoyi.teachingk2.form.model;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.f;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.l0;

/* JADX INFO: loaded from: classes4.dex */
public class VoiceModel extends FormModel {
    public String conditionId;
    public String displayContent;
    public int duration;
    public String highDisplayContent;
    public String highVoice;
    public String middleDisplayContent;
    public String middleVoice;
    public String shortVoice;
    public boolean sound;
    public String voice;

    public VoiceModel() {
        this.type = 2;
    }

    public String getPlayText() {
        if (f.f6212a) {
            return this.voice;
        }
        if (l0.a() == 30) {
            return this.highVoice;
        }
        return l0.a() == 20 ? this.middleVoice : this.voice;
    }

    public String getShowText() {
        if (f.f6212a) {
            return n0.g(this.displayContent) ? this.displayContent : this.voice;
        }
        if (l0.a() == 30) {
            return n0.g(this.highDisplayContent) ? this.highDisplayContent : this.highVoice;
        }
        if (l0.a() == 20) {
            return n0.g(this.middleDisplayContent) ? this.middleDisplayContent : this.middleVoice;
        }
        return n0.g(this.displayContent) ? this.displayContent : this.voice;
    }

    public boolean isValid() {
        return n0.g(this.voice) || n0.g(this.middleVoice) || n0.g(this.highVoice);
    }

    public VoiceModel sound(boolean z) {
        this.sound = z;
        return this;
    }

    public VoiceModel(String str) {
        this.voice = str;
        this.type = 2;
    }
}
