.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->o(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
