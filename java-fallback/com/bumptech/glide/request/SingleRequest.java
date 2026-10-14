package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes5.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {
    private static final String GLIDE_TAG = "Glide";
    private static final boolean IS_VERBOSE_LOGGABLE = false;
    private static final String TAG = "Request";
    private final TransitionFactory<? super R> animationFactory;
    private final Executor callbackExecutor;
    private final Context context;
    private volatile Engine engine;
    private Drawable errorDrawable;
    private Drawable fallbackDrawable;
    private final GlideContext glideContext;
    private int height;
    private boolean isCallingCallbacks;
    private Engine.LoadStatus loadStatus;
    private final Object model;
    private final int overrideHeight;
    private final int overrideWidth;
    private Drawable placeholderDrawable;
    private final Priority priority;
    private final RequestCoordinator requestCoordinator;
    private final List<RequestListener<R>> requestListeners;
    private final Object requestLock;
    private final BaseRequestOptions<?> requestOptions;
    private RuntimeException requestOrigin;
    private Resource<R> resource;
    private long startTime;
    private final StateVerifier stateVerifier;
    private Status status;
    private final String tag;
    private final Target<R> target;
    private final RequestListener<R> targetListener;
    private final Class<R> transcodeClass;
    private int width;

    private static final enum Status extends Enum<Status> {
        private static final /* synthetic */ Status[] $VALUES = null;
        public static final Status CLEARED = null;
        public static final Status COMPLETE = null;
        public static final Status FAILED = null;
        public static final Status PENDING = null;
        public static final Status RUNNING = null;
        public static final Status WAITING_FOR_SIZE = null;

        static {
            Status r0 = new Status("PENDING", 0);
            PENDING = r0;
            Status r1 = new Status("RUNNING", 1);
            RUNNING = r1;
            Status r3 = new Status("WAITING_FOR_SIZE", 2);
            WAITING_FOR_SIZE = r3;
            Status r5 = new Status("COMPLETE", 3);
            COMPLETE = r5;
            Status r7 = new Status("FAILED", 4);
            FAILED = r7;
            Status r9 = new Status("CLEARED", 5);
            CLEARED = r9;
            $VALUES = new Status[]{r0, r1, r3, r5, r7, r9};
        }

        private Status(String r1, int r2) {
            super(r1, r2);
        }

        public static Status valueOf(String r1) {
            return (Status) Enum.valueOf(Status.class, r1);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    static {
        IS_VERBOSE_LOGGABLE = Log.isLoggable(TAG, 2);
    }

    private SingleRequest(Context r4, GlideContext r5, Object r6, Object r7, Class<R> r8, BaseRequestOptions<?> r9, int r10, int r11, Priority r12, Target<R> r13, RequestListener<R> r14, List<RequestListener<R>> r15, RequestCoordinator r16, Engine r17, TransitionFactory<? super R> r18, Executor r19) {
        if (IS_VERBOSE_LOGGABLE == false) goto L5;
        String r1 = String.valueOf(super.hashCode());
    L6:
        this.tag = r1;
        this.stateVerifier = StateVerifier.newInstance();
        this.requestLock = r6;
        this.context = r4;
        this.glideContext = r5;
        this.model = r7;
        this.transcodeClass = r8;
        this.requestOptions = r9;
        this.overrideWidth = r10;
        this.overrideHeight = r11;
        this.priority = r12;
        this.target = r13;
        this.targetListener = r14;
        this.requestListeners = r15;
        this.requestCoordinator = r16;
        this.engine = r17;
        this.animationFactory = r18;
        this.callbackExecutor = r19;
        this.status = Status.PENDING;
        if (this.requestOrigin == null) goto L9;
        return;
    L9:
        if (r5.isLoggingRequestOriginsEnabled() == false) goto L13;
        this.requestOrigin = new RuntimeException("Glide request origin trace");
        return;
    L13:
        return;
    L5:
        r1 = null;
        goto L6
    }

    private void assertNotCallingCallbacks() {
        if (this.isCallingCallbacks == true) goto L6;
        return;
    L6:
        throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }

    private boolean canNotifyCleared() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 != null) goto L5;
    L8:
        return true;
    L5:
        if (r0.canNotifyCleared(this) == true) goto L8;
        return false;
    }

    private boolean canNotifyStatusChanged() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 != null) goto L5;
    L8:
        return true;
    L5:
        if (r0.canNotifyStatusChanged(this) == true) goto L8;
        return false;
    }

    private boolean canSetResource() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 != null) goto L5;
    L8:
        return true;
    L5:
        if (r0.canSetImage(this) == true) goto L8;
        return false;
    }

    private void cancel() {
        assertNotCallingCallbacks();
        this.stateVerifier.throwIfRecycled();
        this.target.removeCallback(this);
        Engine.LoadStatus r0 = this.loadStatus;
        if (r0 == null) goto L6;
        r0.cancel();
        this.loadStatus = null;
        return;
    }

    private Drawable getErrorDrawable() {
        if (this.errorDrawable != null) goto L10;
        Drawable r0 = this.requestOptions.getErrorPlaceholder();
        this.errorDrawable = r0;
        if (r0 != null) goto L10;
        if (this.requestOptions.getErrorId() <= 0) goto L10;
        this.errorDrawable = loadDrawable(this.requestOptions.getErrorId());
    L10:
        return this.errorDrawable;
    }

    private Drawable getFallbackDrawable() {
        if (this.fallbackDrawable != null) goto L10;
        Drawable r0 = this.requestOptions.getFallbackDrawable();
        this.fallbackDrawable = r0;
        if (r0 != null) goto L10;
        if (this.requestOptions.getFallbackId() <= 0) goto L10;
        this.fallbackDrawable = loadDrawable(this.requestOptions.getFallbackId());
    L10:
        return this.fallbackDrawable;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderDrawable != null) goto L10;
        Drawable r0 = this.requestOptions.getPlaceholderDrawable();
        this.placeholderDrawable = r0;
        if (r0 != null) goto L10;
        if (this.requestOptions.getPlaceholderId() <= 0) goto L10;
        this.placeholderDrawable = loadDrawable(this.requestOptions.getPlaceholderId());
    L10:
        return this.placeholderDrawable;
    }

    private boolean isFirstReadyResource() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 != null) goto L5;
    L8:
        return true;
    L5:
        if (r0.getRoot().isAnyResourceSet() == false) goto L8;
        return false;
    }

    private Drawable loadDrawable(int r3) {
        if (this.requestOptions.getTheme() == null) goto L5;
        Resources.Theme r0 = this.requestOptions.getTheme();
    L7:
        return DrawableDecoderCompat.getDrawable(this.glideContext, r3, r0);
    L5:
        r0 = this.context.getTheme();
        goto L7
    }

    private void logV(String r2) {
        Log.v(TAG, r2 + " this: " + this.tag);
    }

    private static int maybeApplySizeMultiplier(int r1, float r2) {
        if (r1 != Integer.MIN_VALUE) goto L6;
        return r1;
    L6:
        return Math.round(r2 * r1);
    }

    private void notifyLoadFailed() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 == null) goto L6;
        r0.onRequestFailed(this);
        return;
    }

    private void notifyLoadSuccess() {
        RequestCoordinator r0 = this.requestCoordinator;
        if (r0 == null) goto L6;
        r0.onRequestSuccess(this);
        return;
    }

    public static <R> SingleRequest<R> obtain(Context r18, GlideContext r19, Object r20, Object r21, Class<R> r22, BaseRequestOptions<?> r23, int r24, int r25, Priority r26, Target<R> r27, RequestListener<R> r28, List<RequestListener<R>> r29, RequestCoordinator r30, Engine r31, TransitionFactory<? super R> r32, Executor r33) {
        return new SingleRequest(r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33);
    }

    private void setErrorPlaceholder() {
        if (canNotifyStatusChanged() == true) goto L5;
        return;
    L5:
        Drawable r0 = null;
        if (this.model != null) goto L8;
        r0 = getFallbackDrawable();
    L8:
        if (r0 != null) goto L10;
        r0 = getErrorDrawable();
    L10:
        if (r0 != null) goto L12;
        r0 = getPlaceholderDrawable();
    L12:
        this.target.onLoadFailed(r0);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
        assertNotCallingCallbacks();     // Catch: Throwable -> L40
        this.stateVerifier.throwIfRecycled();     // Catch: Throwable -> L40
        this.startTime = LogTime.getLogTime();     // Catch: Throwable -> L40
        if (this.model == null) goto L7;
        Status r1 = this.status;     // Catch: Throwable -> L40
        Status r2 = Status.RUNNING;     // Catch: Throwable -> L40
        if (r1 == r2) goto L39;
        if (r1 != Status.COMPLETE) goto L23;
        onResourceReady(this.resource, DataSource.MEMORY_CACHE);     // Catch: Throwable -> L40
        monitor-exit(r0);     // Catch: Throwable -> L40
        return;
    L23:
        Status r3 = Status.WAITING_FOR_SIZE;     // Catch: Throwable -> L40
        this.status = r3;     // Catch: Throwable -> L40
        if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight) == false) goto L26;
        onSizeReady(this.overrideWidth, this.overrideHeight);     // Catch: Throwable -> L40
    L27:
        Status r4 = this.status;     // Catch: Throwable -> L40
        if (r4 == r2) goto L31;
        if (r4 == r3) goto L31;
    L34:
        if (IS_VERBOSE_LOGGABLE == false) goto L36;
        logV("finished run method in " + LogTime.getElapsedMillis(this.startTime));     // Catch: Throwable -> L40
    L36:
        monitor-exit(r0);     // Catch: Throwable -> L40
        return;
    L31:
        if (canNotifyStatusChanged() == false) goto L34;
        this.target.onLoadStarted(getPlaceholderDrawable());     // Catch: Throwable -> L40
        goto L34
    L26:
        this.target.getSize(this);     // Catch: Throwable -> L40
        goto L27
    L39:
        throw new IllegalArgumentException("Cannot restart a running request");     // Catch: Throwable -> L40
    L7:
        if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight) == false) goto L10;
        this.width = this.overrideWidth;     // Catch: Throwable -> L40
        this.height = this.overrideHeight;     // Catch: Throwable -> L40
    L10:
        if (getFallbackDrawable() != null) goto L12;
        int r5 = 5;
    L13:
        onLoadFailed(new GlideException("Received null model"), r5);     // Catch: Throwable -> L40
        monitor-exit(r0);     // Catch: Throwable -> L40
        return;
    L12:
        r5 = 3;
    L40:
        th = move-exception;
        throw th;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
        assertNotCallingCallbacks();     // Catch: Throwable -> L20
        this.stateVerifier.throwIfRecycled();     // Catch: Throwable -> L20
        Status r1 = this.status;     // Catch: Throwable -> L20
        Status r2 = Status.CLEARED;     // Catch: Throwable -> L20
        if (r1 != r2) goto L8;
        monitor-exit(r0);     // Catch: Throwable -> L20
        return;
    L8:
        cancel();     // Catch: Throwable -> L20
        Resource<R> r3 = this.resource;     // Catch: Throwable -> L20
        if (r3 == null) goto L11;
        this.resource = null;     // Catch: Throwable -> L20
    L13:
        if (canNotifyCleared() == false) goto L15;
        this.target.onLoadCleared(getPlaceholderDrawable());     // Catch: Throwable -> L20
    L15:
        this.status = r2;     // Catch: Throwable -> L20
        monitor-exit(r0);     // Catch: Throwable -> L20
        if (r3 == null) goto L24;
        this.engine.release(r3);
        return;
    L24:
        return;
    L11:
        r3 = null;
    L20:
        th = move-exception;
        throw th;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public Object getLock() {
        this.stateVerifier.throwIfRecycled();
        return this.requestLock;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (this.status != Status.COMPLETE) goto L7;
        boolean r1 = true;
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
        return r1;
    L7:
        r1 = false;
        goto L8
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (this.status != Status.CLEARED) goto L7;
        boolean r1 = true;
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
        return r1;
    L7:
        r1 = false;
        goto L8
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (this.status != Status.COMPLETE) goto L7;
        boolean r1 = true;
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
        return r1;
    L7:
        r1 = false;
        goto L8
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request r17) {
        if ((r17 instanceof SingleRequest) == true) goto L5;
        return false;
    L5:
        Object r2 = this.requestLock;
        monitor-enter(r2);
        int r4 = this.overrideWidth;     // Catch: Throwable -> L35
        int r5 = this.overrideHeight;     // Catch: Throwable -> L35
        Object r6 = this.model;     // Catch: Throwable -> L35
        Class<R> r7 = this.transcodeClass;     // Catch: Throwable -> L35
        BaseRequestOptions<?> r8 = this.requestOptions;     // Catch: Throwable -> L35
        Priority r9 = this.priority;     // Catch: Throwable -> L35
        List<RequestListener<R>> r10 = this.requestListeners;     // Catch: Throwable -> L35
        if (r10 == null) goto L10;
        int r11 = r10.size();     // Catch: Throwable -> L35
    L11:
        monitor-exit(r2);     // Catch: Throwable -> L35
        SingleRequest r0 = (SingleRequest) r17;
        Object r12 = r0.requestLock;
        monitor-enter(r12);
        int r3 = r0.overrideWidth;     // Catch: Throwable -> L32
        int r13 = r0.overrideHeight;     // Catch: Throwable -> L32
        Object r14 = r0.model;     // Catch: Throwable -> L32
        Class<R> r15 = r0.transcodeClass;     // Catch: Throwable -> L32
        BaseRequestOptions<?> r16 = r0.requestOptions;     // Catch: Throwable -> L32
        Priority r18 = r0.priority;     // Catch: Throwable -> L32
        List<RequestListener<R>> r1 = r0.requestListeners;     // Catch: Throwable -> L32
        if (r1 == null) goto L17;
        int r19 = r1.size();     // Catch: Throwable -> L32
    L18:
        monitor-exit(r12);     // Catch: Throwable -> L32
        if (r4 != r3) goto L30;
        if (r5 != r13) goto L30;
        if (Util.bothModelsNullEquivalentOrEquals(r6, r14) == false) goto L30;
        if (r7.equals(r15) == false) goto L30;
        if (r8.equals(r16) == false) goto L30;
        if (r9 != r18) goto L30;
        if (r11 != r19) goto L30;
        return true;
    L30:
        return false;
    L17:
        r19 = 0;
    L32:
        th = move-exception;
        throw th;
    L10:
        r11 = 0;
    L35:
        th = move-exception;
        throw th;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
        Status r1 = this.status;     // Catch: Throwable -> L13
        if (r1 != Status.RUNNING) goto L7;
    L10:
        boolean r2 = true;
    L11:
        monitor-exit(r0);     // Catch: Throwable -> L13
        return r2;
    L7:
        if (r1 == Status.WAITING_FOR_SIZE) goto L10;
        r2 = false;
    L13:
        th = move-exception;
        throw th;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void onLoadFailed(GlideException r2) {
        onLoadFailed(r2, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void onResourceReady(Resource<?> r6, DataSource r7) {
        this.stateVerifier.throwIfRecycled();
        Resource<?> r0 = null;
        Object r1 = this.requestLock;     // Catch: Throwable -> L43
        monitor-enter(r1);     // Catch: Throwable -> L43
        this.loadStatus = null;     // Catch: Throwable -> L40
        if (r6 != null) goto L10;
        onLoadFailed(new GlideException("Expected to receive a Resource<R> with an object of " + this.transcodeClass + " inside, but instead got null."));     // Catch: Throwable -> L40
        monitor-exit(r1);     // Catch: Throwable -> L40
        return;
    L10:
        Object r2 = r6.get();     // Catch: Throwable -> L40
        if (r2 != null) goto L13;
    L25:
        this.resource = null;     // Catch: Throwable -> L38
        StringBuilder r3 = new StringBuilder();     // Catch: Throwable -> L38
        r3.append("Expected to receive an object of ");     // Catch: Throwable -> L38
        r3.append(this.transcodeClass);     // Catch: Throwable -> L38
        r3.append(" but instead got ");     // Catch: Throwable -> L38
        if (r2 == null) goto L28;
        Object r4 = r2.getClass();     // Catch: Throwable -> L38
    L29:
        r3.append(r4);     // Catch: Throwable -> L38
        r3.append(VectorFormat.DEFAULT_PREFIX);     // Catch: Throwable -> L38
        r3.append(r2);     // Catch: Throwable -> L38
        r3.append("} inside Resource{");     // Catch: Throwable -> L38
        r3.append(r6);     // Catch: Throwable -> L38
        r3.append("}.");     // Catch: Throwable -> L38
        if (r2 == null) goto L32;
        String r5 = "";
    L33:
        r3.append(r5);     // Catch: Throwable -> L38
        onLoadFailed(new GlideException(r3.toString()));     // Catch: Throwable -> L38
        monitor-exit(r1);     // Catch: Throwable -> L38
        if (r6 == null) goto L52;
        this.engine.release(r6);
        return;
    L52:
        return;
    L32:
        r5 = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
        goto L33
    L28:
        r4 = "";
        goto L29
    L13:
        if (this.transcodeClass.isAssignableFrom(r2.getClass()) == false) goto L25;
        if (canSetResource() == true) goto L22;
        this.resource = null;     // Catch: Throwable -> L38
        this.status = Status.COMPLETE;     // Catch: Throwable -> L38
        monitor-exit(r1);     // Catch: Throwable -> L38
        if (r6 == null) goto L51;
        this.engine.release(r6);
        return;
    L51:
        return;
    L22:
        onResourceReady(r6, r2, r7);     // Catch: Throwable -> L40
        monitor-exit(r1);     // Catch: Throwable -> L40
        return;
    L38:
        th = move-exception;
        r0 = r6;
        th = th;
    L41:
        monitor-exit(r1);     // Catch: Throwable -> L40
        throw th;     // Catch: Throwable -> L43
    L40:
        th = th;
    L43:
        th = move-exception;
        if (r0 == null) goto L46;
        this.engine.release(r0);
    L46:
        throw th;
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int r25, int r26) {
        this.stateVerifier.throwIfRecycled();
        Object r14 = this.requestLock;
        monitor-enter(r14);
        boolean r0 = IS_VERBOSE_LOGGABLE;     // Catch: Throwable -> L27
        if (r0 == false) goto L8;
        logV("Got onSizeReady in " + LogTime.getElapsedMillis(this.startTime));     // Catch: Throwable -> L27
    L8:
        if (this.status == Status.WAITING_FOR_SIZE) goto L11;
        monitor-exit(r14);     // Catch: Throwable -> L27
        return;
    L11:
        Status r13 = Status.RUNNING;     // Catch: Throwable -> L27
        this.status = r13;     // Catch: Throwable -> L27
        float r1 = this.requestOptions.getSizeMultiplier();     // Catch: Throwable -> L27
        this.width = maybeApplySizeMultiplier(r25, r1);     // Catch: Throwable -> L27
        this.height = maybeApplySizeMultiplier(r26, r1);     // Catch: Throwable -> L27
        if (r0 == false) goto L15;
        logV("finished setup for calling load in " + LogTime.getElapsedMillis(this.startTime));     // Catch: Throwable -> L27
    L15:
        Object r23 = r14;
        this.loadStatus = this.engine.load(this.glideContext, this.model, this.requestOptions.getSignature(), this.width, this.height, this.requestOptions.getResourceClass(), this.transcodeClass, this.priority, this.requestOptions.getDiskCacheStrategy(), this.requestOptions.getTransformations(), this.requestOptions.isTransformationRequired(), this.requestOptions.isScaleOnlyOrNoTransform(), this.requestOptions.getOptions(), this.requestOptions.isMemoryCacheable(), this.requestOptions.getUseUnlimitedSourceGeneratorsPool(), this.requestOptions.getUseAnimationPool(), this.requestOptions.getOnlyRetrieveFromCache(), this, this.callbackExecutor);     // Catch: Throwable -> L31
        if (this.status == r13) goto L21;
        this.loadStatus = null;     // Catch: Throwable -> L31
    L21:
        if (r0 == false) goto L23;
        logV("finished onSizeReady in " + LogTime.getElapsedMillis(this.startTime));     // Catch: Throwable -> L31
    L23:
        monitor-exit(r23);     // Catch: Throwable -> L31
        return;
    L25:
        th = th;
    L29:
        monitor-exit(r23);     // Catch: Throwable -> L31
        throw th;
    L31:
        th = th;
    L27:
        th = th;
        r23 = r14;
        goto L29
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        Object r0 = this.requestLock;
        monitor-enter(r0);
    L9:
        th = move-exception;
        throw th;
    L5:
        if (isRunning() == false) goto L7;
        clear();     // Catch: Throwable -> L9
    L7:
        monitor-exit(r0);     // Catch: Throwable -> L9
    }

    private void onLoadFailed(GlideException r9, int r10) {
        this.stateVerifier.throwIfRecycled();
        Object r0 = this.requestLock;
        monitor-enter(r0);
        r9.setOrigin(this.requestOrigin);     // Catch: Throwable -> L33
        int r1 = this.glideContext.getLogLevel();     // Catch: Throwable -> L33
        if (r1 > r10) goto L9;
        Log.w(GLIDE_TAG, "Load failed for " + this.model + " with size [" + this.width + "x" + this.height + "]", r9);     // Catch: Throwable -> L33
        if (r1 > 4) goto L9;
        r9.logRootCauses(GLIDE_TAG);     // Catch: Throwable -> L33
    L9:
        this.loadStatus = null;     // Catch: Throwable -> L33
        this.status = Status.FAILED;     // Catch: Throwable -> L33
        boolean r11 = true;
        this.isCallingCallbacks = true;     // Catch: Throwable -> L33
        List<RequestListener<R>> r2 = this.requestListeners;     // Catch: Throwable -> L30
        if (r2 == null) goto L17;
        Iterator<RequestListener<R>> r3 = r2.iterator();     // Catch: Throwable -> L30
        boolean r4 = false;
    L15:
        if (r3.hasNext() == false) goto L18;
        r4 = r4 | r3.next().onLoadFailed(r9, this.model, this.target, isFirstReadyResource());     // Catch: Throwable -> L30
    L18:
        RequestListener<R> r5 = this.targetListener;     // Catch: Throwable -> L30
        if (r5 != null) goto L21;
    L23:
        r11 = false;
    L25:
        if ((r4 | r11) == true) goto L27;
        setErrorPlaceholder();     // Catch: Throwable -> L30
    L27:
        this.isCallingCallbacks = false;     // Catch: Throwable -> L33
        notifyLoadFailed();     // Catch: Throwable -> L33
        monitor-exit(r0);     // Catch: Throwable -> L33
        return;
    L21:
        if (r5.onLoadFailed(r9, this.model, this.target, isFirstReadyResource()) == false) goto L23;
    L17:
        r4 = false;
    L30:
        th = move-exception;
        this.isCallingCallbacks = false;     // Catch: Throwable -> L33
        throw th;     // Catch: Throwable -> L33
    L33:
        th = move-exception;
        throw th;
    }

    private void onResourceReady(Resource<R> r11, R r12, DataSource r13) {
        boolean r6 = isFirstReadyResource();
        this.status = Status.COMPLETE;
        this.resource = r11;
        if (this.glideContext.getLogLevel() > 3) goto L5;
        Log.d(GLIDE_TAG, "Finished loading " + r12.getClass().getSimpleName() + " from " + r13 + " for " + this.model + " with size [" + this.width + "x" + this.height + "] in " + LogTime.getElapsedMillis(this.startTime) + " ms");
    L5:
        boolean r14 = true;
        this.isCallingCallbacks = true;
        List<RequestListener<R>> r0 = this.requestListeners;     // Catch: Throwable -> L24
        if (r0 == null) goto L12;
        Iterator<RequestListener<R>> r8 = r0.iterator();     // Catch: Throwable -> L24
        boolean r9 = false;
    L10:
        if (r8.hasNext() == false) goto L13;
        r9 = r9 | r8.next().onResourceReady(r12, this.model, this.target, r13, r6);     // Catch: Throwable -> L24
    L13:
        RequestListener<R> r1 = this.targetListener;     // Catch: Throwable -> L24
        if (r1 != null) goto L16;
    L18:
        r14 = false;
    L20:
        if ((r14 | r9) == true) goto L22;
        this.target.onResourceReady(r12, this.animationFactory.build(r13, r6));     // Catch: Throwable -> L24
    L22:
        this.isCallingCallbacks = false;
        notifyLoadSuccess();
        return;
    L16:
        if (r1.onResourceReady(r12, this.model, this.target, r13, r6) == false) goto L18;
    L12:
        r9 = false;
    L24:
        th = move-exception;
        this.isCallingCallbacks = false;
        throw th;
    }
}
