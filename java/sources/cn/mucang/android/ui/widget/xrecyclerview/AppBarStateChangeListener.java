package cn.mucang.android.ui.widget.xrecyclerview;

import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AppBarStateChangeListener implements AppBarLayout.OnOffsetChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private State f9063a = State.IDLE;

    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    public abstract void a(AppBarLayout appBarLayout, State state);

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        if (i == 0) {
            State state = this.f9063a;
            State state2 = State.EXPANDED;
            if (state != state2) {
                a(appBarLayout, state2);
            }
            this.f9063a = state2;
            return;
        }
        if (Math.abs(i) >= appBarLayout.getTotalScrollRange()) {
            State state3 = this.f9063a;
            State state4 = State.COLLAPSED;
            if (state3 != state4) {
                a(appBarLayout, state4);
            }
            this.f9063a = state4;
            return;
        }
        State state5 = this.f9063a;
        State state6 = State.IDLE;
        if (state5 != state6) {
            a(appBarLayout, state6);
        }
        this.f9063a = state6;
    }
}
