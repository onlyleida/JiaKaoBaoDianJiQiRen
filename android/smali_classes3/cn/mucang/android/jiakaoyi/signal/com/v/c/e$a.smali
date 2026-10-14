.class Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/felhr/usbserial/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->c(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Lcom/felhr/usbserial/j;)Lcom/felhr/usbserial/j;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;

    invoke-virtual {p1}, Lcom/felhr/usbserial/j;->g()Lcom/felhr/usbserial/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->d(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;

    invoke-virtual {p1}, Lcom/felhr/usbserial/j;->h()Lcom/felhr/usbserial/i;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->e(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
