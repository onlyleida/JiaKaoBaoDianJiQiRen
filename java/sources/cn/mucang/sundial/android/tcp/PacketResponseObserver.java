package cn.mucang.sundial.android.tcp;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import cn.mucang.android.core.config.MucangConfig;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class PacketResponseObserver {
    private static final PacketResponseObserver INSTANCE = new PacketResponseObserver();
    private static final int TIMEOUT = 15000;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final SparseArray<ObserveRequest> requests = new SparseArray<>();
    private final Object lock = new Object();

    public static class ObserveRequest {
        private RequestResultListener requestResultListener;
        private final SparseBooleanArray packetResult = new SparseBooleanArray();
        private final Set<Integer> packets = new HashSet();
        final Runnable timeOutRunnable = new AnonymousClass1();

        /* JADX INFO: renamed from: cn.mucang.sundial.android.tcp.PacketResponseObserver$ObserveRequest$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void b() {
                ObserveRequest.this.requestResultListener.onTimeout();
            }

            @Override // java.lang.Runnable
            public void run() {
                PacketResponseObserver.getInstance().stopObserve(ObserveRequest.this);
                if (ObserveRequest.this.requestResultListener != null) {
                    MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.android.tcp.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f10361a.b();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(boolean z) {
            this.requestResultListener.onResult(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Set<Integer> getPackets() {
            return this.packets;
        }

        private void judgeState() {
            if (this.packetResult.size() < this.packets.size()) {
                return;
            }
            final boolean z = true;
            for (int i = 0; i < this.packetResult.size(); i++) {
                SparseBooleanArray sparseBooleanArray = this.packetResult;
                z &= sparseBooleanArray.get(sparseBooleanArray.keyAt(i), false);
            }
            if (this.requestResultListener != null) {
                MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.android.tcp.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f10362a.b(z);
                    }
                });
            }
            PacketResponseObserver.getInstance().stopObserve(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onPacketResponse(int i, boolean z) {
            this.packetResult.put(i, z);
            judgeState();
        }

        public void observe() {
            PacketResponseObserver.getInstance().observe(this);
        }

        public ObserveRequest observePacket(int i) {
            this.packets.add(Integer.valueOf(i));
            return this;
        }

        public ObserveRequest setRequestResultListener(RequestResultListener requestResultListener) {
            this.requestResultListener = requestResultListener;
            return this;
        }
    }

    public interface RequestResultListener {
        void onResult(boolean z);

        void onTimeout();
    }

    public static PacketResponseObserver getInstance() {
        return INSTANCE;
    }

    void observe(ObserveRequest observeRequest) {
        Set packets = observeRequest.getPackets();
        if (packets == null || packets.isEmpty()) {
            RequestResultListener requestResultListener = observeRequest.requestResultListener;
            if (requestResultListener != null) {
                requestResultListener.onResult(true);
                return;
            }
            return;
        }
        this.handler.postDelayed(observeRequest.timeOutRunnable, 15000L);
        synchronized (this.lock) {
            Iterator it = packets.iterator();
            while (it.hasNext()) {
                this.requests.put(((Integer) it.next()).intValue(), observeRequest);
            }
        }
    }

    public void onPacketResponse(int i, boolean z) {
        synchronized (this.lock) {
            ObserveRequest observeRequest = this.requests.get(i);
            if (observeRequest != null) {
                this.requests.remove(i);
                observeRequest.onPacketResponse(i, z);
            }
        }
    }

    void stopObserve(ObserveRequest observeRequest) {
        this.handler.removeCallbacks(observeRequest.timeOutRunnable);
        Set packets = observeRequest.getPackets();
        if (packets == null || packets.isEmpty()) {
            return;
        }
        synchronized (this.lock) {
            Iterator it = packets.iterator();
            while (it.hasNext()) {
                this.requests.remove(((Integer) it.next()).intValue());
            }
        }
    }
}
