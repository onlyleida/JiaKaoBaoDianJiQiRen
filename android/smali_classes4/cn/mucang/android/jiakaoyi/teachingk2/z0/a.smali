.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;->b:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->p(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
