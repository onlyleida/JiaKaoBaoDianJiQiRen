.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:S

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(SLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->a:S

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-short v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->a:S

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->k(SLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
