.class Lcn/mucang/jiakaoyi/uilib/e$d;
.super Lcn/mucang/android/jiakaoyi/framework/base/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/e;->P()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/e;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$d;->b:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/base/k/c;-><init>(I)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$d;->b:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$d;->b:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/e;->O()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/e$d;->a()V

    return-void
.end method

.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$d;->b:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/b;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/b;-><init>(Lcn/mucang/jiakaoyi/uilib/e$d;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
