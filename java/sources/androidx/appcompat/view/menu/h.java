package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f258a;
    private androidx.appcompat.app.c b;
    e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m.a f259d;

    public h(g gVar) {
        this.f258a = gVar;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean a(g gVar) {
        m.a aVar = this.f259d;
        if (aVar != null) {
            return aVar.a(gVar);
        }
        return false;
    }

    public void b() {
        androidx.appcompat.app.c cVar = this.b;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    public void c(IBinder iBinder) {
        g gVar = this.f258a;
        androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(gVar.getContext());
        e eVar = new e(aVar.getContext(), R.layout.abc_list_menu_item_layout);
        this.c = eVar;
        eVar.setCallback(this);
        this.f258a.addMenuPresenter(this.c);
        aVar.setAdapter(this.c.a(), this);
        View headerView = gVar.getHeaderView();
        if (headerView != null) {
            aVar.setCustomTitle(headerView);
        } else {
            aVar.setIcon(gVar.getHeaderIcon()).setTitle(gVar.getHeaderTitle());
        }
        aVar.setOnKeyListener(this);
        androidx.appcompat.app.c cVarCreate = aVar.create();
        this.b = cVarCreate;
        cVarCreate.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.b.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f258a.performItemAction((i) this.c.a().getItem(i), 0);
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void onCloseMenu(g gVar, boolean z) {
        if (z || gVar == this.f258a) {
            b();
        }
        m.a aVar = this.f259d;
        if (aVar != null) {
            aVar.onCloseMenu(gVar, z);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.c.onCloseMenu(this.f258a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f258a.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f258a.performShortcut(i, keyEvent, 0);
    }
}
