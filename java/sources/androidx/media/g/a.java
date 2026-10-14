package androidx.media.g;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.core.app.h;
import androidx.core.app.i;
import androidx.media.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends i.k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f1608e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    MediaSessionCompat.Token f1609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1610g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PendingIntent f1611h;

    private RemoteViews C(i.b bVar) {
        boolean z = bVar.a() == null;
        RemoteViews remoteViews = new RemoteViews(this.f1019a.mContext.getPackageName(), R.layout.notification_media_action);
        int i = R.id.action0;
        remoteViews.setImageViewResource(i, bVar.e());
        if (!z) {
            remoteViews.setOnClickPendingIntent(i, bVar.a());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(i, bVar.j());
        }
        return remoteViews;
    }

    RemoteViews A() {
        int iMin = Math.min(this.f1019a.mActions.size(), 5);
        RemoteViews remoteViewsC = c(false, D(iMin), false);
        remoteViewsC.removeAllViews(R.id.media_actions);
        if (iMin > 0) {
            for (int i = 0; i < iMin; i++) {
                remoteViewsC.addView(R.id.media_actions, C(this.f1019a.mActions.get(i)));
            }
        }
        if (this.f1610g) {
            int i2 = R.id.cancel_action;
            remoteViewsC.setViewVisibility(i2, 0);
            remoteViewsC.setInt(i2, "setAlpha", this.f1019a.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
            remoteViewsC.setOnClickPendingIntent(i2, this.f1611h);
        } else {
            remoteViewsC.setViewVisibility(R.id.cancel_action, 8);
        }
        return remoteViewsC;
    }

    RemoteViews B() {
        RemoteViews remoteViewsC = c(false, E(), true);
        int size = this.f1019a.mActions.size();
        int[] iArr = this.f1608e;
        int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
        remoteViewsC.removeAllViews(R.id.media_actions);
        if (iMin > 0) {
            for (int i = 0; i < iMin; i++) {
                if (i >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                }
                remoteViewsC.addView(R.id.media_actions, C(this.f1019a.mActions.get(this.f1608e[i])));
            }
        }
        if (this.f1610g) {
            remoteViewsC.setViewVisibility(R.id.end_padder, 8);
            int i2 = R.id.cancel_action;
            remoteViewsC.setViewVisibility(i2, 0);
            remoteViewsC.setOnClickPendingIntent(i2, this.f1611h);
            remoteViewsC.setInt(i2, "setAlpha", this.f1019a.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
        } else {
            remoteViewsC.setViewVisibility(R.id.end_padder, 0);
            remoteViewsC.setViewVisibility(R.id.cancel_action, 8);
        }
        return remoteViewsC;
    }

    int D(int i) {
        return i <= 3 ? R.layout.notification_template_big_media_narrow : R.layout.notification_template_big_media;
    }

    int E() {
        return R.layout.notification_template_media;
    }

    public a F(PendingIntent pendingIntent) {
        this.f1611h = pendingIntent;
        return this;
    }

    public a G(MediaSessionCompat.Token token) {
        this.f1609f = token;
        return this;
    }

    public a H(int... iArr) {
        this.f1608e = iArr;
        return this;
    }

    public a I(boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            this.f1610g = z;
        }
        return this;
    }

    @Override // androidx.core.app.i.k
    public void b(h hVar) {
        if (Build.VERSION.SDK_INT < 21) {
            if (this.f1610g) {
                hVar.a().setOngoing(true);
            }
        } else {
            Notification.Builder builderA = hVar.a();
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            z(mediaStyle);
            builderA.setStyle(mediaStyle);
        }
    }

    @Override // androidx.core.app.i.k
    public RemoteViews u(h hVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return A();
    }

    @Override // androidx.core.app.i.k
    public RemoteViews v(h hVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return B();
    }

    Notification.MediaStyle z(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f1608e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f1609f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.getToken());
        }
        return mediaStyle;
    }
}
