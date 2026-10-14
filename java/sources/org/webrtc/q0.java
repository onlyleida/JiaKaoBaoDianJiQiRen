package org.webrtc;

/* JADX INFO: compiled from: Predicate.java */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class q0 {
    public static Predicate $default$and(final Predicate _this, final Predicate predicate) {
        return new Predicate<T>() { // from class: org.webrtc.Predicate.2
            final /* synthetic */ Predicate val$other;

            AnonymousClass2() {
                predicate = predicate;
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate and(Predicate predicate2) {
                return q0.$default$and(this, predicate2);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate negate() {
                return q0.$default$negate(this);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate or(Predicate predicate2) {
                return q0.$default$or(this, predicate2);
            }

            @Override // org.webrtc.Predicate
            public boolean test(T t) {
                return Predicate.this.test(t) && predicate.test(t);
            }
        };
    }

    public static Predicate $default$negate(final Predicate _this) {
        return new Predicate<T>() { // from class: org.webrtc.Predicate.3
            AnonymousClass3() {
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate and(Predicate predicate) {
                return q0.$default$and(this, predicate);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate negate() {
                return q0.$default$negate(this);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate or(Predicate predicate) {
                return q0.$default$or(this, predicate);
            }

            @Override // org.webrtc.Predicate
            public boolean test(T t) {
                return !Predicate.this.test(t);
            }
        };
    }

    public static Predicate $default$or(final Predicate _this, final Predicate predicate) {
        return new Predicate<T>() { // from class: org.webrtc.Predicate.1
            final /* synthetic */ Predicate val$other;

            AnonymousClass1() {
                predicate = predicate;
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate and(Predicate predicate2) {
                return q0.$default$and(this, predicate2);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate negate() {
                return q0.$default$negate(this);
            }

            @Override // org.webrtc.Predicate
            public /* synthetic */ Predicate or(Predicate predicate2) {
                return q0.$default$or(this, predicate2);
            }

            @Override // org.webrtc.Predicate
            public boolean test(T t) {
                return Predicate.this.test(t) || predicate.test(t);
            }
        };
    }
}
