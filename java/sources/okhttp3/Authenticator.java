package okhttp3;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface Authenticator {
    public static final Authenticator NONE = new Authenticator() { // from class: okhttp3.a
        @Override // okhttp3.Authenticator
        public final Request authenticate(Route route, Response response) {
            return e.a(route, response);
        }
    };

    @Nullable
    Request authenticate(@Nullable Route route, Response response) throws IOException;
}
